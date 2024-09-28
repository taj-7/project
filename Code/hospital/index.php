
<?php
include_once('hms/include/config.php');
if(isset($_POST['submit']))
{
$name=$_POST['fullname'];
$email=$_POST['emailid'];
$mobileno=$_POST['mobileno'];
$dscrption=$_POST['description'];
$query=mysqli_query($con,"insert into tblcontactus(fullname,email,contactno,message) value('$name','$email','$mobileno','$dscrption')");
echo "<script>alert('Your information succesfully submitted');</script>";
echo "<script>window.location.href ='index.php'</script>";

} ?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Hospital management System </title>

    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
     <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>

    <body>

    <!-- ################# Header Starts Here#######################--->
    
      <header id="menu-jk">
    
        <div id="nav-head" class="header-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-3  col-sm-12" style="color:#000;font-weight:bold; font-size:42px; margin-top: 0.3% !important;">
                       <a href="#" ><img src="assets\images\ru.png" height=70 width=70 alt="ru_logo"><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
                    </div>

                    <div id="menu" class="col-lg-8 col-md-9 d-none d-md-block nav-item">
                        <ul>
                            <li>
                            <li><a href="#">Home</a></li>
                            <li><a href="#services">Services</a></li>
                            <li><a href="#about_us">About Us</a></li>
                            <li><a href="#logins">Logins</a></li>  
                            <li></li>
                            <li>
        <a href="https://maps.app.goo.gl/zrk55fvr4oJrxgCe7" target="_blank" ><h6 style="color:blue;" >Location</h6></a></li>
                        </ul>
                        
                    </div>

                </div>

            </div>
            
        </div>
        
    </header>
    
     <!-- ################# Slider Starts Here#######################--->

    <div class="slider-detail">

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            </ol>


            <style>
                                .carousel-inner .carousel-item > img {
                                    -webkit-animation: thing 20s;
                                    -o-animation: thing 20s;
                                    animation: thing 20s;
                                }

                                @keyframes thing {
                                    from {
                                        transform: scale(1, 1);
                                    }

                                    to {
                                        transform: scale(1.5, 1.5);
                                    }
                                }
                            </style>


            <div class="carousel-inner">
                <div class="carousel-item ">
                    <img class="d-block w-100" src="assets/images/slider/9.png" alt="Second slide">
                    <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated zoomInUp">Rajshahi University, Medical Center</h5>
            
                         
                    
                    </div>

                    
                    
                </div>

              
                
                <div class="carousel-item active">
                    <img  class="d-block w-100" src="assets/images/slider/4.jpg" alt="Third slide">
                      <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated zoomInUp">Rajshahi University, Medical Center</h5>
            
                         
                    
                    </div>
              
                </div>

                <div class="carousel-item ">
                    <img class="d-block w-100" src="assets/images/slider/2.jpg" alt="Second slide">
                    <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated zoomInUp">Medical Garden</h5>
            
                         
                    
                    </div>

                    
                    
                </div>
                <div class="carousel-item ">
                    <img class="d-block w-100" src="assets/images/slider/33.jpg" alt="Second slide">
                    <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated zoomInUp">Ambulence Services</h5>
            
                         
                    
                    </div>

                    
                    
                </div>
                <div class="carousel-item ">
                    <img class="d-block w-100" src="assets/images/slider/22.jpeg" alt="Second slide">
                    <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated zoomInUp">Operation Theater(OT)</h5>
            
                         
                    
                    </div>

                    
                    
                </div>
                
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


    </div>
    
  

  <!--  ************************* Logins ************************** -->
    
    
  <section id="logins" class="our-blog container-fluid">
        <div class="container">


                <h2>Logins</h2>
        
            <div class="col-sm-12 blog-cont">
                <div class="row no-margin">
                    <div class="col-sm-4 blog-smk">
                        <div class="blog-single">

                            

                            <div class="blog-single-det">
                                <h6>Patient Login</h6>
                                <a href="hms/user-login.php" target="_blank">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 blog-smk">
                        <div class="blog-single">

                             

                            <div class="blog-single-det">
                                <h6>Doctors login</h6>
                                <a href="hms/doctor" target="_blank">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4 blog-smk">
                        <div class="blog-single">

                            

                            <div class="blog-single-det">
                                <h6>Admin Login</h6>
                    
                                <a href="hms/admin" target="_blank">
                                    <button class="btn btn-success btn-sm">Click Here</button>
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    
                    

                    
                    
                </div>
            </div>
            
        </div>
    </section>  




    <!-- ################# Our Departments Starts Here#######################--->


    <section id="services" class="key-features department">
        <div class="container">
        

                <h2><i>Our Key Facilities</i></h2>
              

            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-heartbeat"></i>
                        <h5>Cardiology</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-ribbon"></i>
                        <h5>Orthopaedic</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                       <i class="fab fa-monero"></i>
                        <h5>Neurologist</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-capsules"></i>
                        <h5>Pharmacy</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-prescription-bottle-alt"></i>
                        <h5>Aid Team</h5>
                    </div>
                </div>



                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="far fa-thumbs-up"></i>
                        <h5>High Quality treatments</h5>

                    </div>
                </div>
            </div>






        </div>

    </section>
    <hr/>
    
                               
                        <img src="assets/images/slider/55.png" style="width: 50%; float: left;">
                        <img  src="assets/images/slider/11.jpg" style="width: 50%; float: right;">
                            

    <!-- ################# Footer Starts Here#######################--->


    <footer  class="footer">
        <div class="container">
            <div>
       
                
                <div class="col-md-6 col-sm-12 map-img" >
                    <h3>Contact Us</h3>
                    <address class="md-margin-bottom-50">

<?php
$ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
while ($row=mysqli_fetch_array($ret)) {
?>


                        <?php  echo $row['PageDescription'];?> <br>
                        Phone: <?php  echo $row['MobileNumber'];?> <br>
                        Email: <a href="mailto:<?php  echo $row['Email'];?>" class=""><?php  echo $row['Email'];?></a><br>
                        Timing: <?php  echo $row['OpenningTime'];?>
                    </address>

        <?php } ?>





                </div>
            </div>
        </div>
        

    </footer>
   
    <div class="copy">
            <div class="container" align="right">
            Project- Hospital Management System by Taj & Sohag
                
     
            </div>

        </div>
    </body>

<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/scroll-nav/js/jquery.easing.min.js"></script>
<script src="assets/plugins/scroll-nav/js/scrolling-nav.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>

<script src="assets/js/script.js"></script>



</html>