<?php
// if (($_SESSION['prediksilahir_c45_id'])==1) {
//     header("location:index.php?menu=forbidden");
// }

if (!isset($_SESSION['kepribadian_c45_id'])) {
    header("location:index.php?menu=forbidden");
}
include_once "database.php";
include_once "fungsi.php";
include_once "import/excel_reader2.php";
include_once 'proses_mining.php';

//object database class
$db_object = new database();
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
                        <h1>Data Mining </h1>
                    </div>
                    <!-- end: PAGE TITLE & BREADCRUMB -->
                </div>
            </div>
            <!-- end: PAGE HEADER -->
            <!-- start: PAGE CONTENT -->
            <?php
            $pesan_error = $pesan_success = "";
            if (isset($_GET['pesan_error'])) {
                $pesan_error = $_GET['pesan_error'];
            }
            if (isset($_GET['pesan_success'])) {
                $pesan_success = $_GET['pesan_success'];
            }

            if (!isset($_POST['proses_mining'])) {//tidak muncul jika diklik proses mining
                $sql = "SELECT * FROM data_latih";
                $query = $db_object->db_query($sql);
                $jumlah = $db_object->db_num_rows($query);
                ?>
                <div class="row">
                    <div class="col-md-12">
                        <!--UPLOAD EXCEL FORM-->
                        <center>
                        <form method="post" enctype="multipart/form-data" action="">
                            <div class="form-group">
                                <button name="proses_mining" type="submit"  class="btn btn-success" onclick="">
                                    <i class="fa fa-check"></i> Proses Mining
                                </button>
                            </div>
                        </form>
                        </center>
                        <?php
                    }
                    if (!empty($pesan_error)) {
                        display_error($pesan_error);
                    }
                    if (!empty($pesan_success)) {
                        display_success($pesan_success);
                    }

                    if (!isset($_POST['proses_mining'])) {//tidak muncul jika diklik proses mining
                        echo "Jumlah data: " . $jumlah . "<br>";
                        if ($jumlah == 0) {
                            echo "Data kosong...";
                        } else {
                            ?>
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="sample-table-1">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nama</th>
                                            <th>lama</th>
                                            <th>peb</th>           
                                            <th>rsc</th>
                                            <th>cpd</th>
                                            <th>kpd</th>
                                            <th>kalalama</th>
                                            <th>oligo</th>
                                            <th>inertia</th>
                                            <th>presbo</th>
                                            <th>placenta</th>
                                            <th>oblight</th>
                                            <th>cukup</th>
                                            <th>keputusan</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no = 1;
                                        while ($row = $db_object->db_fetch_array($query)) {
                                            echo "<tr>";
                                            echo "<td>" . $no . "</td>";
                                            echo "<td>" . $row['nama'] . "</td>";
                                            echo "<td>" . $row['lama'] . "</td>";
                                            echo "<td>" . $row['peb'] . "</td>";
                                            echo "<td>" . $row['rsc'] . "</td>";
                                            echo "<td>" . $row['cpd'] . "</td>";
                                            echo "<td>" . $row['kpd'] . "</td>";
                                            echo "<td>" . $row['kala'] . "</td>";
                                            echo "<td>" . $row['oligo'] . "</td>";
                                            echo "<td>" . $row['inertia'] . "</td>";
                                            echo "<td>" . $row['presbo'] . "</td>";
                                            echo "<td>" . $row['placenta'] . "</td>";
                                            echo "<td>" . $row['oblight'] . "</td>";
                                            echo "<td>" . $row['cukup'] . "</td>";
                                            echo "<td>" . $row['keputusan'] . "</td>";
                                            echo "</tr>";
                                            $no++;
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                            <?php
                        }
                    }

                    if (isset($_POST['proses_mining'])) {
                        $awal = microtime(true);

                        $db_object->db_query("TRUNCATE t_keputusan");
                        pembentukan_tree($db_object, "", "");
                        echo "<br><h3><center>---PROSES SELESAI---</center></h3>";
                        //echo "<center><a href='index.php?menu=pohon_keputusan' accesskey='5' "
                        //. "title='pohon keputusan'>Lihat pohon keputusan yang terbentuk</a></center>";

                        $akhir = microtime(true);
                        $lama = $akhir - $awal;
                        //echo "<br>Lama eksekusi script adalah: ".$lama." detik";
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
    <!-- //typography-page -->

</div>

