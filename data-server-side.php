<?php
error_reporting(E_ALL);

$dbh = new PDO('mysql:host=localhost;dbname=dttable', 'dbuser','dbpassword'); // modify this

$print_r = print_r($_POST,true);

$db_columns = array();

foreach($_POST['columns'] as $i=>$v){
	$db_columns[] = $v['name'];
}

$db_sort_column = $db_columns[$_POST['order'][0]['column']];
$db_sort_order = isset($_POST['order'][0]['dir']) ? $_POST['order'][0]['dir']: "asc";
$db_default_search_query = isset($_POST['search']['value']) ? trim($_POST['search']['value']): "";

$where_clause = "";
$has_custom_search = false;
$db_params = array();

foreach($_POST['columns'] as $i=>$v){
	if($v['search']['value'] != ""){
		$search_field = $_POST['columns'][$i]['name'];
		$search_value = $v['search']['value'].'%';
		$db_params[':'.$search_field] = $search_value;
		
		if($where_clause!="") {
			$where_clause .= " AND ";
			$where_clause .= "$search_field LIKE :$search_field";
		}
		else {
			$where_clause = "$search_field LIKE :$search_field";
		}
		$has_custom_search = true;
	}
}

$default_global_search_fields = array('last_name', 'first_name'); // modify this
if($where_clause == "" && $db_default_search_query != ""){
	foreach($default_global_search_fields as $k=>$search_field){
		$search_value = $db_default_search_query.'%';
		$db_params[':'.$search_field] = $search_value;
		
		if($where_clause!="") {
			$where_clause .= " OR ";
			$where_clause .= "$search_field LIKE :$search_field";
		}
		else {
			$where_clause = "$search_field LIKE :$search_field";
		}
	}
}

if($where_clause != ""){
	$where_clause = "WHERE $where_clause";
}

if($db_sort_column != ""){
	$order_clause = "ORDER BY $db_sort_column $db_sort_order";
}
else $order_clause = "";

$per_page = isset($_POST['length'])? $_POST['length'] : 10;
$current_sql_offset = isset($_POST['start'])? $_POST['start'] : 0;
$sql_string = "SELECT student_id, first_name, middle_name, last_name, contact_number FROM students $where_clause $order_clause LIMIT {$current_sql_offset}, {$per_page}"; // modify this
$stmt = $dbh->prepare($sql_string);

if(count($db_params)>0) {
	$stmt->execute($db_params);
}
else {
	$stmt->execute();
}

$data = array();
while( $row = $stmt->fetch(PDO::FETCH_ASSOC) ) {
	$data[] = $row;
}
$sql_string2 = ""; $went_in = "";
$total_filtered_records = get_filtered_count($where_clause, $db_params);

$output = array(
	"sql" => $sql_string,
	"sql-count" => $sql_string2,
	"went_in" => $went_in,
	"whereclause" => $where_clause,
	"print_r" => $print_r,
	"draw" 				=> $_POST['draw'],
    "recordsTotal"      =>  get_all_records_count(),
    "recordsFiltered"   => $total_filtered_records,
    "data"              =>  $data
);

echo json_encode($output);

function get_all_records_count(){
	global $dbh;	
	$stmt = $dbh->query("SELECT COUNT(*) as total FROM students"); // modify this
	$row = $stmt->fetch(PDO::FETCH_ASSOC);
	return isset($row['total']) ? $row['total'] : 0;
}

function get_filtered_count($where_clause = "", $params = array()){
	global $dbh, $sql_string2, $went_in;
	$sql_string2 = "SELECT COUNT(*) as total FROM students $where_clause"; // modify this
	$stmt = $dbh->prepare($sql_string2);
	
	if(count($params)){
		if(isset($params['global_search'])) unset($params['global_search']);
		$went_in = "yes";
		$stmt->execute($params);
	}
	
	$stmt->execute();
	$row = $stmt->fetch(PDO::FETCH_ASSOC);
	return isset($row['total']) ? $row['total'] : 0;
}







?>