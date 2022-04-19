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
public class RegistrarDatos extends HttpServlet {
    private Connection con;
    private Statement set;
    private ResultSet rs;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public void init(ServletConfig cfg) throws ServletException{
        String URL = "jdbc:mysql:3306//localhost/registrarmaquinas";
        String userName = "root";
        String password = "Recodo36";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            URL = "jdbc:mysql://localhost/registrarmaquinas";
            con = DriverManager.getConnection(URL, userName, password);
            set = con.createStatement();
            
            System.out.println("Se conecto con la BD");
        }catch(Exception e){
            System.out.println("No se conecto");
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
        try{
                int boleta;
                String nombre, appat, apmat, sexo, grupo, fecha, contraseña;
                
                nombre = request.getParameter("nombre");
                appat = request.getParameter("appat");
                apmat = request.getParameter("apmat");
                sexo = request.getParameter("sexo");
                grupo = request.getParameter("grupo");
                boleta = Integer.parseInt(request.getParameter("boleta"));
                fecha = request.getParameter("dia") + "/" + request.getParameter("mes") + "/" +request.getParameter("año");
                contraseña = request.getParameter("contraseña");
                
                
                String q = "insert into alumno (alu_boleta, alu_nombre, alu_appat, alu_apmat, alu_sexo, grup_id,  alu_fnacimiento, alu_contraseña)"
                        + "values ("+boleta+", '"+nombre+"', '"+appat+"', '"+apmat+"', '"+sexo+"','"+grupo+"','"+fecha+"','"+contraseña+"');";
                
                set.executeUpdate(q);
                out.println("<h1>Registro Exitoso</h1>");
                System.out.println("Se registro un nuevo usuario");
                
            }catch(Exception e){
                out.println("<h1>Registro NO Exitoso</h1>");
                System.out.println("Error al registrar al usuario");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
            }
            out.println("<a href='ConsultarAlumnos'>index.html</a>");
            out.println("</body>");
            out.println("</html>");
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
