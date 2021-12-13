/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/ServletListener.java to edit this template
 */
package web;

import java.sql.*;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author root
 */
public class danielDBListener implements ServletContextListener {

    public static final String CLASS_NAME = "org.sqlite.JDBC";
    public static final String URL = "jdbc:sqlite:daniel_exame.db";

    public static Connection getConnection() throws Exception {
        return DriverManager.getConnection(URL);
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            Class.forName(CLASS_NAME);
            Connection con = getConnection();
            Statement stmt = con.createStatement();
            stmt.execute("CREATE TABLE IF NOT EXISTS daniel_users ("
                    + "username VARCHAR PRIMARY KEY UNIQUE,"
                    + "password VARCHAR NOT NULL,"
                    + "name VARCHAR NOT NULL"
                    + ");"
                    + "CREATE TABLE IF NOT EXISTS daniel_acess_history ("
                    + "id INT AUTO_INCREMENT PRIMARY KEY,"
                    + "datetime DATETIME NOT NULL,"
                    + "username VARCHAR NOT NULL,"
                    + ")");

        } catch (Exception ex) {

        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
