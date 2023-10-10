<?php
require('./comnpages/config.php');
$select_userRequest="SELECT * FROM doctor_list ";
$data_sur=mysqli_query($conn,$select_userRequest);
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Admin :: All Doctors</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
  </head>
  <style>
	#para{
		float:right;
	}
	</style>

  <body>
  <!-- container section start -->
  <section id="container" class="">
       <!--header Start-->
      <?php require('./comnpages/header.php'); ?>
	  <!--header end-->

      <!--sidebar start-->
	   <?php require('./comnpages/side.php'); ?>
      <!--sidebar end-->

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa fa-bars"></i>All Doctors</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-bars"></i>Doctors</li>
						<li><i class="fa fa-square-o"></i> Doctors details</li>
				
					</ol>
				</div>
			</div>
              <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                        <!-- 
						 <header class="panel-heading">
                              Advanced Table
                          </header>
						  -->
                          
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th><i class="icon_profile"></i>sno.</th>
                                 <th><i class="icon_calendar"></i>Doctors Name</th>
                                 <th><i class="icon_calendar"></i>Image</th>
                                 <th><i class="icon_mail_alt"></i>Speciality</th>
                                 <th><i class="icon_mail_alt"></i>Fees</th>
                                 <th><i class="icon_mobile"></i>Description</th>
                                 <!--<th><i class="icon_mobile"></i>Clinic Id</th>-->
                                 <th><i class="icon_mobile"></i>Action</th>
                                 
                              </tr>
							  <?php
							$select = mysqli_query($conn,"SELECT * FROM doctor_list");
		                     $noofrows=mysqli_num_rows($select);
							 $count=0;
							 if($noofrows>0)
							 {
		                      while($row= mysqli_fetch_array($select))
		                          {
		                            $count++;
																			
							  ?>
							  <?php $id = $row[0]; ?>
                              <tr>
                                 <td><?php echo $count; ?></td>
                                 <td><?php echo$row['name']; ?></td>
                                 <td><image src="../images/Doctors/<?php echo $row['image'];?>" width="100px"></td>
                                 <td><?php echo$row['speciality']; ?></td>
                                 <td><?php echo$row['fees']; ?></td>
                                 <td><?php echo$row['description']; ?></td>
                                <!-- <td><?php //echo$row['clinic_ids']; ?></td>-->
                                 <!--<td><?php //echo$st; ?></td>-->
                                 
                                 
								 
								 <td>
						<a href="./admin_Doctors_view.php?cid=<?php echo $row['did']; ?>" 
						title="view" class="btn btn-primary">
							<i class="fa fa-eye"> </i></a>
				
					
				  			  
					<a onclick="return confirm('Are you sure you want 
					to delete this record');" href="model/admin_model_doctors_Delete.php?
					pcid=<?php echo $row['did'];?>&action=delete"  
					title="Delete" class="btn btn-danger">
					<i class="fa fa-remove" > X </i></a>
					
			
					
			
			<a href="./admin_Doctors_update.php?xcid=<?php echo $row['did'];?>
		 "  title="edit" class="btn btn-success">
					<i class="fa fa-edit" ></i></a>
				  </td>
                                 
                              </tr>
							  <?php
								  }}
							  
							  ?>
                             </tbody>
                        </table>
                      </section>
                  </div>
              </div>
              
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
      <!-----Credit Start ------>
		  <?php include("./comnpages/credit.php");?>
          <!-----Credit End ------>
  </section>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script><!--custome script for all page-->
    <script src="js/scripts.js"></script>


  </body>
</html>
