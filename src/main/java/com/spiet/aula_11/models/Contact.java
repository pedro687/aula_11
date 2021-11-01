package com.spiet.aula_11.models;

public class Contact {
    private String name;
    private String telphone;
    private Data nascimento;

    public Contact(String name, String telphone, Data nascimento) {
        this.name = name;
        this.telphone = telphone;
        this.nascimento = nascimento;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone;
    }

    public Data getNascimento() {
        return nascimento;
    }

    public void setNascimento(Data nascimento) {
        this.nascimento = nascimento;
    }
}
