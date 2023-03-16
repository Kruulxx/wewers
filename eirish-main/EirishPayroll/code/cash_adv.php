<?php

require_once('home.php');  
include "connection.php";



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="//cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet">
    <title>Document</title>
</head>
<body>
<div class="container" style="margin-top:50px;">    
<form method="post" id="frm">
                <div class="border-bottom my-3"></div>
          <table class="table table-hover ">
                  <thead>
                      <tr>
                      
                        <th>EmpID</th>
                        <th>Name</th>
                        <th>Cash Advance</th>
                        <th>Date</th>

                    </tr>

                    </thead>


<script src="//cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script>
  $(document).ready( function () {
		$('.table').DataTable();
  });
  </script>
</div>
</body>
</html>