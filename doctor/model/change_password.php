<?php
session_start();

if(isset($_POST['changepass_btn']))
{  
 
require('../comnpages/config.php');
	 
	$doctor_id = $_SESSION['doctor_id'];

	if($_POST['cpassword']!=$_POST['newpassword'])
	{
		 echo "<script type='text/javascript'>
				alert('password didnot match')			 
				 window.location = '../changePassword.php';
				  </script>";
						 	


	}
	else{

		$oldpassword=$_POST['oldpassword'];
		$sql="SELECT  *  FROM tbl_logindetails WHERE did= '$doctor_id' AND  user_pass = '$oldpassword' ";


					$result = mysqli_query($conn, $sql);

					if (mysqli_num_rows($result) > 0) {

						$newpassword=$_POST['newpassword'];

						$sqlupdate="UPDATE `tbl_logindetails` SET  user_pass = '$newpassword'  WHERE did = '$doctor_id' ";

						$res = mysqli_query($conn, $sqlupdate);
								
						if($res){
							echo "<script type='text/javascript'>
											 
						                    window.location = '../index.php?Password_Update_Successfully';
						   </script>";
						}
						
					   
					} else {
					             echo "<script type='text/javascript'>
											 
						                    window.location = '../changePassword.php?Old_Passqord_do_not_match';
						                   </script>";
						 	


					}

	}



}
else
{
	 echo "<script type='text/javascript'>
											 
						                    window.location = '../index.php?exit';
						                   </script>";		 	
}




?>