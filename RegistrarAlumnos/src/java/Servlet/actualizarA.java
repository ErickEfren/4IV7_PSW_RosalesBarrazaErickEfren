/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Control.AccionesAlumno;
import Modelo.Registro;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Erickson05
 */
public class actualizarA extends HttpServlet {

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
            int id = Integer.parseInt(request.getParameter("id2"));
            int bol,edad,tel;
            String grup,nom,appat,apmat;
            bol=Integer.parseInt(request.getParameter("bol2"));
            grup=request.getParameter("grup2");
            nom=request.getParameter("nom2");
            appat=request.getParameter("appat2");
            apmat=request.getParameter("apmat2");
            edad=Integer.parseInt(request.getParameter("edad2"));
            tel=Integer.parseInt(request.getParameter("tel2"));
            Registro a = new Registro();
            a.setId(id);
            a.setBol(bol);
            a.setGrup(grup);
            a.setNom(nom);
            a.setAppat(appat);
            a.setApmat(apmat);
            a.setEdad(edad);
            a.setTel(tel);
            int status = AccionesAlumno.ActualizarA(a);
            if (status > 0) {
                response.sendRedirect("consultarA.jsp");
            }else{
                response.sendRedirect("error.jsp");
            }
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

}
