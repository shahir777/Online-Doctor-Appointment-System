<?php
if (isset($_POST['btn_reg'])) {

	$phone=$_POST['phone'];
	$tid=$_POST['id'];
 
	require 'config.php';

	$select = "SELECT app_id FROM appoinment  where app_id = $tid AND app_phone = $phone";

	$result = mysqli_query($conn,$select);
	$rowcount=mysqli_num_rows($result);

	echo $rowcount;
	if ($rowcount>0) {

			$cancel= "UPDATE appoinment SET status = 1 WHERE app_id = $tid ";

			$r2=mysqli_query($conn,$cancel);
			if ($r2>0) {
				echo '<script>alert("your Appointment is cancelled");
			window.location="./cancelappoinment.php"</script>';
			}

	}else{
		echo '<script>alert("Invalid phone number or token number");
			 window.location="./cancelappoinment.php"</script>';
	}




}


?>

