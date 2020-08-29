<?php
$menu = ''; //variable untuk menampung menu
if (isset($_GET['menu'])) {
    $menu = $_GET['menu'];
}
?>
<div class="navbar-content">
    <!-- start: SIDEBAR -->
    <div class="main-navigation navbar-collapse collapse">
        <!-- start: MAIN MENU TOGGLER BUTTON -->
        <!--        <div class="navigation-toggler">
                    <i class="clip-chevron-left"></i>
                    <i class="clip-chevron-right"></i>
                </div>-->
        <!-- end: MAIN MENU TOGGLER BUTTON -->
        <!-- start: MAIN NAVIGATION MENU -->
        <ul class="main-navigation-menu">
            <li <?php if (empty($menu)) echo "class='active open'"; ?> >
                <a href="index.php">
                    <span class="title"> Halaman Utama </span><span class="selected"></span>
                </a>
            </li>
            <?php
            if ($_SESSION['prediksilahir_c45_level'] == 1) {
                ?>
                <li <?php if ($menu == 'olah_data') echo "class='active open'"; ?> >
                    <a href="index.php?menu=olah_data">
                        <span class="title"> Data Training </span><span class="selected"></span>
                    </a>
                </li>
                <li <?php if ($menu == 'data_mining') echo "class='active open'"; ?> >
                    <a href="index.php?menu=data_mining">
                        <span class="title"> Data Mining </span><span class="selected"></span>
                    </a>
                </li>
                <?php
            }
            ?>
            <!-- <li <?php if ($menu == 'pohon_keputusan') echo "class='active open'"; ?> >
                <a href="index.php?menu=pohon_keputusan">
                    <span class="title"> Pohon Keputusan </span><span class="selected"></span>
                </a>
            </li> -->
            <li class="dropdown">
                    <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true" href="#">
                               <!-- <img src="assets/images/avatar-1-small.jpg" class="circle-img" alt=""> -->
                        <!--<span class="username">-->
                        <!-- <?php echo $_SESSION['prediksilahir_c45_nama']; ?> -->
                        Pohon Keputusan
                        <!--</span>-->
                        <i class="clip-chevron-down"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li <?php if ($menu == 'pohon_keputusan') echo "class='active open'"; ?> >
                            <a href="index.php?menu=pohon_keputusan">
                                <span class="title"> Rule Keputusan </span><span class="selected"></span>
                            </a>
                        </li>
                        <?php
            if ($_SESSION['prediksilahir_c45_level'] == 1) {
                ?>
                        <li <?php if ($menu == 'uji_rule') echo "class='active open'"; ?>>
                        <a href="?menu=uji_rule" class="btn btn-default">Uji Rule</a>
                        </li>
                        <?php
            }
            ?>
                    </ul>
                </li>
          
                <li <?php if ($menu == 'prediksi') echo "class='active open'"; ?> >
                    <a href="index.php?menu=prediksi">
                        <span class="title"> Prediksi </span><span class="selected"></span>
                    </a>
                </li>
                
            
            
            <li <?php if ($menu == 'hasil') echo "class='active open'"; ?> >
                <a href="index.php?menu=hasil">
                    <span class="title"> Hasil </span><span class="selected"></span>
                </a>
            </li>

            <li <?php if ($menu == 'cetak') echo "class='active open'"; ?> >
                <a href="index.php?menu=cetak">
                    <span class="title"> Cetak </span><span class="selected"></span>
                </a>
            </li>

        </ul>
        <!-- end: MAIN NAVIGATION MENU -->
    </div>
    <!-- end: SIDEBAR -->
</div>