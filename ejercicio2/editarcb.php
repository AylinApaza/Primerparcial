<?php
include "conexion.inc.php";

$id = $_POST['id'];
$nrodecuenta = $_POST['nrodecuenta'];
$tipodecuenta = $_POST['tipodecuenta'];
$saldo = $_POST['saldo'];
$fechacreacion = $_POST['fechacreacion'];
$idpersona = $_POST['idpersona'];

$sql = "UPDATE cuenta_bancaria SET nrocuenta='$nrodecuenta', tipocuenta='$tipodecuenta', saldo='$saldo', fechacreacion='$fechacreacion', idpersona='$idpersona' WHERE nrocuenta='$id'";
$resultado = mysqli_query($conexion, $sql);

if ($resultado) {
    header("Location: maquetado.php");
} else {
    echo "Error al actualizar los datos: " . mysqli_error($conexion);
}
?>