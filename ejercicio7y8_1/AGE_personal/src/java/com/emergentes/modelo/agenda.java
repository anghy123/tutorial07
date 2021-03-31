package com.emergentes.modelo;

public class agenda {
    
    private int id;
    private int hora;
    private String actividad;
    private String completado;

    public agenda() {
        id=0;
        hora=0;
        actividad="";
        completado="";
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the hora
     */
    public int getHora() {
        return hora;
    }

    /**
     * @param hora the hora to set
     */
    public void setHora(int hora) {
        this.hora = hora;
    }

    /**
     * @return the actividad
     */
    public String getActividad() {
        return actividad;
    }

    /**
     * @param actividad the actividad to set
     */
    public void setActividad(String actividad) {
        this.actividad = actividad;
    }

    /**
     * @return the completado
     */
    public String getCompletado() {
        return completado;
    }

    /**
     * @param completado the completado to set
     */
    public void setCompletado(String completado) {
        this.completado = completado;
    }
    
    

    
    
}
