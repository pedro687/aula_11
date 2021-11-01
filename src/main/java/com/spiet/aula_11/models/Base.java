package com.spiet.aula_11.models;

import java.util.ArrayList;

public class Base {
    private static ArrayList<Contact> contactList;

    public static  ArrayList<Contact> getContactList(){
        if(contactList == null){
            contactList = new ArrayList<>();
            contactList.add(new Contact("Fulano", "(13)00000 -0001",new Data (1,1,2001)));
            contactList.add(new Contact("Beltrano", "(13)11111 -0002",new Data (2,1,2001)));
            contactList.add(new Contact("Cicrano", "(13)22222 -0003",new Data (3,1,2001)));
        }
        //retornando valor
        return contactList;
    }

}