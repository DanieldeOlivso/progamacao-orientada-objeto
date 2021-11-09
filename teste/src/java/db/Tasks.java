/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;

import java.util.*;
import java.sql.*;
import web.DBListener;
/**
 *
 * @author danie
 */
public class Tasks {
    public static ArrayList<String> getTasks() throws Exception{
        ArrayList<String> list = new ArrayList<>();
        Connection con = DBListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("Select * from tasks");
        while(rs.next()){
            list.add(rs.getString("name"));
        }
        rs.close();
        stmt.close();
        con.close();
        return list;
    }
    
    public static void addTask(String taskName) throws Exception{
        Connection con = DBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("insert into tasks values('"+taskName+"')");
        stmt.close();
        con.close();
    }
    
    public static void removeTask(String taskName) throws Exception{
        Connection con = DBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("delete from tasks where name = '"+taskName+"'");
        stmt.close();
        con.close();
    }
}
