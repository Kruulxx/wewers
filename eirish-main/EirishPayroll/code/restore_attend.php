<?php   
   
  require_once "connection.php"; 

  $id = $_GET['id'];


  $query= "INSERT INTO `attendancee` (`id`, `emp_id`, `name`, `date`, `time_in`, `time_out`, `total_hours`) SELECT  `id`, `emp_id`, `name`, `date`, `time_in`, `time_out`, `total_hours` FROM `archive_attendancee` WHERE `id` = '$id';";

  if(mysqli_query($con, $query)){
    $query = "DELETE FROM `archive_attendancee` WHERE id = '$id'";  
    if(mysqli_query($con, $query)) {  
        echo "<script>" . "window.location.href='trash_attendance.php';" . "</script>";  
   }else{  
        echo "Error: ".mysqli_error($link);  
   }  
  }


