/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Erickson05
 */
public class ConsultarDatos extends HttpServlet {
    private Connection con;
    private Statement set;
    private ResultSet rs;
    public void init(ServletConfig cfg) throws ServletException{
        String URL = "jdbc:mysql:3306//localhost/registrarmaquinas";
        String userName = "root";
        String password = "n0m3l0";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            URL = "jdbc:mysql://localhost/alumno";
            con = DriverManager.getConnection(URL, userName, password);
            set = con.createStatement();
            System.out.println("Se conecto a la BD");
        }catch(Exception e){

            System.out.println("No se conecto");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
    
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Tus Datos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println(""
                    + "<table border=2>"
                        + "<tr>"
                            + "<th>Boleta</th>"
                            + "<th>Nombre del Alumno</th>"
                            + "<th>Contraseña</th>"
                            + "<th>Grupo</th>"
                            + "<th>Sexo</th>"
                            + "<th>Fechad de Nacimiento</th>"
                        + "</tr>");
            try{
                int boleta;
                String nombre, appat, apmat, contraseña, grupo, sexo, fecha;
                //establecer la querry
                boleta = rs.getInt("alu_boleta");
                String q = "select * from alumno where alu_boleta = "+boleta+"";
                
                set = con.createStatement();
                rs = set.executeQuery(q);
                while(rs.next()){
                    nombre = rs.getString("alu_nombre");
                    appat = rs.getString("alu_appat");
                    apmat = rs.getString("alu_apmat");
                    contraseña = rs.getString("alu_contraseña");
                    grupo = rs.getString("alu_grupo");
                    sexo = rs.getString("alu_sexo");
                    fecha = rs.getString("alu_fnacimiento");
                    System.out.print("<tr>"
                                        + "<td>"+boleta+"</td>"
                                        + "<td>"+nombre+"</td>"
                                        + "<td>"+appat+"</td>"
                                        + "<td>"+apmat+"</td>"
                                        + "<td>"+contraseña+"</td>"
                                        + "<td>"+grupo+"</td>"
                                        + "<td>"+sexo+"</td>"
                                        + "<td>"+fecha+"</td>"
                                    + "</tr>");
                }
                //hay que cerrar conexiones
                rs.close();
                set.close();
            
            }catch(Exception e){
                System.out.println("Error al conectar a la tabla");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
            
            }
            
            
            out.println("</table>");
            out.println("<a href='Iniciado.html' >menú principal</a>");
            out.println("</body>");
            out.println("</html>");
        }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    public void destroy(){
        try{
            con.close();
        }catch(Exception e){
            super.destroy();
        }
    }
}
