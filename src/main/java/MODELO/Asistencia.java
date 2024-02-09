package MODELO;


public class Asistencia {
    
    //zona de variables
    int idAsistencia;
    String fechaAsistencia;
    String horaEntrada;
    String horaSalida;
    String obserbaciones;
    String cumpleOchoHoras;
    String hojaRuta;
    String horaInicioHojaRuta;
    String horaFinHojaRuta;
    int usuario_idCedula;
    double horaEntradaC;
    double horaSalidaC;
    double diferenciaMinutos;    
    
    public Asistencia(int idAsistencia, String cumpleOchoHoras) {
        this.idAsistencia = idAsistencia;
        this.cumpleOchoHoras = cumpleOchoHoras;
    }

    public Asistencia(String fechaAsistencia, String horaEntrada, String horaSalida, String obserbaciones, String cumpleOchoHoras, String hojaRuta, String horaInicioHojaRuta, String horaFinHojaRuta, int usuario_idCedula) {
        this.fechaAsistencia = fechaAsistencia;
        this.horaEntrada = horaEntrada;
        this.horaSalida = horaSalida;
        this.obserbaciones = obserbaciones;
        this.cumpleOchoHoras = cumpleOchoHoras;
        this.hojaRuta = hojaRuta;
        this.horaInicioHojaRuta = horaInicioHojaRuta;
        this.horaFinHojaRuta = horaFinHojaRuta;
        this.usuario_idCedula = usuario_idCedula;
    }

    public Asistencia(String horaEntrada, String horaSalida) {
        this.horaEntrada = horaEntrada;
        this.horaSalida = horaSalida;
    }
      
    
    
    
        //zona de constructor

    public Asistencia(int idAsistencia, String fechaAsistencia, String horaEntrada, String horaSalida, String obserbaciones, String cumpleOchoHoras, String hojaRuta, String horaInicioHojaRuta, String horaFinHojaRuta, int usuario_idCedula) {
        this.idAsistencia = idAsistencia;
        this.fechaAsistencia = fechaAsistencia;
        this.horaEntrada = horaEntrada;
        this.horaSalida = horaSalida;
        this.obserbaciones = obserbaciones;
        this.cumpleOchoHoras = cumpleOchoHoras;
        this.hojaRuta = hojaRuta;
        this.horaInicioHojaRuta = horaInicioHojaRuta;
        this.horaFinHojaRuta = horaFinHojaRuta;
        this.usuario_idCedula = usuario_idCedula;
    }

    public int getIdAsistencia() {
        return idAsistencia;
    }

    public void setIdAsistencia(int idAsistencia) {
        this.idAsistencia = idAsistencia;
    }

    public String getFechaAsistencia() {
        return fechaAsistencia;
    }

    public void setFechaAsistencia(String fechaAsistencia) {
        this.fechaAsistencia = fechaAsistencia;
    }

    public String getHoraEntrada() {
        return horaEntrada;
    }

    public void setHoraEntrada(String horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public String getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(String horaSalida) {
        this.horaSalida = horaSalida;
    }

    public String getObserbaciones() {
        return obserbaciones;
    }

    public void setObserbaciones(String obserbaciones) {
        this.obserbaciones = obserbaciones;
    }

    public String getCumpleOchoHoras() {
        return cumpleOchoHoras;
    }

    public void setCumpleOchoHoras(String cumpleOchoHoras) {
        this.cumpleOchoHoras = cumpleOchoHoras;
    }

    public String getHojaRuta() {
        return hojaRuta;
    }

    public void setHojaRuta(String hojaRuta) {
        this.hojaRuta = hojaRuta;
    }

    public String getHoraInicioHojaRuta() {
        return horaInicioHojaRuta;
    }

    public void setHoraInicioHojaRuta(String horaInicioHojaRuta) {
        this.horaInicioHojaRuta = horaInicioHojaRuta;
    }

    public String getHoraFinHojaRuta() {
        return horaFinHojaRuta;
    }

    public void setHoraFinHojaRuta(String horaFinHojaRuta) {
        this.horaFinHojaRuta = horaFinHojaRuta;
    }

    public int getUsuario_idCedula() {
        return usuario_idCedula;
    }

    public void setUsuario_idCedula(int usuario_idCedula) {
        this.usuario_idCedula = usuario_idCedula;
    }

    @Override
    public String toString() {
        return "Asistencia{" + "idAsistencia=" + idAsistencia + ", fechaAsistencia=" + fechaAsistencia + ", horaEntrada=" + horaEntrada + ", horaSalida=" + horaSalida + ", obserbaciones=" + obserbaciones + ", cumpleOchoHoras=" + cumpleOchoHoras + ", hojaRuta=" + hojaRuta + ", horaInicioHojaRuta=" + horaInicioHojaRuta + ", horaFinHojaRuta=" + horaFinHojaRuta + ", usuario_idCedula=" + usuario_idCedula + '}';
    }
   
        public void verificarTiempo(double horaEntradaC, double horaSalidaC) {
            // Obtener las horas y minutos ingresados por el usuario
            double entrada = horaEntradaC;
            double salida = horaSalidaC;

            // Calcular la diferencia en minutos entre la hora de entrada y la hora de salida
            diferenciaMinutos = obtenerDiferenciaMinutos(horaEntradaC, horaSalidaC);

            // Verificar si hay al menos 8 horas y minutos entre la hora de entrada y la hora de salida
            if (diferenciaMinutos >= 8 * 60) { // 8 horas x 60 minutos
                // Mostrar "Sí" si hay al menos 8 horas y minutos
                document.getElementById("cumpleOchoHoras").value = "Si";
            } else {
                // Mostrar "No" si no hay al menos 8 horas y minutos
                document.getElementById("cumpleOchoHoras").value = "No";
            }
        }

        public String obtenerTiempo(idCampo) {
            // Obtener la hora desde el campo de entrada
            var tiempoString = document.getElementById(idCampo).value;
            // Convertir la cadena de tiempo a un objeto Date
            var fecha = new Date("1970-01-01T" + tiempoString + ":00");
            // Obtener la hora y minutos en formato 24 horas
            var horas = fecha.getHours();
            var minutos = fecha.getMinutes();
            return { horas: horas, minutos: minutos };
        }

        public String obtenerDiferenciaMinutos(tiempoInicio, tiempoFin) {
            // Calcular la diferencia en minutos entre dos tiempos
            var minutosInicio = tiempoInicio.horas * 60 + tiempoInicio.minutos;
            var minutosFin = tiempoFin.horas * 60 + tiempoFin.minutos;
            return minutosFin - minutosInicio;
        }

        // Establecer la verificación cada vez que cambien las horas y minutos (ajusta según tus necesidades)
        setInterval(verificarTiempo, 1000); // 1000 milisegundos = 1 segundo


}