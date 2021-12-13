/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;

import java.sql.*;
import java.util.ArrayList;
import web.danielDBListener;

/**
 *
 * @author danie
 */
public class danielUser {
    public static ArrayList<String> getTasks() throws Exception{
        ArrayList<String> listUsername = new ArrayList<>();
        ArrayList<String> listPass = new ArrayList<>();
        ArrayList<String> listName = new ArrayList<>();
        Connection con = danielDBListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM daniel_users");
        while(rs.next()){
            listUsername.add(rs.getString("username"));
            listPass.add(rs.getString("password"));
            listName.add(rs.getString("name"));
        }
        rs.close();
        stmt.close();
        con.close();
        return listUsername;
    }
    
    public static void addUser(String username, String password, String name) throws Exception{
        Connection con = danielDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("INSERT INTO daniel_users VALUES ('"+username +"', '"+password+"', '"+name+"')");
        stmt.close();
        con.close();
    }
    
     public static void removeUser(String username) throws Exception{
        Connection con = danielDBListener.getConnection();
        Statement stmt = con.createStatement();
        stmt.execute("DELETE FROM daniel_users WHERE username = '"+username+"'");
        stmt.close();
        con.close();
    }
}
