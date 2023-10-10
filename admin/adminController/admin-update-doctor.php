	<?php
  session_start();

if(isset($_POST['update']))
{

require('../comnpages/config.php');

    $doctor_id = $_POST['did'];
     $name=$_POST['name'];
     $email=$_POST['email'];
	   $speciality=$_POST['speciality'];
     $fees=$_POST['fees'];
     $description=$_POST['description'];

    echo   $sql="UPDATE doctor_list SET name='$name', email= '$email', speciality= '$speciality' , description= '$description', fees= '$fees'  WHERE did= $doctor_id  ";
 
	$data=mysqli_query($conn,$sql);

  if (mysqli_query($conn, $sql)) {
     	echo '  <script type="text/javascript">
                window.location ="../admin_Doctors.php";
   	</script>';

} else {
    echo "Error updating : "  ;
}




 }else{ echo "hi";
 	echo '  <script type="text/javascript">
              window.location ="../../index.php?invalidUSER";
 	</script>';




 }
	
	 
  ?>