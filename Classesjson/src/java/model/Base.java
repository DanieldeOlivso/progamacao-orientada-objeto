/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.util.ArrayList;

/**
 *
 * @author danie
 */
public class Base {
    private static ArrayList<Contato> contatosList;
    public static ArrayList<Contato> getContatosList(){
        if(contatosList == null){
            contatosList = new ArrayList<>();
            contatosList.add(new Contato("Fulano A", "(13)997776659", new Data(1,1,2001)));
            contatosList.add(new Contato("Fulano B", "(13)997665549", new Data(2,2,2002)));
            contatosList.add(new Contato("Fulano A", "(13)997554439", new Data(3,3,2003)));
        }
        return contatosList;
    }
}
