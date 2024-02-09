
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Página de Inicio</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <style>
            .transparent-container {
                background-color: rgba(255, 255, 255, 0.5); /* Color blanco semi-transparente (ajusta el último valor para cambiar la opacidad) */
                padding: 20px; /* Ajusta el espaciado interno del contenedor según sea necesario */
                border-radius: 10px; /* Agrega bordes redondeados al contenedor si lo deseas */
            }

        </style>
        <!-- Enlaces a Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
    /* ... Otros estilos ... */

    /* Estilo para los botones personalizados */
    .btn-custom {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background-color: #3498db; /* Cambia el color de fondo del botón */
        color: #ffffff; /* Cambia el color del texto del botón */
        border: 2px solid #2980b9; /* Añade un borde al botón */
        border-radius: 8px; /* Añade bordes redondeados al botón */
        padding: 10px; /* Ajusta el relleno del botón según sea necesario */
        transition: background-color 0.3s, color 0.3s; /* Añade una transición suave */
    }

    /* Estilo para los botones al pasar el mouse */
    .btn-custom:hover {
        background-color: #2980b9; /* Cambia el color de fondo al pasar el mouse */
        color: #ffffff; /* Cambia el color del texto al pasar el mouse */
    }

    /* ... Otros estilos ... */
</style>

        <style>
            body {
                padding-top: 70px;
                /* Establece la imagen de fondo y ajusta su tamaño para cubrir todo el cuerpo */
               background-image: url('https://i.pinimg.com/originals/cf/a0/c4/cfa0c44bd6a5b9fb33b880399e6b436a.jpg');
            background-size: cover;
                /* Posiciona la imagen de fondo en el centro y evita que se repita */
                background-position: center;
                background-repeat: no-repeat;
                /* Establece la altura del cuerpo para ocupar el 100% de la altura de la ventana (viewport height) */
                height: 100vh;
                /* Utiliza flexbox para centrar vertical y horizontalmente el contenido */
                display: flex;
                align-items: center;
                justify-content: center;
                /* Elimina márgenes y rellenos predeterminados del cuerpo */
             
            }
            .card {
            background-color: grey;
            }

            .btn-custom {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                background-color: #ffffff; /* Fondo blanco */
                color: #000000; /* Texto negro */
                border: none; /* Eliminar borde del botón si es necesario */
            }

            /* Estilos para centrar en pantalla */
            .centered-container {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh; /* Altura del viewport */
                margin: 20px; 
            }
            .btn-custom img {
                margin-bottom: 5px; /* Espacio entre la imagen y el texto */
            }
         
        </style>
    </head>
    <body>
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

   
   <div class="col-md-6">
                        <!-- Enlaces de botones que dirigen a diferentes páginas -->
                        <a href="navegacionUsuarioCrud.jsp"  class="btn btn-light btn-lg btn-block mb-2">Gestion de datos del docente&nbsp;

                        <br>
                        <a href="asistenciasCrud.jsp" class="btn btn-secondary btn-lg btn-block mb-2">Gestion de datos de la asistencia&nbsp;

                        <br>
                        <a href="permisosCrud.jsp" class="btn btn-dark btn-lg btn-block">Gestion de datos de los permisos&nbsp;
                        <img src="./imagenes/docente.png"></a>
                        <br>
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