<html>
<head>
    <link href="estilos.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    
    <div id="cabecera">
    <h1>Cuentas bancarias</h1>
    </div>

    <div id="contenido">
            <?php
                include "conexion.inc.php";
                $sql="select * from cuenta_bancaria";
                $resultado=mysqli_query($conexion,$sql);

                $sqlp="select * from persona";
                $resultadop=mysqli_query($conexion,$sqlp);
            ?>
            <div>
            <table border="1px">
                <tr>
                    <td>Nro de cuenta</td>
                    <td>Tipo de cuenta</td>
                    <td>Saldo</td>
                    <td>Fecha de creacion</td>
                    <td>Id persona</td>
                    <td>Operacion</td>
                    <td>Operacion</td>
                </tr>
                <?php
                while($fila=mysqli_fetch_array($resultado)){
                    echo "<tr>";
                    echo "<td>".$fila['nrocuenta']."</td>";
                    echo "<td>".$fila['tipocuenta']."</td>";
                    echo "<td>".$fila['saldo']."</td>";
                    echo "<td>".$fila['fechacreacion']."</td>";
                    echo "<td>".$fila['idpersona']."</td>";
                    echo "<td><a href='editacuenta.php?nro=".$fila['nrocuenta']."'>Editar</a></td>"; 
                    echo "<td><a href='eliminacuenta.php?nro=".$fila['nrocuenta']."'>Eliminar</a></td>"; 
                    echo "</tr>"; 
                }
                ?>
            </table>
            </div>
            
            <div class="tablas">
            <table border="1px">
                <tr>
                    <td>idpersona</td>
                    <td>nombre</td>
                    <td>paterno</td>
                    <td>materno</td>
                    <td>fechanacimiento</td>
                    <td>genero</td>
                    <td>departamento</td>
                    <td>telefono</td>
                    <td>Operacion</td>
                    <td>Operacion</td>
                </tr>
                <?php
                while($filap=mysqli_fetch_array($resultadop)){
                    echo "<tr>";
                    echo "<td>".$filap['idpersona']."</td>";
                    echo "<td>".$filap['nombre']."</td>";
                    echo "<td>".$filap['paterno']."</td>";
                    echo "<td>".$filap['materno']."</td>";
                    echo "<td>".$filap['fechanacimiento']."</td>";
                    echo "<td>".$filap['genero']."</td>";
                    echo "<td>".$filap['departamento']."</td>";
                    echo "<td>".$filap['telefono']."</td>";
                    echo "<td><a href='editapersona.php?id=".$filap['idpersona']."'>Editar</a></td>"; 
                    echo "<td><a href='eliminapersona.php?id=".$filap['idpersona']."'>Eliminar</a></td>"; 
                    echo "</tr>"; 
                }
                ?>
            </table>
            </div>
    </div>
</body>
</html>
