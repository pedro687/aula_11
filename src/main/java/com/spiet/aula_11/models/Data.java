package com.spiet.aula_11.models;

public class Data {

    private int day;
    private int month;
    private int year;


    public void setData(int day, int month, int year){
        this.setDay(day);
        this.setMonth(month);
        this.setYear(year);
    }

    public Data(){
        day = 1;
        month = 1;
        year = 2000;
    }

    public Data(int dia, int mes, int ano){
        this.setData(dia,mes,ano);
    }

    public String getData(){

        String data = " ";

        if(day < 10){
            data += "0";
        }
        data += day + "/";

        if(month < 10){
            data += "0";
        }
        data += month + "/";

        data +=year;

        return data;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        if(day < 1) this.day = 1;
        else if(day > 31) this.day = 31;
        else this.day = day;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        if(month < 1) this.month = 1;
        else if(month > 12) this.month = 12;
        else this.month = month;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}
