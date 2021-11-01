package com.spiet.aula_11.models;

public class Horario {
    private int hours;
    private int minutes;
    private int seconds;

    public Horario(int hours, int minutes, int seconds) {
        this.hours = hours;
        this.minutes = minutes;
        this.seconds = seconds;
    }


    public String getHorario(){

        String horario = "";

        if(hours < 10){
            horario += "0";
        }
        horario += hours + ":";

        if(minutes < 10){
            horario += "0";
        }
        horario += minutes + ":";

        if(seconds < 10){
            horario += "0";
        }
        horario += seconds;

        return horario;
    }

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public int getMinutes() {
        return minutes;
    }

    public void setMinutes(int minutes) {
        this.minutes = minutes;
    }

    public int getSeconds() {
        return seconds;
    }

    public void setSeconds(int seconds) {
        this.seconds = seconds;
    }
}
