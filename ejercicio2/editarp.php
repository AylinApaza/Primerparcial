<?php
include "conexion.inc.php";

$id = $_POST['id'];
$nombre = $_POST['nombre'];
$paterno = $_POST['paterno'];
$materno = $_POST['materno'];
$fechanacimiento = $_POST['fechanacimiento'];
$genero = $_POST['genero'];
$departamento = $_POST['departamento'];
$telefono = $_POST['telefono'];

$sql = "UPDATE persona SET nombre='$nombre', paterno='$paterno', materno='$materno', fechanacimiento='$fechanacimiento', genero='$genero', departamento='$departamento', telefono='$telefono' WHERE idpersona='$id'";
$resultado = mysqli_query($conexion, $sql);

if ($resultado) {
    header("Location: maquetado.php");
} else {
    echo "Error al actualizar los datos: " . mysqli_error($conexion);
}
?>