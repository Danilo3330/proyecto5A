
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Página de Inicio</title>
        <!-- Enlaces a Bootstrap CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

   <style>
            .transparent-container {
                background-color: rgba(255, 255, 255, 0.5); /* Color blanco semi-transparente (ajusta el último valor para cambiar la opacidad) */
                padding: 20px; /* Ajusta el espaciado interno del contenedor según sea necesario */
                border-radius: 10px; /* Agrega bordes redondeados al contenedor si lo deseas */
            }      
     </style>
    </head>
    <body style="background-image: url('https://i.pinimg.com/originals/cf/a0/c4/cfa0c44bd6a5b9fb33b880399e6b436a.jpg');
            background-size: cover; background-position: center;">
 
   

        <!-- Barra de navegación 
        class="navbar":  dar estilo y comportamiento a la barra de navegación.
        class="navbar-expand-lg": barra de navegación se expandirá en dispositivos.
        class="navbar-dark": color claro para contrastar con el fondo oscuro.
        class="bg-dark": color de fondo oscuro para la barra de navegación.
        class="fixed-top": fija la barra de navegación en la parte superior.-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <!--  contenedor que centraliza y controla el diseño en un ancho específico.-->
            <div class="container">
                <!-- Enlace del logo/inicio -->
                <a class="navbar-brand" href="bienvenido.jsp">Inicio</a>
                <!-- Botón para dispositivos móviles
                class="navbar-toggler":  estilizar el botón y está asociado con la apertura o cierre de un menú de navegación.
                data-bs-toggle="collapse": alternar una clase colapsable, en este caso, para la navegación.
                data-bs-target="#navbarNav": Especifica el objetivo que se colapsará o mostrará al hacer clic en este botón.  "navbarNav".
                aria-controls="navbarNav": Este atributo ARIA indica que este botón controla el elemento con el ID "navbarNav".
                aria-expanded="false": Este atributo ARIA indica que el elemento controlado por el botón no está expandido inicialmente.
                aria-label="Toggle navigation": Es un atributo ARIA que proporciona una etiqueta descriptiva para el botón, en este caso, "Alternar navegación".
                Dentro del botón, <span class="navbar-toggler-icon"></span> representa el icono muestra o se oculta según el estado de la navegación.-->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Contenido de la barra de navegación 
                La clase collapse define el contenedor como colapsable, mientras que navbar-collapse proporciona estilos específicos
                 "id" proporciona un identificador único al contenedor colapsable.
                Se utiliza para asociar (navbar-toggler) para que al hacer clic en el botón, este contenedor se colapse o se expanda.-->
                <div class="collapse navbar-collapse" id="navbarNav">
                    <!--alinear los elementos de la lista a la derecha dentro de la barra de navegación-->
                    <ul class="navbar-nav ms-auto">
                        <!-- Elementos de la barra de navegación
                        nav-item" = estilizarlo como un elemento de navegación
                        nav-link= estilizarlo como un enlace dentro de la barra de navegación-->

                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="navegacionCrud.jsp">Menu</a>
                        </li>
            
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Salir</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

    <!-- Un contenedor para organizar elementos -->
        <div class="container mt-5">
            <!-- Encabezado principal con estilo de color negro -->
            <h1 style="color: black" class="text-center mb-4">Datos del docente</h1>

            <!-- Espacios adicionales para ajustar el diseño (en este caso, saltos de línea) -->
            <div class="card transparent-container">
                <!-- Una fila (row) centrada horizontalmente -->
                <div class="row justify-content-center">
                    <!-- Una columna (col-md-6) que ocupa 6 de las 12 columnas disponibles para dispositivos medianos -->
                    <div class="col-md-5">
                        <!-- Enlaces de botones que dirigen a diferentes páginas -->
                        <a href="modificar.jsp" class="btn btn-light btn-lg btn-block mb-2">Datos del docente&nbsp;
                        <br>
                        <a href="capasitacion.jsp" class="btn btn-secondary btn-lg btn-block mb-2">Capacitaciones&nbsp;
                        <br>
                        <a href="formacionAcademica.jsp" class="btn btn-dark btn-lg btn-block">Formacion academica&nbsp
                        <br>
                        <a href="infomacionBancaria.jsp" class="btn btn-light btn-lg btn-block mb-2">Informacion bancar
                        <br>
                    </div>
                        <div class="col-md-5">
                            <a href="contactoEmergencia.jsp" class="btn btn-secondary btn-lg btn-block mb-2">Contacto de emergencia&nbsp;
                            <br>
                            <a href="datosConyuge.jsp" class="btn btn-dark btn-lg btn-block">Datos del conyuge&nbsp;
                            <br>
                            <a href="evalucionDesempe.jsp" class="btn btn-light btn-lg btn-block mb-2">Evaluacion de desempeño&nbsp;
                            <br>
                            <a href="enfermedadCrud.jsp" class="btn btn-secondary btn-lg btn-block mb-2">Enfermedad o discapacidad&nbsp;
                            <br>
                        
                    </div>
                        <div class="col-md-5">
                            <a href="hijos.jsp" class="btn btn-dark btn-lg btn-block">Datos de los hijos&nbsp;
                            <br>
                            <a href="inclucionLaboralCrud.jsp" class="btn btn-light btn-lg btn-block mb-2">Inclucion laboral&nbsp;
                            <br>
                            <a href="senescytCrud.jsp" class="btn btn-secondary btn-lg btn-block mb-2">Situacion del senecyt&nbsp;
                        <br>
                        <a href="trayectoriaLaboralCrud.jsp" class="btn btn-secondary btn-lg btn-block mb-2">Trayectoria laboral&nbsp;
                        </div>
                    
                    
                
                </div>
            </div>
              </div>
                  
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


        <script>
                        // JavaScript para manejar el despliegue del menú al hacer clic
                        const submenuItems = document.querySelectorAll('.has-submenu');

                        submenuItems.forEach(item => {
                            item.addEventListener('click', (event) => {
                                event.preventDefault();
                                const submenu = item.querySelector('.submenu');
                                submenu.classList.toggle('active');
                            });
                        });
        </script>
        <!-- Enlaces a Bootstrap JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>

</html>
