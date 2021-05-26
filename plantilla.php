<?php
	require 'fpdf/fpdf.php';
	
	class PDF extends FPDF
	{
		function Header()
		{

			$this->Image('img/users.png', 10, 5, 20 );
			$this->SetFont('Arial','B',15);
			$this->Cell(20);
			$this->Cell(150,10, 'Reporte de Usuarios',0,0,'C');
			$this->Ln(20);
		}
		
		function Footer()
		{
			$this->SetY(-15);
			$this->SetFont('Arial','I', 8);
			$this->Cell(0,10, 'Pagina '.$this->PageNo().'/{nb}',0,0,'C' );
		}		
	}
?>