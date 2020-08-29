	
<?php
require('lib/fpdf.php');
// require("database.php");
require("konekpdf.php");



class laporanhasil
{
    public function getDatUser()
    {
      

        $db_object = new Database(); // Instance Class Database
        $pdf = new FPDF('l','mm','A4','C');
        $pdf->AddPage();
        $pdf->SetFont('Arial', 'B', 10); // mengatur font
 
        
        $pdf->Cell(400,7,'HASIL PREDIKSI YANG DILAKUKAN',0,1,'C');
        $pdf->Ln(); // Berpindah baris
       
            $pdf->Cell(8, 10,'No' , 1,0,'C');
            $pdf->Cell(30, 10,'Nama' , 1,0,'C');
            $pdf->Cell(20, 10,'Lama' , 1,0,'C');
            $pdf->Cell(15, 10,'PEB' , 1,0,'C');
            $pdf->Cell(15, 10,'RSC' , 1,0,'C');
            $pdf->Cell(15, 10,'CPD' , 1,0,'C');
            $pdf->Cell(15, 10,'KPD' , 1,0,'C');
            $pdf->Cell(15, 10,'Kala' , 1,0,'C');
            $pdf->Cell(15, 10,'Oligo' , 1,0,'C');
            $pdf->Cell(15, 10,'Inertia' , 1,0,'C');
            $pdf->Cell(15, 10,'Presbo' , 1,0,'C');
            $pdf->Cell(15, 10,'Placenta' , 1,0,'C');
            $pdf->Cell(15, 10,'Oblight' , 1,0,'C');
            $pdf->Cell(15, 10,'Cukup' , 1,0,'C');
            $pdf->Cell(20, 10,'Prediksi' , 1,0,'C');
            $pdf->Cell(15, 10,'Rule' , 1,0,'C');
           
        
 
        $rsl  = mysqli_query($db_object->getMySQL(), "SELECT *  FROM hasil_prediksi");
 
        foreach ($rsl as $row) {
            $pdf->Ln();
            
                $pdf->Cell(8, 10, $row['id'], 1);
                $pdf->Cell(30, 10, $row['nama'], 1);
                $pdf->Cell(20, 10, $row['lama'], 1);
                $pdf->Cell(15, 10, $row['peb'], 1);
                $pdf->Cell(15, 10, $row['rsc'], 1);
                $pdf->Cell(15, 10, $row['cpd'], 1);
                $pdf->Cell(15, 10, $row['kpd'], 1);
                $pdf->Cell(15, 10, $row['kala'], 1);
                $pdf->Cell(15, 10, $row['oligo'], 1);
                $pdf->Cell(15, 10, $row['inertia'], 1);
                $pdf->Cell(15, 10, $row['presbo'], 1);
                $pdf->Cell(15, 10, $row['placenta'], 1);
                $pdf->Cell(15, 10, $row['oblight'], 1);
                $pdf->Cell(15, 10, $row['cukup'], 1);
                $pdf->Cell(20, 10, $row['kelas_hasil'], 1);
                $pdf->Cell(15, 10, $row['id_rule'], 1);
               
              
                     
                // if ($row['parent'] != '') {
                    
                //     $pdf->Cell(290, 10, $row['parent']. " AND " . $row['akar'] . " = " . $row['keputusan_hasil'], 1);
                // }
                //    else {
                //     $pdf->Cell(290, 10, $row['akar'], 1);
                //    }
                
                
                
                  
                
                // $pdf->Cell(45, 10, $row['akar'],  1);
              
                
              
                
        }
        $pdf->Output();
    }
}
 
$rulelaporan = new laporanhasil();
 
$rulelaporan->GetDatUser();

