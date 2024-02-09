
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      
    </head>
        <body style="background-image: url('https://i.pinimg.com/originals/cf/a0/c4/cfa0c44bd6a5b9fb33b880399e6b436a.jpg');
            ; background-size: cover; background-position: center;">
        <!-- Contenedor principal con margen superior -->
        <div class="container mt-1">
            <!-- Fila en el sistema de grillas de Bootstrap -->
            <div class="row">
                <!-- Crear una columna centrada en Bootstrap con un ancho espec�fico en dispositivos grandes -->
                <div class="col-lg-6 mx-auto">
                    <!-- Tarjeta para el formulario de inicio de sesi�n -->
                    <div class="card">
                        <!-- Cuerpo de la tarjeta con relleno -->
                        <div class="card-body p-5">
                            <!-- Encabezado para el formulario de inicio de sesi�n -->
                            <h2 class="text-center mb-5">Iniciar sesi�n</h2>
                            <!-- Formulario de inicio de sesi�n con acci�n "Servlet1" y m�todo POST -->
                            <form action="Servlet1" method="post" id="loginForm">
                                <!-- Campo de entrada para el nombre de usuario -->
                                <div class="form-group">
                                    <label for="username">Usuario</label>
                                    <input type="text" id="nick" class="form-control" name="nick">
                                </div>

                                <!-- Campo de entrada para la contrase�a -->
                                <div class="form-group">
                                    <label for="password">Contrase�a</label>
                                    <input type="password" id="contrasenia" class="form-control" name="contrasenia">
                                </div>

                                <!-- Bot�n de env�o para el formulario de inicio de sesi�n -->
                                <button type="submit" class="btn btn-primary btn-block">Iniciar sesi�n</button>

                                <!-- C�digo JSP para mostrar intentos restantes de inicio de sesi�n -->
                                <%
                                    Integer numeroIntentos = (Integer) request.getSession().getAttribute("numeroIntentos");
                                    if (numeroIntentos != null && numeroIntentos > 0) {
                                        out.print("<p style='color:black;'>Intentos restantes: " + (3 - numeroIntentos) + "</p>");
                                    }
                                %>
                            </form>
                            <br>
                            <form action="Servlet2" method="post" id="loginForm">
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



