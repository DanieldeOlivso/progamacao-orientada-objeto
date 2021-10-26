/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;


/**
 *
 * @author danie
 */
public class Horario {
    private int hora;
    private int min;
    private int sec;

    public Horario(int hora, int min, int sec) {
        this.setHora(hora);
        this.setMin(min);
        this.setSec(sec);
    }

    public int getSec() {
        return sec;
    }

    public void setSec(int sec) {
        if(sec<0)
            this.sec = 00;
        else if(sec>59)
            this.sec = 59;
        else 
            this.sec = sec;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        if(hora<0)
            this.hora = 00;
        else if(hora>23)
            this.hora = 23;
        else 
            this.hora = hora;
    }

    public int getMin() {
        return min;
    }

    public void setMin(int min) {
        if(min<0)
            this.min = 00;
        else if(min>59)
            this.min = 59;
        else 
            this.min = min;
    }
    
    public String getHorario(){
        String horaA = "";
        String minA = "";
        String secA = "";
        if(sec<10){
            secA = "0"+sec;
        }
        else
            secA += this.getSec();
        if(min<10){
            minA += "0"+min;
        }
        else
            minA += this.getMin();
        if(hora<10){
            horaA = "0"+hora;
        }
        else
            horaA += this.getHora();
        String horario = horaA + ":" + minA + ":" + secA;
        return horario;
    }
    
    public String getTime() {
	DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
	Date date = new Date();
	return dateFormat.format(date);
    }
}
