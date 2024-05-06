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
            ?>
            <table border="1px">
                <tr>
                    <td>Nro de cuenta</td>
                    <td>Tipo de cuenta</td>
                    <td>Saldo</td>
                    <td>Fecha de creacion</td>
                    <td>Id persona</td>
                </tr>
                <?php
                while($fila=mysqli_fetch_array($resultado)){
                    echo "<tr>";
                    echo "<td>".$fila['nrocuenta']."</td>";
                    echo "<td>".$fila['tipocuenta']."</td>";
                    echo "<td>".$fila['saldo']."</td>";
                    echo "<td>".$fila['fechacreacion']."</td>";
                    echo "<td>".$fila['idpersona']."</td>";
                }
                ?>
            </table>
    </div>
</body>
</html>
