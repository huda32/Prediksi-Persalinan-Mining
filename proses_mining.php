<?php
function format_decimal($value){
    return round($value, 3);
}

//fungsi utama
function proses_DT($db_object, $parent, $kasus_cabang1, $kasus_cabang2) {
    echo "cabang 1<br>";
    pembentukan_tree($db_object, $parent, $kasus_cabang1);
    echo "cabang 2<br>";
    pembentukan_tree($db_object, $parent, $kasus_cabang2);
}

//fungsi proses dalam suatu kasus data
function pembentukan_tree($db_object, $N_parent, $kasus) {
    //mengisi kondisi
    if ($N_parent != '') {
        $kondisi = $N_parent . " AND " . $kasus;
    } else {
        $kondisi = $kasus;
    }
    echo $kondisi . "<br>";
    //cek data heterogen / homogen???
    $cek = cek_heterohomogen($db_object, 'keputusan', $kondisi);
    if ($cek == 'homogen') {
        echo "<br>LEAF ||";
        $sql_keputusan = $db_object->db_query("SELECT DISTINCT(keputusan) FROM "
                . "data_latih WHERE $kondisi");
        $row_keputusan = $db_object->db_fetch_array($sql_keputusan);
        $keputusan = $row_keputusan['0'];
        //insert atau lakukan pemangkasan cabang
        pangkas($db_object, $N_parent, $kasus, $keputusan);
    }//jika data masih heterogen
    else if ($cek == 'heterogen') {

        $kondisi_kelas_asli = '';
        if ($kondisi != '') {
            $kondisi_kelas_asli = $kondisi . " AND ";
        }
        $jml_normal = jumlah_data($db_object, "$kondisi_kelas_asli keputusan='part_sp'");
        $jml_sc = jumlah_data($db_object, "$kondisi_kelas_asli keputusan='sc'");
        
        $jml_total = $jml_normal + $jml_sc ;
        echo "Jumlah data = " . $jml_total . "<br>";
        echo "Jumlah Part_SP = " . $jml_normal . "<br>";
        echo "Jumlah SC = " . $jml_sc . "<br>";

        //hitung entropy semua
        $entropy_all = hitung_entropy($jml_normal, $jml_sc);
        echo "Entropy All = " . $entropy_all . "<br>";

        $nilai_status_lama = array();
        $nilai_status_lama = cek_nilaiAtribut($db_object, 'lama',$kondisi);
        $jmlStatusLama = count($nilai_status_lama);

        echo "<div class='table-responsive'>
                <table class='table  table-bordered table-hover' id='sample-table-1'>
                    <thead>";
        echo "<tr>"
                . "<th>Nilai Atribut</th> "
                . "<th>Jumlah data</th> "
                . "<th>Jumlah Part SP</th> "
                . "<th>Jumlah SC</th> "
                . "<th>Entropy</th> "
                . "<th>Gain</th>"
                . "<tr>";
        echo "</thead>"
        . " <tbody>";

        $db_object->db_query("TRUNCATE gain");
        //hitung gain atribut KATEGORIKAL
        hitung_gain($db_object, $kondisi, "peb", $entropy_all, "peb='ya'", "peb='tidak'", "", "", "");
        
        //hitung gain atribut KATEGORIKAL
        if($jmlStatusLama!=1){
            $NA1StatusLama="lama='$nilai_status_lama[0]'";
            $NA2StatusLama="";
            $NA3StatusLama="";
            if($jmlStatusLama==2){
                    $NA2StatusLama="lama='$nilai_status_lama[1]'";
            }else if ($jmlStatusLama==3){
                    $NA2StatusLama="lama='$nilai_status_lama[1]'";
                    $NA3StatusLama="lama='$nilai_status_lama[2]'";
            }				
            hitung_gain($db_object, $kondisi , "lama", $entropy_all , $NA1StatusLama, $NA2StatusLama, $NA3StatusLama, "" , "");	
        }
        

        
        // hitung gain riwayat cesar
        hitung_gain($db_object, $kondisi, "rsc", $entropy_all, "rsc='ya'", "rsc='tidak'", "", "", "");

        // hitung gain CPD
        hitung_gain($db_object, $kondisi, "cpd", $entropy_all, "cpd='ya'", "cpd='tidak'", "", "", "");

        //hitung gain KPD
        hitung_gain($db_object, $kondisi, "kpd", $entropy_all, "kpd='ya'", "kpd='tidak'", "", "", "");

        //hitung gain kalalama
        hitung_gain($db_object, $kondisi, "kala", $entropy_all, "kala='ya'", "kala='tidak'", "", "", "");

        //hitung gain oligo
        hitung_gain($db_object, $kondisi, "oligo", $entropy_all, "oligo='ya'", "oligo='tidak'", "", "", "");

        //hitunng gain inertia
        hitung_gain($db_object, $kondisi, "inertia", $entropy_all, "inertia='ya'", "inertia='tidak'", "", "", "");

        //hitunng gain presbo
        hitung_gain($db_object, $kondisi, "presbo", $entropy_all, "presbo='ya'", "presbo='tidak'", "", "", "");

        //hitunng gain placenta
        hitung_gain($db_object, $kondisi, "placenta", $entropy_all, "placenta='ya'", "placenta='tidak'", "", "", "");

        //hitunng gain oblight
        hitung_gain($db_object, $kondisi, "oblight", $entropy_all, "oblight='ya'", "oblight='tidak'", "", "", "");

        //hitunng gain cukup anak
        hitung_gain($db_object, $kondisi, "cukup", $entropy_all, "cukup='ya'", "cukup='tidak'", "", "", "");




        
        echo "</tbody>";
        echo "</table>";
        //ambil nilai gain terBesar

        $sql_max = $db_object->db_query("SELECT MAX(gain) FROM gain");
        $row_max = $db_object->db_fetch_array($sql_max);
        $max_gain = $row_max[0];
        $sql = $db_object->db_query("SELECT * FROM gain WHERE gain=$max_gain");
        $row = $db_object->db_fetch_array($sql);
        $atribut = $row[2];
        echo "Atribut terpilih = " . $atribut . ", dengan nilai gain = " . $max_gain . "<br>";
        echo "<br>================================<br>";

  
        if ($max_gain == 0) {
            echo "<br>LEAF ";
            $Nnormal = $kondisi . " AND keputusan='part_sp'";
            $Nsc = $kondisi . " AND kelas_asli='sc'";
            $jumlahnormal = jumlah_data($db_object, "$Nnormal");
            $jumlahsc = jumlah_data($db_object, "$Nsc");
            if($jumlahnormal >= $jumlahsc ) {
                $keputusan = 'part_sp';
            }
            else {
                $keputusan = 'sc';
            }
            //insert atau lakukan pemangkasan cabang
            pangkas($db_object, $N_parent, $kasus, $keputusan);
        }
        //jika max_gain >0 lanjut..
        else {
           
            if ($atribut == "peb") {
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

            if ($atribut == "lama") {
                //jika nilai atribut 3
                if($jmlStatusLama==3){
                    //hitung rasio
                    $cabang = array();
                    $cabang = hitung_rasio($db_object, $kondisi , 'lama',$max_gain,$nilai_status_lama[0],$nilai_status_lama[1],$nilai_status_lama[2],'','');
                    $exp_cabang = explode(" , ",$cabang[1]);						
                    proses_DT($db_object, $kondisi , "($atribut='$cabang[0]')","($atribut='$exp_cabang[0]' OR $atribut='$exp_cabang[1]')");						
                }
                //jika nilai atribut 2
                else if($jmlStatusLama==2){
                    proses_DT($db_object, $kondisi , "($atribut='$nilai_status_lama[0]')" , "($atribut='$nilai_status_lama[1]')");
                }
            }
            
            

            //status riwayat cesar
            if($atribut == "rsc"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

            //status riwayat cpd
            if($atribut == "cpd"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

            //status riwayat kpd
            if($atribut == "kpd"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

             //status riwayat kalalama
             if($atribut == "kala"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

             //status riwayat oligo
             if($atribut == "oligo"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

             //status riwayat inertia
             if($atribut == "inertia"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

            //status riwayat presbo
            if($atribut == "presbo"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

            //status riwayat placenta
            if($atribut == "placenta"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

            //status riwayat oblight
            if($atribut == "oblight"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }

            //status riwayat cukup
            if($atribut == "cukup"){
                proses_DT($db_object, $kondisi, "($atribut='ya')", "($atribut='tidak')");
            }


            
        }//end 
        
    }
}

//==============================================================================
//fungsi cek nilai atribut
function cek_nilaiAtribut($db_object, $field , $kondisi){
    //sql disticnt		
    $hasil = array();
    if($kondisi==''){
            $sql = $db_object->db_query("SELECT DISTINCT($field) FROM data_latih");					
    }else{
            $sql = $db_object->db_query("SELECT DISTINCT($field) FROM data_latih WHERE $kondisi");					
    }
    $a=0;
    while($row = $db_object->db_fetch_array($sql)){
            $hasil[$a] = $row['0'];
            $a++;
    }	
    return $hasil;
}

//fungsi cek heterogen data
function cek_heterohomogen($db_object, $field, $kondisi) {
    //sql disticnt
    if ($kondisi == '') {
        $sql = $db_object->db_query("SELECT DISTINCT($field) FROM data_latih");
    } else {
        $sql = $db_object->db_query("SELECT DISTINCT($field) FROM data_latih WHERE $kondisi");
    }
    //jika jumlah data 1 maka homogen
    if ($db_object->db_num_rows($sql) == 1) {
        $nilai = "homogen";
    } else {
        $nilai = "heterogen";
    }
    return $nilai;
}

//fungsi menghitung jumlah data
function jumlah_data($db_object, $kondisi) {
    //sql
    if ($kondisi == '') {
        $sql = "SELECT COUNT(*) FROM data_latih $kondisi";
    } else {
        $sql = "SELECT COUNT(*) FROM data_latih WHERE $kondisi";
    }

    $query = $db_object->db_query($sql);
    $row = $db_object->db_fetch_array($query);
    $jml = $row['0'];
    return $jml;
}

//fungsi pemangkasan cabang
function pangkas($db_object, $PARENT, $KASUS, $LEAF) {
    //PEMANGKASAN CABANG
//    $sql_pangkas = $db_object->db_query("SELECT * FROM t_keputusan "
//            . "WHERE parent=\"$PARENT\" AND keputusan=\"$LEAF\"");
//    $row_pangkas = $db_object->db_fetch_array($sql_pangkas);
//    $jml_pangkas = $db_object->db_num_rows($sql_pangkas);
    //jika keputusan dan parent belum ada maka insert
//    if ($jml_pangkas == 0) {
        $sql_in = "INSERT INTO t_keputusan "
                . "(parent,akar,keputusan_hasil)"
                . " VALUES (\"$PARENT\" , \"$KASUS\" , \"$LEAF\")";
        $db_object->db_query($sql_in);
        // echo "1".$sql_in;
//    }
    //jika keputusan dan parent sudah ada maka delete
//    else {
//        $db_object->db_query("DELETE FROM t_keputusan WHERE id='$row_pangkas[0]'");
//        $exPangkas = explode(" AND ", $PARENT);
//        $jmlEXpangkas = count($exPangkas);
//        $temp = array();
//        for ($a = 0; $a < ($jmlEXpangkas - 1); $a++) {
//            $temp[$a] = $exPangkas[$a];
//        }
//        $imPangkas = implode(" AND ", $temp);
//        $akarPangkas = $exPangkas[$jmlEXpangkas - 1];
//        $que_pangkas = $db_object->db_query("SELECT * FROM t_keputusan "
//                . "WHERE parent=\"$imPangkas\" AND keputusan=\"$LEAF\"");
//        $baris_pangkas = $db_object->db_fetch_array($que_pangkas);
//        $jumlah_pangkas = $db_object->db_num_rows($que_pangkas);
//        if ($jumlah_pangkas == 0) {
//            $sql_in2 = "INSERT INTO t_keputusan "
//                    . "(parent,akar,keputusan)"
//                    . " VALUES (\"$imPangkas\" , \"$akarPangkas\" , \"$LEAF\")";
//            $db_object->db_query($sql_in2);
//            //echo "2".$sql_in2;
//        } else {
//            pangkas($db_object, $imPangkas, $akarPangkas, $LEAF);
//        }
//    }
    echo "Keputusan = " . $LEAF . "<br>================================<br>";
}

//fungsi menghitung gain
function hitung_gain($db_object, $kasus, $atribut, $ent_all, $kondisi1, $kondisi2, $kondisi3, $kondisi4, $kondisi5) {
    $data_kasus = '';
    if ($kasus != '') {
        $data_kasus = $kasus . " AND ";
    }

    //untuk atribut 2 nilai atribut	
    if ($kondisi3 == '') {
        $j_normal = jumlah_data($db_object, "$data_kasus keputusan='part_sp' AND $kondisi1");
        $j_sc = jumlah_data($db_object, "$data_kasus keputusan='sc' AND $kondisi1");
        $jml1 = $j_normal + $j_sc;
        
        $j_normal2 = jumlah_data($db_object, "$data_kasus keputusan='part_sp' AND $kondisi2");
        $j_sc2 = jumlah_data($db_object, "$data_kasus keputusan='sc' AND $kondisi2");
        $jml2 = $j_normal2 + $j_sc2 ;
        //hitung entropy masing-masing kondisi
        $jml_total = $jml1 + $jml2;
        $ent1 = hitung_entropy($j_normal, $j_sc);
        $ent2 = hitung_entropy($j_normal2, $j_sc2);

        $gain = $ent_all - ((($jml1 / $jml_total) * $ent1) + (($jml2 / $jml_total) * $ent2));
        //desimal 3 angka dibelakang koma
        $gain = format_decimal($gain);

        echo "<tr>";
        echo "<td>" . $kondisi1 . "</td>";
        echo "<td>" . $jml1 . "</td>";
        echo "<td>" . $j_normal . "</td>";
        echo "<td>" . $j_sc . "</td>";
        echo "<td>" . $ent1 . "</td>";
        echo "<td>&nbsp;</td>";
        echo "</tr>";

        echo "<tr>";
        echo "<td>" . $kondisi2 . "</td>";
        echo "<td>" . $jml2 . "</td>";
        echo "<td>" . $j_normal2 . "</td>";
        echo "<td>" . $j_sc2 . "</td>";
        echo "<td>" . $ent2 . "</td>";
        echo "<td>" . $gain . "</td>";
        echo "</tr>";

        echo "<tr><td colspan='8'></td></tr>";
    }
     //untuk atribut 3 nilai atribut
     else if($kondisi4==''){
     	$j_normal1 = jumlah_data($db_object, "$data_kasus keputusan='part_sp' AND $kondisi1");
     	$j_sc1 = jumlah_data($db_object, "$data_kasus keputusan='sc' AND $kondisi1");
     	$jml1 = $j_normal1 + $j_sc1 ;
        
     	$j_normal2 = jumlah_data($db_object, "$data_kasus keputusan='part_sp' AND $kondisi2");
     	$j_sc2 = jumlah_data($db_object, "$data_kasus keputusan='sc' AND $kondisi2");
     	$jml2 = $j_normal2 + $j_sc2;
        
     	$j_normal3 = jumlah_data($db_object, "$data_kasus keputusan='part_sp' AND $kondisi3");
     	$j_sc3 = jumlah_data($db_object, "$data_kasus keputusan='sc' AND $kondisi3");
     	$jml3 = $j_normal3 + $j_sc3;
        
     	//hitung entropy masing-masing kondisi
     	$jml_total = $jml1 + $jml2 + $jml3;
     	$ent1 = hitung_entropy($j_normal1 , $j_sc1);
     	$ent2 = hitung_entropy($j_normal2 , $j_sc2);
     	$ent3 = hitung_entropy($j_normal3 , $j_sc3);
     	$gain = $ent_all - ((($jml1/$jml_total)*$ent1) + (($jml2/$jml_total)*$ent2) 
     				+ (($jml3/$jml_total)*$ent3));							
     	//desimal 3 angka dibelakang koma
     	$gain = format_decimal($gain);				
     	echo "<tr>";
     	echo "<td>".$kondisi1."</td>";
     	echo "<td>".$jml1."</td>";
     	echo "<td>".$j_normal1."</td>";
     	echo "<td>".$j_sc1."</td>";
     	echo "<td>".$ent1."</td>";
     	echo "<td>&nbsp;</td>";
     	echo "</tr>";
     	echo "<tr>";
     	echo "<td>".$kondisi2."</td>";
     	echo "<td>".$jml2."</td>";
     	echo "<td>".$j_normal2."</td>";
     	echo "<td>".$j_sc2."</td>";
     	echo "<td>".$ent2."</td>";
     	echo "<td>&nbsp;</td>";
     	echo "</tr>";
     	echo "<tr>";
     	echo "<td>".$kondisi3."</td>";
     	echo "<td>".$jml3."</td>";
     	echo "<td>".$j_normal3."</td>";
     	echo "<td>".$j_sc3."</td>";
     	echo "<td>".$ent3."</td>";
     	echo "<td>".$gain."</td>";
     	echo "</tr>";
     	echo "<tr><td colspan='8'></td></tr>";
     }
    // //untuk atribut 4 nilai atribut
    // //untuk atribut 5 nilai atribut	
    
    $db_object->db_query("INSERT INTO gain VALUES ('','1','$atribut','$gain')");
}

//fungsi menghitung entropy
function hitung_entropy($nilai1, $nilai2) {
    $total = $nilai1 + $nilai2;
    //jika salah satu nilai 0, maka entropy 0
//    if ($nilai1 == 0 || $nilai2 == 0 || $nilai3 == 0 || $nilai4 == 0) {
//        $entropy = 0;
//    }
//    else {
    $atribut1 = (-($nilai1 / $total) * (log(($nilai1 / $total), 2)));
    $atribut2 = (-($nilai2 / $total) * (log(($nilai2 / $total), 2)));
    
    $atribut1 = is_nan($atribut1)?0:$atribut1;
    $atribut2 = is_nan($atribut2)?0:$atribut2;
    
        $entropy = $atribut1 + 
                    $atribut2 ;
//    }
    //desimal 3 angka dibelakang koma
    $entropy = format_decimal($entropy);
    return $entropy;
}

//fungsi hitung rasio
function hitung_rasio($db_object, $kasus , $atribut , $gain , $nilai1 , $nilai2 , $nilai3 , $nilai4 , $nilai5){				
    $data_kasus = '';
    if($kasus!=''){
        $data_kasus = $kasus." AND ";
    }
    //menentukan jumlah nilai
    $jmlNilai=5;
    //jika nilai 5 kosong maka nilai atribut-nya 4
    if($nilai5==''){
        $jmlNilai=4;
    }
    //jika nilai 4 kosong maka nilai atribut-nya 3
    if($nilai4==''){
        $jmlNilai=3;
    }
    $db_object->db_query("TRUNCATE rasio_gain");		
    if($jmlNilai==3){
        $opsi11 = jumlah_data($db_object, "$data_kasus ($atribut='$nilai2' OR $atribut='$nilai3')");
        $opsi12 = jumlah_data($db_object, "$data_kasus $atribut='$nilai1'");
        $tot_opsi1=$opsi11+$opsi12;
        $opsi21 = jumlah_data($db_object, "$data_kasus ($atribut='$nilai3' OR $atribut='$nilai1')");
        $opsi22 = jumlah_data($db_object, "$data_kasus $atribut='$nilai2'");
        $tot_opsi2=$opsi21+$opsi22;
        $opsi31 = jumlah_data($db_object, "$data_kasus ($atribut='$nilai1' OR $atribut='$nilai2')");
        $opsi32 = jumlah_data($db_object, "$data_kasus $atribut='$nilai3'");
        $tot_opsi3=$opsi31+$opsi32;			
        //hitung split info
        $opsi1 = (-($opsi11/$tot_opsi1)*(log(($opsi11/$tot_opsi1),2))) + (-($opsi12/$tot_opsi1)*(log(($opsi12/$tot_opsi1),2)));
        $opsi2 = (-($opsi21/$tot_opsi2)*(log(($opsi21/$tot_opsi2),2))) + (-($opsi22/$tot_opsi2)*(log(($opsi22/$tot_opsi2),2)));
        $opsi3 = (-($opsi31/$tot_opsi3)*(log(($opsi31/$tot_opsi3),2))) + (-($opsi32/$tot_opsi3)*(log(($opsi32/$tot_opsi3),2)));
        //desimal 3 angka dibelakang koma
        $opsi1 = format_decimal($opsi1);
        $opsi2 = format_decimal($opsi2);
        $opsi3 = format_decimal($opsi3);										
        //hitung rasio
        $rasio1 = $gain/$opsi1;
        $rasio2 = $gain/$opsi2;
        $rasio3 = $gain/$opsi3;
        //desimal 3 angka dibelakang koma
        $rasio1 = format_decimal($rasio1);
        $rasio2 = format_decimal($rasio2);
        $rasio3 = format_decimal($rasio3);
            //cetak
            echo "Opsi 1 : <br>jumlah ".$nilai2."/".$nilai3." = ".$opsi11.
                    "<br>jumlah ".$nilai1." = ".$opsi12.
                    "<br>Split = ".$opsi1.
                    "<br>Rasio = ".$rasio1."<br>";
            echo "Opsi 2 : <br>jumlah ".$nilai3."/".$nilai1." = ".$opsi21.
                    "<br>jumlah ".$nilai2." = ".$opsi22.
                    "<br>Split = ".$opsi2.
                    "<br>Rasio = ".$rasio2."<br>";
            echo "Opsi 3 : <br>jumlah ".$nilai1."/".$nilai2." = ".$opsi31.
                    "<br>jumlah ".$nilai3." = ".$opsi32.
                    "<br>Split = ".$opsi3.
                    "<br>Rasio = ".$rasio3."<br>";

            //insert 
            $db_object->db_query("INSERT INTO rasio_gain VALUES 
                                    ('' , 'opsi1' , '$nilai1' , '$nilai2 , $nilai3' , '$rasio1'),
                                    ('' , 'opsi2' , '$nilai2' , '$nilai3 , $nilai1' , '$rasio2'),
                                    ('' , 'opsi3' , '$nilai3' , '$nilai1 , $nilai2' , '$rasio3')");
    }
    
    $sql_max = $db_object->db_query("SELECT MAX(rasio_gain) FROM rasio_gain");
    $row_max = $db_object->db_fetch_array($sql_max);	
    $max_rasio = $row_max['0'];
    $sql = $db_object->db_query("SELECT * FROM rasio_gain WHERE rasio_gain=$max_rasio");
    $row = $db_object->db_fetch_array($sql);	
    $opsiMax = array();
    $opsiMax[0] = $row[2];
    $opsiMax[1] = $row[3];		
    echo "<br>=========================<br>";
    return $opsiMax;		
}


function klasifikasi($db_object, $n_lama, $n_peb, $n_rsc, $n_cpd, $n_kpd, $n_kala,
$n_oligo, $n_inertia , $n_presbo, $n_placenta, $n_oblight, $n_cukup) {
    

    $sql = $db_object->db_query("SELECT * FROM t_keputusan");
    $keputusan = $id_rule_keputusan = "";
    while ($row = $db_object->db_fetch_array($sql)) {
        //menggabungkan parent dan akar dengan kata AND
        if ($row['parent'] != '') {
            $rule = $row['parent'] . " AND " . $row['akar'];
        } else {
            $rule = $row['akar'];
        }
        //mengubah parameter
        $rule = str_replace("<=", " k ", $rule);
        $rule = str_replace("=", " s ", $rule);
        $rule = str_replace(">", " l ", $rule);
        //mengganti nilai
        $rule = str_replace("lama", "'$n_lama'", $rule);
        $rule = str_replace("peb", "'$n_peb'", $rule);
        $rule = str_replace("rsc", "'$n_rsc'", $rule);
        $rule = str_replace("cpd", "'$n_cpd'", $rule);
        $rule = str_replace("kpd", "'$n_kpd'", $rule);
        $rule = str_replace("kala", "'$n_kala'", $rule);
        $rule = str_replace("oligo", "'$n_oligo'", $rule);
        $rule = str_replace("inertia", "'$n_inertia'", $rule);
        $rule = str_replace("presbo", "'$n_presbo'", $rule);
        $rule = str_replace("placenta", "'$n_placenta'", $rule);
        $rule = str_replace("oblight", "'$n_oblight'", $rule);
        $rule = str_replace("cukup", "'$n_cukup'", $rule);

        //menghilangkan '
        $rule = str_replace("'", "", $rule);
        //explode and
        $explodeAND = explode(" AND ", $rule);
        $jmlAND = count($explodeAND);
        //menghilangkan ()
        $explodeAND = str_replace("(", "", $explodeAND);
        $explodeAND = str_replace(")", "", $explodeAND);
        //deklarasi bol
        $bolAND=array();
        $n=0;
        while($n<$jmlAND){
            //explode or
            $explodeOR = explode(" OR ",$explodeAND[$n]);
            $jmlOR = count($explodeOR);	
            //deklarasi bol
            $bol=array();
            $a=0;
            while($a<$jmlOR){				
                //pecah  dengan spasi
                $exrule2 = explode(" ",$explodeOR[$a]);
                $parameter = $exrule2[1];				
                if($parameter=='s'){
                    //pecah  dengan s
                    $explodeRule = explode(" s ",$explodeOR[$a]);
                    //nilai true false						
                    if($explodeRule[0]==$explodeRule[1]){
                            $bol[$a]="Benar";
                    }else if($explodeRule[0]!=$explodeRule[1]){
                            $bol[$a]="Salah";
                    }
                }else if($parameter=='k'){
                    //pecah  dengan k
                    $explodeRule = explode(" k ",$explodeOR[$a]);
                    //nilai true false
                    if($explodeRule[0]<=$explodeRule[1]){
                            $bol[$a]="Benar";
                    }else{
                            $bol[$a]="Salah";
                    }
                }else if($parameter=='l'){
                    //pecah dengan s
                    $explodeRule = explode(" l ",$explodeOR[$a]);
                    //nilai true false
                    if($explodeRule[0]>$explodeRule[1]){
                            $bol[$a]="Benar";
                    }else{
                            $bol[$a]="Salah";
                    }
                }				
                $a++;
            }
            //isi false
            $bolAND[$n]="Salah";
            $b=0;			
            while($b<$jmlOR){
                //jika $bol[$b] benar bolAND benar
                if($bol[$b]=="Benar"){
                        $bolAND[$n]="Benar";
                }
                $b++;
            }			
            $n++;
        }
        //isi boolrule
        $boolRule="Benar";
        $a=0;
        while($a<$jmlAND){			
                //jika ada yang salah boolrule diganti salah
                if($bolAND[$a]=="Salah"){
                        $boolRule="Salah";
                        break;
                }						
                $a++;
        }		
        if($boolRule=="Benar"){
            $keputusan=$row['keputusan_hasil'];
            $id_rule_keputusan=$row['id'];
            break;
        }
        //jika tidak ada rule yang memenuhi kondisi data uji 
        //maka ambil rule paling bawah(ambil konisi yg paling panjang)????....
        if ($keputusan == '') {
            $que = $db_object->db_query("SELECT parent FROM t_keputusan");
            $jml = array();
            $exParent = array();
            $i = 0;
            while ($row_baris = $db_object->db_fetch_array($que)) {
                $exParent = explode(" AND ", $row_baris['parent']);
                $jml[$i] = count($exParent);
                $i++;
            }
            $maxParent = max($jml);
            $sql_query = $db_object->db_query("SELECT * FROM t_keputusan");
            while ($row_bar = $db_object->db_fetch_array($sql_query)) {
                $explP = explode(" AND ", $row_bar['parent']);
                $jmlT = count($explP);
                if ($jmlT == $maxParent) {
                    $keputusan = $row_bar['keputusan_hasil'];
                    $id_rule[$it] = $row_bar['id'];
                    $id_rule_keputusan = $row_bar['id'];
                    break;
                }
            }
        }
    }//end loop t_keputusan

    return array('keputusan_hasil' => $keputusan, 'id_rule' => $id_rule_keputusan);
}
