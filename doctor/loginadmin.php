<?php
 session_start();

echo "hi";

print_r($_POST);

if(isset($_POST['btn_login']))
{
require('./comnpages/config.php');

$email=$_POST['email'];
$password=$_POST['pass'];
//$user_id=$_POST['user_id'];

echo $sql="SELECT * FROM tbl_logindetails WHERE user_email='$email' AND user_pass='$password'";
	
$data=mysqli_query($conn,$sql);  

   if(mysqli_num_rows($data)>0)
	{	

        
		 
		 $row=mysqli_fetch_array($data);
		 
		 $_SESSION['doctor_id']=$row['did'];
		 $_SESSION['user_type']=2;
		 
	 	header('Location:./index.php');
		 echo "hi working";
	 }	
	 else
	 {
	 	header('Location:./doctorlogin.php?error_invalid_USER');

	 }
	 



 
}
?>   