<?php
include "conexion.inc.php";
$id=$_GET["id"];
$sql="delete from persona where idpersona='".$id."'";
$resultado = mysqli_query($conexion, $sql);
header("Location:maquetado.php");
?>