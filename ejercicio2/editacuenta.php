<?php
include "conexion.inc.php";
$id = $_GET['nro'];

$sql = "SELECT * FROM cuenta_bancaria WHERE nrocuenta = $id";
$resultado = mysqli_query($conexion, $sql);

if ($resultado && mysqli_num_rows($resultado) > 0) {
    $fila = mysqli_fetch_assoc($resultado);
} else {
    echo "No se encontraron registros";
    exit;
}
?>
<form method="POST" action="editarcb.php">
    <input type="hidden" name="id" value="<?php echo $fila['nrocuenta']; ?>">
    nrocuenta
    <input type="number" name="nrodecuenta" value="<?php echo $fila['nrocuenta']; ?>"><br>
    tipo de cuenta
    <input type="text" name="tipodecuenta" value="<?php echo $fila['tipocuenta']; ?>"><br>
    saldo 
    <input type="number" name="saldo" value="<?php echo $fila['saldo']; ?>"><br>
    fecha de creacion
    <input type="date" name="fechacreacion" value="<?php echo $fila['fechacreacion']; ?>"><br>
    persona
    <input type="number" name="idpersona" value="<?php echo $fila['idpersona']; ?>"><br>
    <input type="submit" value="Guardar">
</form>