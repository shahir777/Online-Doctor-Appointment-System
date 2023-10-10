<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
	<title>Cancel Appoinment</title>
	<meta charset="utf-8">
	<!-- <?php
($_GET);


	?> -->
     
     

	<!--[if IE]>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<![endif]-->
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animations.css">
	<link rel="stylesheet" href="css/fonts.css">
	<link rel="stylesheet" href="css/main.css" class="color-switcher-link">
	<link rel="stylesheet" href="css/shop.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript">
		$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})
	</script>
	<style type="text/css">
		a:hover{
			color: black;
		}
	</style>
</head>

<body>
<?php
if (isset($_POST['btn_reg'])) {
	$name=$_POST['name'];
	$phone=$_POST['phone'];
	$email=$_POST['email'];
	$date=$_POST['date'];
	$apptime=$_POST['app_time'];
	$message=$_POST['message'];
    $cid=$_POST['cid'];
		$conn = mysqli_connect("localhost","root","","doctors_appointment");
     


		$appins="INSERT INTO appoinment(app_name,app_email,app_phone,app_doctor,app_date,app_time,app_msg) VALUES ('$name','$email','$phone','$cid','$date','$apptime','$message') ";


	
	$result=mysqli_query($conn,$appins);
	  
	$ticketno = mysqli_insert_id($conn);

	if($ticketno){


		// 	echo '<script>alert("Your Appointment is booked \n  TICKET NO : '.$ticketno.' ");
		// window.location="../index.php"</script>';
		$stmt = '<div style="display: flex; justify-content: center; align-items: center; height: 100vh;background-color:black">
  <div style="position: relative; background-color: #4CAF50; padding: 20px; border-radius: 10px; width: 400px; box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.5);">
    <a href="../index.php" style="position: absolute; top: 10px; right: 10px; color: white; text-decoration: none;">X</a>
    <h2 style="color: white; text-align: center;">Your token number is</h2>
    <h1 style="font-size: 48px; color: white; margin: 0; text-align: center;">';

    $stmt .= $ticketno;

    $stmt .= '</h1>
  </div>
</div>';


	echo $stmt;

		
	 }else{
	 	echo '<script>alert("Your Appointment Registration Is Failed Please Try Again.");
				window.location="../appoinment.php"</script>';

	 }
			
			 
				
 
}else{
	echo '<script>
				window.location="../index.php?error_invalid"</script>';

}


	
	?>

</body>
</html>




