<html>
<head>
<title>Students Database</title>
<script src="assets/js/jquery-latest.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="assets/css/bootstrap.min.css" >
<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">
<script src="assets/js/bootstrap.min.js" ></script>
<link rel="stylesheet" type="text/css" href="assets/css/datatables.min.css"/>
<script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>
<style>
#students_table tr:hover {
	background-color: #f7f0bb;
}
#students_table thead tr:hover {
	background-color: #1b478e;
}
#students_table thead th:hover {
	background-color: #4c7ece;
}
table.dataTable thead tr {
  background-color: #1b478e;
  color:white;
}
</style> 
</head>
<body>
  <div class="container">
    &nbsp;
  </div>
  <div class="container">
    <div class="row">
      <table id="students_table" class="table table-bordered table-striped hover">
        <thead>
          <tr>
            <th>Student ID</th>
            <th>First Name</th>
            <th>Middle Name</th>
            <th>Last Name</th>
            <th>Contact Number</th>
          </tr>
        </thead>
      </table>
    </div>
    <div class="container">&nbsp;<br/>&nbsp;<br/>&nbsp;<br/></div>
  </div>
  <script>
  $(document).ready(function() {
  var studentstable = $('#students_table').DataTable({
	'columns': [
	  { "data": "student_id", "name": "student_id", "className": "student_id" },  // modify this and following lines...
      { "data": "first_name", "name": "first_name", "className": "first_name"  },
      { "data": "middle_name", "name": "middle_name", "className": "middle_name" },
      { "data": "last_name", "name": "last_name", "className": "last_name" },
      { "data": "contact_number", "name": "contact_number", "className": "contact_number" },
    ],
    "serverSide": true,
    "searching": true,
    "ajax": {
      url: "data.php",
      type: "POST",
    }
  });
});
  </script>
</body>
</html>
