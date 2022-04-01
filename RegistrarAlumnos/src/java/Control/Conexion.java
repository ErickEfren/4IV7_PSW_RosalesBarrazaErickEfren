/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Control;
import java.sql.*;
/**
 *
 * @author Erickson05
 */
public class Conexion {
    public static Connection getConnection(){
        String url,userName,password;
        url = "jdbc:mysql://localhost/alumnos";
        userName = "root";
        password = "n0m3l0";
        
        Connection con = null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, userName, password);
            System.out.println("Se conectó a la Base de Datos");
        }catch(Exception e){
            System.out.println("No se encontró la Base de Datos");
            System.out.println(e.getMessage());
        }
        return con;
    }
}
