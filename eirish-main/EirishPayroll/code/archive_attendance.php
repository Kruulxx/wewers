<?php
include('connection.php');

if(isset($_POST['checkbox'])){
	foreach($_POST['checkbox'] as $list){
		$id=mysqli_real_escape_string($con,$list);
		$query= "INSERT INTO `archive_attendancee` (`id`,`emp_id`, `name`, `date`,`time_in`,`time_out`, `total_hours`) SELECT  `id`, `emp_id`, `name`, `date`,`time_in`,`time_out`, `total_hours` FROM `attendancee` WHERE `id` = '$id'";
		if(mysqli_query($con, $query)){
			$run = mysqli_query($con,"DELETE FROM `attendancee` WHERE `id`='$id'");
		} else{
			echo "Error: ".mysqli_error($con);  
		} 
	}
	echo "<script>" . "window.location.href='attendance.php';" . "</script>"; 
}
