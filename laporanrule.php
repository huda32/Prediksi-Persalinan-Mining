
	
<?php
require('lib/fpdf.php');
// require("database.php");
require("konekpdf.php");



class laporanrule
{
    public function getDatUser()
    {
      

        $db_object = new Database(); // Instance Class Database
        $pdf = new FPDF('l','mm','A3','C');
        $pdf->AddPage();
        $pdf->SetFont('Arial', 'B', 8); // mengatur font
 
        
        $pdf->Cell(400,7,'RULE POHON KEPUTUSAN',0,1,'C');
        $pdf->Ln(); // Berpindah baris
 

       
            $pdf->Cell(8, 10,'No' , 1,0,'C');
            $pdf->Cell(390, 10,'Rule' , 1,0,'C');
            
           
        
 
        $rsl  = mysqli_query($db_object->getMySQL(), "SELECT *  FROM t_keputusan");
 
        foreach ($rsl as $row) {
            $pdf->Ln();
            
                $pdf->Cell(8, 10, $row['id'], 1);
              
                     
                if ($row['parent'] != '') {
                    
                    $pdf->Cell(390, 10, $row['parent']. " AND " . $row['akar'] . " = " . $row['keputusan_hasil'], 1);
                }
                   else {
                    $pdf->Cell(390, 10, $row['akar'], 1);
                   }
                
                
                
                  
                
                // $pdf->Cell(45, 10, $row['akar'],  1);
              
                
              
                
        }
        $pdf->Output();
    }
}
 
$rulelaporan = new laporanrule();
 
$rulelaporan->GetDatUser();