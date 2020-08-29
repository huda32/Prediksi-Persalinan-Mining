	
<?php
require('lib/fpdf.php');
// require("database.php");
require("konekpdf.php");



class laporandata
{
    public function getDatUser()
    {
      

        $db_object = new Database(); // Instance Class Database
        $pdf = new FPDF('l','mm','A4','C');
        $pdf->AddPage();
        $pdf->SetFont('Arial', 'B', 10); // mengatur font
 
        
        $pdf->Cell(280,7,'DATASET YANG DIGUNAKAN',0,1,'C');
        $pdf->Ln(); // Berpindah baris
 
       

       
            $pdf->Cell(8, 10,'No' , 1,0,'C');
            $pdf->Cell(30, 10,'nama' , 1,0,'C');
            $pdf->Cell(18, 10,'lama' , 1,0,'C');
            $pdf->Cell(15, 10,'peb' , 1,0,'C');
            $pdf->Cell(15, 10,'rsc' , 1,0,'C');
            $pdf->Cell(15, 10,'cpd' , 1,0,'C');
            $pdf->Cell(15, 10,'kpd' , 1,0,'C');
            $pdf->Cell(15, 10,'kala' , 1,0,'C');
            $pdf->Cell(15, 10,'oligo' , 1,0,'C');
            $pdf->Cell(15, 10,'inertia' , 1,0,'C');
            $pdf->Cell(15, 10,'presbo' , 1,0,'C');
            $pdf->Cell(15, 10,'placenta' , 1,0,'C');
            $pdf->Cell(15, 10,'oblight' , 1,0,'C');
            $pdf->Cell(15, 10,'cukup' , 1,0,'C');
            $pdf->Cell(20, 10,'keputusan' , 1,0,'C');

        $rsl  = mysqli_query($db_object->getMySQL(), "SELECT *  FROM data_latih");
 
        foreach ($rsl as $row) {
            $pdf->Ln();
            
                $pdf->Cell(8, 10, $row['id'], 1);
                $pdf->Cell(30, 10, $row['nama'], 1);
                $pdf->Cell(18, 10, $row['lama'], 1);
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
                $pdf->Cell(20, 10, $row['keputusan'], 1);
              
        }
        $pdf->Output();
    }
}
 
$rulelaporan = new laporandata();
 
$rulelaporan->GetDatUser();

