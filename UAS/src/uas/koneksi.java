/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uas;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author maulana
 */
public class koneksi {
    private static Connection conn;
    public static Connection connect(String db) throws SQLException{
 
            try {
                String DB = "jdbc:mysql://localhost:3306/" + db;
                String username = "root";
                String password = "";
                
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                conn = (Connection) DriverManager.getConnection(DB, username, password);
                return conn;
            } catch (SQLException sQLException) {
                JOptionPane.showMessageDialog(null, sQLException.toString());
            }
        
        return null;
    }
    
}
