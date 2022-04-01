/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Control;
import Modelo.Registro;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Erickson05
 */
public class AccionesAlumno {
    public static int RegistrarA(Registro a){
        int status = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "insert into alumnos(bol_al, grup_al, nom_al, appat_al, apmat_al, edad_al, tel_al)"
                    + "values(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1,a.getBol());
            ps.setString(2,a.getGrup());
            ps.setString(3,a.getNom());
            ps.setString(4,a.getAppat());
            ps.setString(5,a.getApmat());
            ps.setInt(6,a.getEdad());
            ps.setInt(7,a.getTel());
            status = ps.executeUpdate();
            System.out.println("Alumno correctamente Registrado");
            con.close();
        }catch(Exception e){
            System.out.println("Alumno no registrado");
            System.out.println(e.getMessage());
        }
        return status;
    }
    public static int ActualizarA(Registro a){
        int status = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "update alumnos set bol_al= ?,grup_al = ?, nom_al = ?, appat_al = ?, apmat_al = ?, edad_al = ?, tel_al = ?"
                    + "where id_al = ?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1,a.getBol());
            ps.setString(2,a.getGrup());
            ps.setString(3,a.getNom());
            ps.setString(4,a.getAppat());
            ps.setString(5,a.getApmat());
            ps.setInt(6,a.getEdad());
            ps.setInt(7,a.getTel());
            ps.setInt(8, a.getId());
            status = ps.executeUpdate();
            System.out.println("Alumno correctamente Actualizado");
            con.close();
        }catch(Exception e){
            System.out.println("Alumno no registrado");
            System.out.println(e.getMessage());
        }
        return status;
    }
    public static int BorrarA(int id){
        int status = 0;
        try{
            Connection con = Conexion.getConnection();
            String q = "delete from alumnos where id_al = ?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1,id);
            status = ps.executeUpdate();
            System.out.println("Alumno correctamente Borrado");
            con.close();
        }catch(Exception e){
            System.out.println("Alumno no Borrado");
            System.out.println(e.getMessage());
        }
        return status;
    }
    public static Registro BuscarA(int id){
        Registro a = new Registro();
        try{
            Connection con = Conexion.getConnection();
            String q = "select * from alumnos where id_al= ?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                a.setId(rs.getInt(1));
                a.setBol(rs.getInt(2));
                a.setGrup(rs.getString(3));
                a.setNom(rs.getString(4));
                a.setAppat(rs.getString(5));
                a.setApmat(rs.getString(6));
                a.setEdad(rs.getInt(7));
                a.setTel(rs.getInt(8));
            }
            System.out.println("Alumno correctamente Encontrado");
            con.close();
        }catch(Exception e){
            System.out.println("Alumno no Encontrado");
            System.out.println(e.getMessage());
        }
        return a;
    }
    public static List<Registro> TodosA(){
        List<Registro> lista = new ArrayList<Registro>(); 
        Registro a = new Registro();
        try{
            Connection con = Conexion.getConnection();
            String q = "select * from alumnos where id_al= ?";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                a.setId(rs.getInt(1));
                a.setBol(rs.getInt(2));
                a.setGrup(rs.getString(3));
                a.setNom(rs.getString(4));
                a.setAppat(rs.getString(5));
                a.setApmat(rs.getString(6));
                a.setEdad(rs.getInt(7));
                a.setTel(rs.getInt(8));
                lista.add(a);
            }
            System.out.println("Alumno correctamente Encontrado");
            con.close();
        }catch(Exception e){
            System.out.println("Alumno no Encontrado");
            System.out.println(e.getMessage());
        }
        return lista;
    }
    
}
