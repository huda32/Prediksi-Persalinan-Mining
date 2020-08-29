<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));

if (($_SESSION['prediksilahir_c45_id'])==2) {
    header("location:index.php?menu=forbidden");
}

include_once "database.php";
include_once "fungsi.php";
include_once "proses_mining.php";
?>

<div class="super_sub_content">
    <div class="container">
        <div class="row">
            <?php
            $query = $db_object->db_query("SELECT * FROM data_uji");
            $id_rule = array();
            $it = 0;
            while ($bar = $db_object->db_fetch_array($query)) {
                //ambil data uji
                $n_lama = $bar['lama'];
                $n_peb = $bar['peb'];
                $n_rsc = $bar['rsc'];
                $n_cpd = $bar['cpd'];
                $n_kpd = $bar['kpd'];
                $n_kala = $bar['kala'];
                $n_oligo = $bar['oligo'];
                $n_inertia = $bar['inertia'];
                $n_presbo = $bar['presbo'];
                $n_placenta = $bar['placenta'];
                $n_oblight = $bar['oblight'];
                $n_cukup = $bar['cukup'];
                $n_keputusan = $bar['keputusan'];

                $hasil = klasifikasi($db_object, $n_lama, $n_peb, $n_rsc, $n_cpd, $n_kpd, $n_kala,
                $n_oligo, $n_inertia , $n_presbo, $n_placenta, $n_oblight, $n_cukup);

                    
                $keputusan_hasil = $hasil['keputusan_hasil'];
                $id_rule_keputusan = $hasil['id_rule'];
                $it++;
                $db_object->db_query("UPDATE data_uji SET kelas_hasil='$keputusan_hasil', id_rule='$id_rule_keputusan' WHERE id=$bar[0]");
            }//end loop data uji
//menampilkan data uji dengan hasil prediksi
            $sql = $db_object->db_query("SELECT * FROM data_uji");
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
                                        <th>kala</th>
                                        <th>oligo</th>
                                        <th>inertia</th>
                                        <th>presbo</th>
                                        <th>placenta</th>
                                        <th>oblight</th>
                                        <th>cukup</th>
                                        <th>keputusan</th>
                                        <th>Hasil Prediksi</th>
                                        <th>Id Rule</th>
                                        <th>Ketepatan</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php
                        $no = 1;
                        while ($row = $db_object->db_fetch_array($sql)) {
                            if ($row['keputusan'] == $row['kelas_hasil']) {
                                $ketepatan = "benar";
                            } else {
                                $ketepatan = "salah";
                            }
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
                            echo "<td>" . $row['kelas_hasil'] . "</td>";
                            echo "<td>" . $row['id_rule'] . "</td>";
                            echo "<td>" . ($ketepatan == 'benar' ? "<b>" . $ketepatan . "</b>" : $ketepatan) . "</td>";
                            echo "</tr>";
                            $no++;
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <?php
//perhitungan akurasi
            $que = $db_object->db_query("SELECT * FROM data_uji");
            $jumlah_uji = $db_object->db_num_rows($que);
            $TP=0; $FN=0; $TN=0; $FP=0; $kosong=0;
            //$TA = $FB = $FC = $FD = $FE = $TF = $FG = $FH = $FI = $FJ = $TK = $FL = $FM = $FN = $FO = $TP = 0;
            $kosong =$tepat = $tidak_tepat =  0;
            while ($row = $db_object->db_fetch_array($que)) {
                $asli = $row['keputusan'];
                $prediksi = $row['kelas_hasil'];
                if($asli==$prediksi){
                    if($asli=='part_sp'){
                        $TP++;
                    }
                    else{
                        $TN++;
                    }
                    $tepat++;
                }
                else{
                    if($asli=='part_sp'){
                        $FN++;
                    
                    }
                    else{
                        $FP++;
                    }
                    $tidak_tepat++;
                }
            }
//            $tepat = ($TA + $TF + $TK + $TP);
//            $tidak_tepat = ($FB + $FC + $FD + $FE + $FG + $FH + $FI + $FJ + $FL + $FM + $FN + $FO + $kosong);
            $akurasi = ($tepat / $jumlah_uji) * 100;
            $laju_error = ($tidak_tepat / $jumlah_uji) * 100;
                        $sensitivitas=round(($TP/($TP+$FN))*100, 2);
                        $spesifisitas=round(($TN/($FP+$TN))*100, 2);

            $akurasi = round($akurasi, 2);
            $laju_error = round($laju_error, 2);
            
            // echo "<br><br>";
            // echo "<center><h4>";
            // echo "<h3>Jumlah prediksi: $jumlah_uji<br>";
            // echo "Jumlah tepat: $tepat<br>";
            // echo "Jumlah tidak tepat: $tidak_tepat<br><h3>";
            if ($kosong = 0) {
                echo "Jumlah data yang prediksinya kosong: $kosong<br></h4>";
            }
            // echo "<h3>AKURASI = $akurasi %<br>";
            // echo "LAJU ERROR = $laju_error %<br><h3>";
            
            // echo "<h3>";
            // echo "TP=$TP  TN=$TN  FP=$FP  FN=$FN<br>";
            // echo "Sensitivitas = $sensitivitas %<br>";
            // echo "Spesifisitas = $spesifisitas %<br>";
            //     echo "</h3>";
            ?>
            
            
        </div>
        <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover" id="sample-table-1">
                    <thead>
                        <tr>
                                        <th>Identifikasi</th>
                                        <th>Hasil Prediksi</th>
                                       
                            
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                     echo "<tr>";
                     echo "<td>" . "Jumlah Uji" . "</td>";echo "<td>" . $jumlah_uji . "</td>";
                     echo "<tr>";
                     echo "<td>" . "Jumlah Tepat" . "</td>";echo "<td>" . $tepat . "</td>";
                     echo "<tr>";
                     echo "<td>" . "Jumlah Tidak Tepat" . "</td>";echo "<td>" . $tidak_tepat . "</td>";
                     echo "<tr>";
                     echo "<td>" . "Tingkat Akurasi" . "</td>";echo "<td>" . $akurasi ."%". "</td>";
                     echo "<tr>";
                     echo "<td>" . "True Positive (TP)" . "</td>";echo "<td>" . $TP . "</td>";
                     echo "<tr>";
                     echo "<td>" . "True Negative (TN)" . "</td>";echo "<td>" . $TN . "</td>";
                     echo "<tr>";
                     echo "<td>" . "False Positive (FP)" . "</td>";echo "<td>" . $FP . "</td>";
                     echo "<tr>";
                     echo "<td>" . "False Negative (FN)" . "</td>";echo "<td>" . $FN . "</td>";
                     echo "<tr>";
                     echo "<td>" . "Tingkat Sensivitas" . "</td>";echo "<td>" . $sensitivitas . "%"."</td>";
                     echo "<tr>";
                     echo "<td>" . "Tingkat Spesifisitas" . "</td>";echo "<td>" . $spesifisitas . "%"."</td>";
                     
                    ?>
                    </tbody>

                </table>
            </div>
    </div>
</div>