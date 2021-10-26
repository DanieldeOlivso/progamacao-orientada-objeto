/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author danie
 */
public class Data {
    //permite que os atributos sejam usados em outros lugares que forem chamados
    private int dia;
    private int mes;
    private int ano;
    
    //Construtor que é executado quando alguém starta o "new"
    /**
     * Construtur que inicia a data com 01/01/2001
     */
    public Data(){
        dia = 1;
        mes = 1;
        ano = 2001;
    }
    
    //sobrecarga de construtor
    /**
     * Construtor sobrecarreegado que vai receber o dia, mes e o ano e iniciar a variavel
     * @param dia
     * @param mes
     * @param ano 
     */
    public Data(int dia, int mes, int ano){
        this.setData(dia, mes, ano);
    }
    
    public void setData(int dia, int mes, int ano){
        this.setDia(dia);
        this.setMes(mes);
        this.setAno(ano);
    }
    
    /**
     * retorna uma string da data no formato dd/mm/aaaa
     * @return 
     */
    public String getData(){
        String data = "";
        String diaData = "";
        String mesData = "";
        if(dia<10) 
            diaData = "0" + dia;
        else{
            diaData += dia;
        }
        if(mes<10) 
            mesData = "0" + mes;
        else{
            mesData += mes;
        }
        data+= diaData + "/" + mesData + "/" + ano;
        return data;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        if(dia>31) this.dia = 28;
        else if(dia<1) this.dia = 1;
        else this.dia = dia;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        if(mes>0 && mes <13) this.mes = mes;
        else if(mes<1) this.mes = 1;
        else this.mes = 12;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }
    
}
