<?php
//session_start();





include_once "database.php";
include_once "fungsi.php";
include_once "proses_mining.php";

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
                        <h1>Prediksi </h1>
                    </div>
                    <!-- end: PAGE TITLE & BREADCRUMB -->
                </div>
            </div>
            <?php
            //object database class
            $db_object = new database();

            $pesan_error = $pesan_success = "";
            if (isset($_GET['pesan_error'])) {
                $pesan_error = $_GET['pesan_error'];
            }
            if (isset($_GET['pesan_success'])) {
                $pesan_success = $_GET['pesan_success'];
            }

            //if (!isset($_POST['submit'])) {
            ?>

            <form method="post" action="" class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Nama
                    </label>
                    <div class="col-sm-9">
                        <input type="text" name="nama" id="form-field-1" class="form-control" 
                               value="<?php echo isset($_POST['nama'])?$_POST['nama']:"" ?>" required="">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Lama Kandungan
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="p_aterm" name="lama" 
                                   <?php echo isset($_POST['lama'])?($_POST['lama']=='p_aterm'?"checked":""):""; ?> required="">
                            P Term
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="h_aterm"  name="lama" 
                                   <?php echo isset($_POST['lama'])?($_POST['lama']=='h_aterm'?"checked":""):""; ?> required="">
                            H Term
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="sorutinus"  name="lama" 
                                   <?php echo isset($_POST['lama'])?($_POST['lama']=='sorutinus'?"checked":""):""; ?> required="">
                            Sorutinus
                        </label>

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Preklasia Berat (PEB)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="peb" 
                                   <?php echo isset($_POST['peb'])?($_POST['peb']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="peb"  
                                   <?php echo isset($_POST['peb'])?($_POST['peb']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Riwayat Caesar (R.SC)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="rsc" 
                                   <?php echo isset($_POST['rsc'])?($_POST['rsc']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="rsc"  
                                   <?php echo isset($_POST['rsc'])?($_POST['rsc']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Panggul Sempit (CPD)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="cpd" 
                                   <?php echo isset($_POST['cpd'])?($_POST['cpd']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="cpd"  
                                   <?php echo isset($_POST['cpd'])?($_POST['cpd']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Ketuban Pecah Dini (KPD)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="kpd" 
                                   <?php echo isset($_POST['kpd'])?($_POST['kpd']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="kpd"  
                                   <?php echo isset($_POST['kpd'])?($_POST['kpd']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>      

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Air Ketuban Sedikit(OLIGO)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="oligo" 
                                   <?php echo isset($_POST['oligo'])?($_POST['oligo']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="oligo"  
                                   <?php echo isset($_POST['oligo'])?($_POST['oligo']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Pembukaaan Lama(KalaLama)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="kala" 
                                   <?php echo isset($_POST['kala'])?($_POST['kala']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="kala"  
                                   <?php echo isset($_POST['kala'])?($_POST['kala']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        kontraksi Kurang (INERTIA)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="inertia" 
                                   <?php echo isset($_POST['inertia'])?($_POST['inertia']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="inertia"  
                                   <?php echo isset($_POST['inertia'])?($_POST['inertia']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Posisi Bayi Terbalik (PRESBO)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="presbo" 
                                   <?php echo isset($_POST['presbo'])?($_POST['presbo']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="presbo"  
                                   <?php echo isset($_POST['presbo'])?($_POST['presbo']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Jalan Lahir Tertutup Ari-Ari (PLACENTA)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="placenta" 
                                   <?php echo isset($_POST['placenta'])?($_POST['placenta']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="placenta"  
                                   <?php echo isset($_POST['placenta'])?($_POST['placenta']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Letak Bayi Miring (OBLIGHT)
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="oblight" 
                                   <?php echo isset($_POST['oblight'])?($_POST['oblight']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="oblight"  
                                   <?php echo isset($_POST['oblight'])?($_POST['oblight']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="form-field-1">
                        Cukup Anak
                    </label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="ya" name="cukup" 
                                   <?php echo isset($_POST['cukup'])?($_POST['cukup']=='ya'?"checked":""):""; ?> required="">
                            Ya
                        </label>
                        <label class="radio-inline">
                            <input type="radio" class="square-black" value="tidak"  name="cukup"  
                                   <?php echo isset($_POST['cukup'])?($_POST['cukup']=='tidak'?"checked":""):""; ?> required="">
                            Tidak
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-9 pull-right">
                        <input name="submit" type="submit" value="Submit" class="control-label btn btn-success">
                    </div>
                </div>
            </form>
            <?php
            //}
            if (isset($_POST['submit'])) {
                $success = true;
                $input_error = false;
                $pesan_gagal = $pesan_sukses = "";

                if (empty($_POST['nama']) | empty($_POST['lama']) | empty($_POST['peb']) | empty($_POST['rsc']) | empty($_POST['cpd']) |
                 empty($_POST['kpd']) | empty($_POST['kala'])| empty($_POST['oligo']) | empty($_POST['inertia']) | empty($_POST['presbo']) | empty($_POST['placenta']) | empty($_POST['oblight']) | empty($_POST['cukup'])) {
                    $input_error = true;
                    display_error("lengkapi datanya");
                }
                
                // if(!is_numeric($_POST['penghasilan'])){
                //     $input_error = true;
                //     display_error("penghasilan harus diisi angka");
                // }
                // if(!is_numeric($_POST['umur'])){
                //     $input_error = true;
                //     display_error("umur harus diisi angka");
                // }

                if (!$input_error) {
                    $n_nama = $_POST['nama'];
                    $n_lama = $_POST['lama'];
                    $n_peb = $_POST['peb'];
                    $n_rsc = $_POST['rsc'];
                    $n_cpd = $_POST['cpd'];
                    $n_kpd = $_POST['kpd'];
                    $n_kala = $_POST['kala'];
                    $n_oligo = $_POST['oligo'];
                    $n_inertia = $_POST['inertia'];
                    $n_presbo = $_POST['presbo'];
                    $n_placenta = $_POST['placenta'];
                    $n_oblight = $_POST['oblight'];
                    $n_cukup = $_POST['cukup'];
                    // $n_status_cesar = $_POST['status_cesar']
                    

                    $hasil = klasifikasi($db_object, $n_lama, $n_peb, $n_rsc, $n_cpd, $n_kpd, $n_kala,
                     $n_oligo, $n_inertia , $n_presbo, $n_placenta, $n_oblight, $n_cukup);

                    // simpan ke table hasil prediksi
                    $sql_in_hasil = "INSERT INTO hasil_prediksi
                                (nama, lama, peb, rsc, cpd, kpd, kala,oligo,inertia,presbo,placenta,oblight,cukup,
                                kelas_hasil, id_rule)
                                VALUES
                    ('$n_nama', '" . $n_lama . "', '" . $n_peb . "', '" . $n_rsc . "','" . $n_cpd . "','" . $n_kpd . "','" . $n_kala . "','" . $n_oligo .  "','" . $n_inertia .  "','" . $n_presbo .  "','" . $n_placenta .  "','" . $n_oblight . "', "
                    . "'" . $n_cukup . "', " .  "'" . $hasil['keputusan_hasil'] . "', '" . $hasil['id_rule'] . "')";
            $success = $db_object->db_query($sql_in_hasil);

                    if ($success) {
                        echo "<br>";
                        echo "<br>";
                        echo "<br>";
                        echo "<center>"
                        . "<h3 class='typoh2'>"
                        . "Hasil Prediksi: "
                        . "</h3>"
                        . "<h2 class='typoh2'>"
                        . $hasil['keputusan_hasil']
                        . "</h2>"
                        . "</center>";
                    } else {
                        display_error("failed");
                    }
                }
            }
            ?>
        </div>
    </div>
</div>


