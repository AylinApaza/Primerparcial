<?php
include "conexion.inc.php";
$nro=$_GET["nro"];
$sql="delete from cuenta_bancaria where nrocuenta='".$nro."'";
$resultado = mysqli_query($conexion, $sql);
header("Location:maquetado.php");
?>