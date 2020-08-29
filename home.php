<!-- start: PAGE -->

<?php
            //object database class
            $db_object = new database();

            $sql = "SELECT hasil.* 
            FROM hasil_prediksi hasil ";
            $query = $db_object->db_query($sql);
            $hasil = $db_object->db_num_rows($query);
            
            ?>
<?php
            //object database class
            $db_object = new database();

            $sql = "SELECT * 
            FROM data_latih ";
            $query = $db_object->db_query($sql);
            $data_latih = $db_object->db_num_rows($query);
            
            ?>
<?php
            //object database class
            $db_object = new database();

            $sql = "SELECT * 
            FROM t_keputusan ";
            $query = $db_object->db_query($sql);
            $keputusan = $db_object->db_num_rows($query);
            
            ?>
<?php
            //object database class
            $db_object = new database();

            $sql = "SELECT * 
            FROM data_uji ";
            $query = $db_object->db_query($sql);
            $data_uji = $db_object->db_num_rows($query);
            
            ?>

           
<div class="main-content ">
    <div class="container bg-light-blue">
        <!-- start: PAGE HEADER -->
       
            <div class="row  text-white" >
            
                <div class="col-sm-12">
                    
                    <!-- start: PAGE TITLE & BREADCRUMB -->

                    <div class="page-header">
                        
                        <h1>Halaman Utama </h1>
                    </div>
                    <!-- end: PAGE TITLE & BREADCRUMB -->
                </div>
            </div>

         
        <!-- end: PAGE HEADER -->
        <!-- start: PAGE CONTENT -->
        <div class="row">
            <!-- <div class="col-sm-6">
                <img src="images/image3.jpg" width="100%" height="100%"/>
            </div> -->
           
                <h2>
                    <center>
                        PREDIKSI MENENTUKAN JENIS PERSALINAN PADA IBU HAMIL DENGAN
                        METODE C.45 PADA RSIA AISYIYAH PEKAJANGAN 
                    </center>
                    
                </h2>
            
            
        </div>
        
      
        <div class="row">
        <div class="col-lg-4 col-sm-6 col-xs-12">
                <div class="info-box bg-indigo hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons">person</i>
                    </div>
                    <div class="content">
                        <div class="text">Jumlah Data</div>
                        <div class="number count-to" data-from="0" data-to="<?= $data_latih;?>" data-speed="1000" data-fresh-interval="20"><?php echo " " . $data_latih . "<br>";?></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-xs-12">
                <div class="info-box bg-teal hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons md-48">receipt</i>
                    </div>
                    <div class="content">
                        <div class="text">Data Uji</div>
                        <div class="number count-to" data-from="0" data-to="<?= $tunai;?>" data-speed="1000" data-fresh-interval="20"><?php echo " " . $data_uji . "<br>";?></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-xs-12">
                <div class="info-box bg-orange hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons md-48">store</i>
                    </div>
                    <div class="content">
                        <div class="text">Rule Keputusan</div>
                        <div class="number count-to" data-from="0" data-to="<?= $tunai;?>" data-speed="1000" data-fresh-interval="20"><?php echo " " . $keputusan . "<br>";?></div>
                    </div>
                </div>
            </div>
           
            <div class="col-lg-4 col-sm-6 col-xs-12">
                <div class="info-box bg-brown hover-expand-effect">
                    <div class="icon">
                        <i class="material-icons">list</i>
                    </div>
                    <div class="content">
                        <div class="text">Hasil Keputusan</div>
                        <div class="number " data-from="0" data-to="<?= $jumlah;?>" data-speed="1000" data-fresh-interval="20"><?php echo " " . $hasil . "<br>";?></div></div>
                    </div>
                </div>
            </div>

    
            </div>
           
    </div>

    <!-- end: PAGE CONTENT-->


<!-- end: PAGE -->