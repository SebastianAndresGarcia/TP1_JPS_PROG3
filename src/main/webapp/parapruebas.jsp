<%-- 
    Document   : parapruebas
    Created on : 13/12/2020, 15:36:23
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <h1>Bono de Sueldo</h1>
    <link rel="stylesheet" href="style.css" />
    <script>
        var legajo;
        var nombreEmpleado;
        var codBono;
        var mes;
        var anio;
        var total;

        var array = new Array();

        function cargarDatos() {

            var salir = false;
            legajo = document.getElementById("legajo").value;
            nombreEmpleado = document.getElementById("nombre");
            codBono = document.getElementById("codBono");
            mes = document.getElementById("mes");
            anio = document.getElementById("anio").value;
            total = document.getElementById("total").value;
            if (legajo <= 0 || nombreEmpleado == "" || codBono == "" || mes == "Mes" || anio > 2020 || total <= 0) {
                alert("Complete todos los campos");
            } else {
                for (var i = 0; i < array.length; i++) {
                    if (array[i] == legajo) {
                        alert("Ya existe registrado el legajo");
                        salir = true;
                        break;
                    }
                }
                if (!salir) {
                    var campos = ["legajo", "nombre", "codBono", "mes", "anio", "total"];
                    array.push(document.getElementById(campos[0]).value);

                    var tabla = document.getElementById("Tabla");
                    var tablaFila = tabla.insertRow(tabla.length);

                    for (var i = 0; i < 6; i++) {
                        var tablaColumna = tablaFila.insertCell(i);
                        tablaColumna.innerHTML = document.getElementById(campos[i]).value;
                    }
                }
            }
            //salir = false;
        }
    </script>
</head>

<body>
    <form class="form-register">
        Legajo<br>
        <input type="number" class="controls" id="legajo" name="legajo" /><br>
        Nombre del empleado<br>
        <input type="text" class="controls" id="nombre" name="nombre" /><br>
        Codigo de Bono de Sueldo<br>
        <input type="text" class="controls" id="codBono" name="codBono" /><br><br>

        <select id="mes" name="mes">
            <option value="Mes" selected>Mes</option>
            <option value="Enero">Enero</option>
            <option value="Febrero">Febrero</option>
            <option value="Marzo">Marzo</option>
            <option value="Abril">Abril</option>
            <option value="Mayo">Mayo</option>
            <option value="Junio">Junio</option>
            <option value="Julio">Julio</option>
            <option value="Agosto">Agosto</option>
            <option value="Setiembre">Setiembre</option>
            <option value="Octubre">Octubre</option>
            <option value="Noviembre">Noviembre</option>
            <option value="diciembre">diciembre</option>
        </select>
        <br>Anio<br>
        <input type="number" class="controls" id="anio" name="anio" /><br>
        Total<br>
        <input type="number" class="controls" id="total" name="total" /><br><br>
        <input type="button" class="controls" value="enviar" onclick="cargarDatos()"><br>
    </form>
    <br><table id="Tabla" border="1" class="tabla1" ><br>
        <tr class="head">
            <th>Legajo</th>
            <th>Empleado</th>
            <th>Codigo</th>
            <th>Mes</th>
            <th>Anio</th>
            <th>Total</th>
        </tr>
    </table>
</body>

</html>