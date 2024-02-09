
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Interfaz para registrar una nueva </title>
    </head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 70px;
            /* Establece la imagen de fondo y ajusta su tamaño para cubrir todo el cuerpo */
            background-image: url('https://i.pinimg.com/originals/cf/a0/c4/cfa0c44bd6a5b9fb33b880399e6b436a.jpg');
            background-size: cover;
            /* Posiciona la imagen de fondo en el centro y evita que se repita */
            background-position: center;
            background-repeat: no-repeat;          
            display: flex;
            align-items: center;
            justify-content: center;

        }
        .card {
            background-color: rgba(255, 255, 255, 0.8); /* Color de fondo semi-transparente para la tarjeta */
        }
    </style>
    <script>
        // Función para obtener un parámetro de la URL
        function obtenerParametroURL(nombre) {
            var url = new URL(window.location.href);
            return url.searchParams.get(nombre);
        }

        // Función para ocultar el campo "Id Asistencia" si la acción es "agregar"
        function ocultarCampoIdPermiso() {
            var accion = obtenerParametroURL('accion');
            console.log("Valor de accion:", accion);

            if (accion === 'agregar') {
                console.log("Ocultando el campo 'Id Permiso'");
                document.getElementById("idPermisoContainer").style.display = "none";
            }
        }

        // Ejecutar la función después de que la página se haya cargado
        document.addEventListener('DOMContentLoaded', ocultarCampoIdPermiso);
    </script>
   <script>
    document.addEventListener('DOMContentLoaded', function() {
        // Función para calcular el valor a descontar
        function calcularValorDescontar() {
            // Obtener las fechas y horas de inicio y fin
            var fechaInicio = new Date(document.getElementById('fechaInicioPermiso').value + 'T' + document.getElementById('HoraInicio').value + ':00');
            var fechaFinal = new Date(document.getElementById('fechaFinalPermiso').value + 'T' + document.getElementById('HoraFinal').value + ':00');

            // Calcular la diferencia en milisegundos
            var diferenciaTiempo = fechaFinal - fechaInicio;

            // Convertir la diferencia a horas
            var diferenciaHoras = diferenciaTiempo / (1000 * 60 * 60);

            // Calcular el valor a descontar
            var valorDescontar = diferenciaHoras * 1.36;

            // Mostrar el resultado en el campo de valor a descontar
            document.getElementById('valordescontar').value = valorDescontar.toFixed(2);
        }

        // Asociar la función al evento de cambio en las fechas y horas
        document.getElementById('fechaInicioPermiso').addEventListener('change', calcularValorDescontar);
        document.getElementById('fechaFinalPermiso').addEventListener('change', calcularValorDescontar);
        document.getElementById('HoraInicio').addEventListener('change', calcularValorDescontar);
        document.getElementById('HoraFinal').addEventListener('change', calcularValorDescontar);

        // Llamar a la función inicialmente para mostrar un valor predeterminado
        calcularValorDescontar();
    });
</script>
    <body>
        <!-- Barra de navegación -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="bienvenido.jsp">Inicio</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">


                        <li class="nav-item">
                            <a class="nav-link" href="permisosCrud.jsp">Regresar</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Salir</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Contenedor principal con margen superior -->
        <div class="container mt-1">
            <!-- Fila en el sistema de grillas de Bootstrap -->
            <div class="row">
                <!-- Crear una columna centrada en Bootstrap con un ancho específico en dispositivos grandes -->
                <div class="col-lg-6 mx-auto">
                    <!-- Tarjeta para el formulario de inicio de sesión -->
                    <div class="card">
                        <!-- Cuerpo de la tarjeta con relleno -->
                        <div class="card-body p-5">
                            <!-- Encabezado para el formulario de inicio de sesión -->
                            <h2 class="text-center mb-5">Agregar/Modificar registro de permisos</h2>
                            <!-- Formulario de inicio de sesión con acción "Servlet1" y método POST -->
                            <form action="ServletInsertPermiso" method="post">
                                <!-- Campo de entrada para el nombre de usuario -->
                                <div class="form-group" id="idPermisoContainer">
                                    <label for="idPermiso" class="form-label">Id Permiso</label>
                                    <input name="idPermiso" type="text" class="form-control" id="idPermiso">
                                </div>

                                <div class="form-group">
                                    <label for="usuario_idCedula" class="form-label">Cédula del docente</label>
                                    <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                </div>
                                <div class="form-group">
                                    <label for="idUpdate" class="form-label">Seleccionar motivo:</label>
                                    <select class="form-control" name="motivo" id="motivoSelect">
                                        <!-- Opción predeterminada -->
                                        <option value="" selected disabled>Seleccione un motivo</option>

                                        <!-- Opciones de motivo -->
                                        <option value="Licencia por calamidad domestica">Licencia por calamidad domestica</option>
                                        <option value="Licencia por enfermedad">Licencia por enfermedad</option>
                                        <option value="Licencia por maternidad">Licencia por maternidad</option>
                                        <option value="Licencia por matrimonio o union de hecho">Licencia por matrimonio o union de hecho</option>
                                        <option value="Licencia por paternidad">Licencia por paternidad</option>
                                        <option value="Permiso para estudios regulares">Permiso para estudios regulares</option>
                                        <option value="permiso de días con cargo a vacaciones">Permiso de dias con cargo a vacaciones</option>
                                        <option value="Permiso de dias con cargo a vacaciones">Permiso por asuntos oficiales</option>
                                        <option value="Permiso para atencion medica">Permiso para atencion medica</option>
                                        <option value="Otros">Otros</option>
                                    </select>
                                    <!-- Formulario adicional para la opción "Otros" -->
                                    <div id="otrosFormulario" style="display: none;">
                                        <div class="col-md-6">
                                            <label for="otrosMotivo" class="form-label">Motivo detallado:</label>
                                            <input type="text" class="form-control" name="otrosMotivo" id="otrosMotivo">
                                        </div>
                                        <!-- Otros campos que desees agregar -->
                                    </div>
                                    <script>
                                        document.getElementById("motivoSelect").addEventListener("change", function () {
                                            var otrosFormulario = document.getElementById("otrosFormulario");
                                            if (this.value === "Otros") {
                                                otrosFormulario.style.display = "block";
                                            } else {
                                                otrosFormulario.style.display = "none";
                                            }
                                        });
                                    </script>


                                </div>
                                <div class="form-group">
                                    <label for="fechaInicioPermiso" class="form-label">Fecha inicio</label>
                                    <input name="fechaInicioPermiso" type="date" class="form-control" id="fechaInicioPermiso">
                                </div>
                                <div class="form-group">
                                    <label for="fechaFinalPermiso" class="form-label">Fecha fin</label>
                                    <input name="fechaFinalPermiso" type="date" class="form-control" id="fechaFinalPermiso">
                                </div>
                                <div class="form-group">
                                    <label for="HoraInicio" class="form-label">Hora inicio</label>
                                    <input name="HoraInicio" type="time" class="form-control" id="HoraInicio">
                                </div>
                                <div class="form-group">
                                    <label for="HoraFinal" class="form-label">Hora fin</label>
                                    <input name="HoraFinal" type="time" class="form-control" id="HoraFinal">
                                </div>
                                <div class="form-group">
                                    <label for="observaciones" class="form-label">Observaciones</label>
                                    <input name="observaciones" type="text" class="form-control" id="observaciones">
                                </div>
                                <div class="form-group">
                                    <label for="valordescontar" class="form-label">Valor a descontar</label>
                                    <input name="valordescontar" type="text" class="form-control" id="valordescontar">
                                </div>


                                <br>
                                <!-- Botón de envío para el formulario -->
                                <input name="operacion" type="submit" class="btn btn-primary" value="Guardar">    
                                <input name="operacion" type="submit" class="btn btn-primary" value="Editar"> 
                                <br>
                                <%
                                    if (request.getAttribute("cajitamensajesbd") != null) {
                                        out.println(request.getAttribute("cajitamensajesbd"));
                                    }
                                %>
                            </form>
                        </div>       
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>