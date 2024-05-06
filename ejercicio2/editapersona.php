<?php
include "conexion.inc.php";

$id = $_GET['id'];

$sql = "SELECT * FROM persona WHERE idpersona = $id";
$resultado = mysqli_query($conexion, $sql);

if ($resultado && mysqli_num_rows($resultado) > 0) {
    $fila = mysqli_fetch_assoc($resultado);
} else {
    echo "No se encontraron registros";
    exit;
}
?>
<form method="POST" action="editarp.php">
    <input type="hidden" name="id" value="<?php echo $fila['idpersona']; ?>">
    Nombre
    <input type="text" name="nombre" value="<?php echo $fila['nombre']; ?>"><br>
    Paterno
    <input type="text" name="paterno" value="<?php echo $fila['paterno']; ?>"><br>
    Materno 
    <input type="text" name="materno" value="<?php echo $fila['materno']; ?>"><br>
    Fecha de nacimiento
    <input type="date" name="fechanacimiento" value="<?php echo $fila['fechanacimiento']; ?>"><br>
    Genero 
    <input type="text" name="genero" value="<?php echo $fila['genero']; ?>"><br>
    Departamento 
    <input type="text" name="departamento" value="<?php echo $fila['departamento']; ?>"><br>
    Telefono 
    <input type="text" name="telefono" value="<?php echo $fila['telefono']; ?>"><br>
    <input type="submit" value="Guardar">
</form>