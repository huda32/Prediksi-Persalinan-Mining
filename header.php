<!-- start: HEADER -->
<div class="theme-blue">
<div class="navbar navbar-inverse navbar-fixed-top">
    <!-- start: TOP NAVIGATION CONTAINER -->
    <div class="container">
        
        <div class="navbar-header">
            <!-- start: RESPONSIVE MENU TOGGLER -->
            <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="clip-list-2"></span>
            </button>
            <!-- end: RESPONSIVE MENU TOGGLER -->
            <!-- start: LOGO -->
            <div class="navbar-tools">
            <ul class="nav navbar-left">
            <li class="dropdown current-user">
               
                    <a  class="navbar-brand"  data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true" href="#">
                               <!-- <img src="assets/images/avatar-1-small.jpg" class="circle-img" alt=""> -->
                       
                        <?php echo $_SESSION['prediksilahir_c45_nama']; ?>
                        <!--</span>-->
                        <i class="clip-chevron-down"></i>
                    </a>
                    
                    <!-- <ul class="dropdown-menu"> -->
                        <!-- <li>
                            <a href="pages_user_profile.html">
                                <i class="clip-user-2"></i>
                                &nbsp;My Profile
                            </a>
                        </li> -->
                        <!-- <li>
                            <a href="logout.php">
                                <i class="clip-exit"></i>
                                &nbsp;Log Out
                            </a>
                        </li> -->
                    <!-- </ul> -->
                </li>
            </ul>
            </div>
            <!-- end: LOGO -->
        </div>
        <div class="navbar-tools">
            <!-- start: TOP NAVIGATION MENU -->
            <ul class="nav navbar-right">
                <!-- start: USER DROPDOWN -->
                <!-- <a class="navbar-brand" >
                Prediksi C45
            </a> -->
            <li>
                        <a title="Log Out" href="logout.php" onclick="notif()">
                            <i class="material-icons">input</i> 
                        </a>
                    </li>
              
            </ul>
            <!-- end: TOP NAVIGATION MENU -->
        </div>
    </div>
    <!-- end: TOP NAVIGATION CONTAINER -->
</div>
</div>
<!-- end: HEADER -->