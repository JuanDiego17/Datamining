<?php

	include 'plantilla.php';
	require 'conexion.php';
	
	$query = "SELECT usuario.nombre, usuario.apellido, genero.n_genero FROM usuario 
			INNER JOIN genero 
			ON usuario.genero=genero.id_genero";
	$resultado = $mysqli->query($query);
	
	$pdf = new PDF();
	$pdf->AliasNbPages();
	$pdf->AddPage();
	
	$pdf->SetFillColor(232,232,232);
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(60,6,'Nombre',1,0,'C',1);
	$pdf->Cell(60,6,'Apellido',1,0,'C',1);
	$pdf->Cell(60,6,'Genero',1,1,'C',1);
	
	$pdf->SetFont('Arial','',12);
	
	foreach($this->model->Listar_Reporte() as $row)
	{
		$pdf->Cell(60,6,utf8_decode($row['nombre']),1,0,'C');
		$pdf->Cell(60,6,utf8_decode($row['apellido']),1,0,'C');
		$pdf->Cell(60,6,utf8_decode($row['n_genero']),1,1,'C');
	}

	$pdf->Output();
?>