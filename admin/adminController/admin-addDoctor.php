<?php
require('../comnpages/config.php');

$confirmemail = $_POST['email'];

$stmtcnf = "SELECT * FROM doctor_list WHERE `email` = '$confirmemail'";
$selectcnf = mysqli_query($conn, $stmtcnf);

if ($selectcnf === false) {
    echo mysqli_error($conn);
    exit;
}

if (mysqli_num_rows($selectcnf) == 0) {
    $hospitalID = $_POST['hospitalID'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $speciality = $_POST['speciality'];
    $fees = $_POST['fees'];
    $description = $_POST['description'];

    $sql = "INSERT INTO doctor_list(hospitalID,name,email,speciality,fees,description) VALUES('$hospitalID','$name','$email','$speciality','$fees','$description')";
    mysqli_Query($conn, $sql);

    $stmt = "SELECT * FROM doctor_list WHERE email = '$email'";
    $co = mysqli_Query($conn, $stmt);
    $data_row = mysqli_fetch_array($co);

    $docID = $data_row['did'];
    $pass = 123;
    $type = 2;
    $status = 1;

    $sqlIn = "INSERT INTO tbl_logindetails(did,user_name,user_email,user_pass,user_type,status) VALUES('$docID','$name','$email','$pass','$type','$status')";
    mysqli_Query($conn, $sqlIn);

    echo '<script type="text/javascript">                
              window.location = "../admin_Doctors.php" 
             </script>';

} else {
    echo '<script>alert("Email Already exists");
          window.location="../addDoctor.php"
         </script>';
}
?>
