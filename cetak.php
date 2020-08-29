<?php
//session_start();


include_once "database.php";
include_once "fungsi.php";
?>
<div class="content"><!-- start: PAGE -->
    <div class="main-content">
        <div class="container bg-light-blue">
            <!-- start: PAGE HEADER -->
            <div class="row">
                <div class="col-sm-12">
                    <?php
                    //include "styleSelectorBox.php";
                    ?>
                    <!-- start: PAGE TITLE & BREADCRUMB -->

                    <div class="page-header">
                        <h1>Cetak Prediksi </h1>
                    </div>
                    <!-- end: PAGE TITLE & BREADCRUMB -->
                </div>
            </div>
            
            <div class="row">
            <div class="container">
                <table class="table table-responsive table-bordered table-condensed table-hover " id="myTable">
                        <thead>
                            <tr>
                            <!-- <th scope="col">No.</th> -->
                            <th scope="col">Data Laporan</th>
                            <th scope="col">Operasi</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                    <!-- <td>1</td> -->
                                    <td>Data Training</td>
                                    <td>
                                    <a  href="laporandata.php" target="_blank" type="button" >
                                        <i class="material-icons">print</i>
                                    </a>   
                                    </td>
                             </tr>

                             <tr>
                                    <!-- <td>2</td> -->
                                    <td>Pohon Keputusan</td>
                                    <td>
                                    <a  href="laporanrule.php" target="_blank" type="button" >
                                        <i class="material-icons">print</i>
                                    </a>   
                                    </td>
                             </tr>

                             <tr>
                                    <!-- <td>3</td> -->
                                    <td>Uji Rule</td>
                                    <td>
                                    <a  href="laporanuji.php" target="_blank" type="button" >
                                        <i class="material-icons">print</i>
                                    </a>   
                                    </td>
                             </tr>

                             <tr>
                                    <!-- <td>4</td> -->
                                    <td>Hasil Prediksi</td>
                                    <td>
                                    <a  href="laporanhasil.php" target="_blank" type="button" >
                                        <i class="material-icons">print</i>
                                    </a>   
                                    </td>
                             </tr>
                        </tbody>
                </table>
                </div>
            </div>


           

           
        </div>
    </div>
</div>