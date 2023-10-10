<?php
require('../comnpages/config.php');
	       
			$name=$_POST['name'];
			$address=$_POST['address'];
			$location=$_POST['location'];
			$con_no=$_POST['con_no'];
			
			
	$sql="INSERT INTO clinics(name,address,location,contact_no) VALUES('$name','$address','$location','$con_no')";
     mysqli_Query($conn,$sql);
	 
	
	echo '<script type="text/javascript">                
              window.location = "../admin_clinic_add.php" 
			 </script>';



?>