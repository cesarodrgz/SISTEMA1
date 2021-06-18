/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controladores;

import com.modelos.Conexion;
import com.modelos.Empresa;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oracle.jdbc.*;

/**
 *
 * @author rodez
 */
public class ControladorLogin extends HttpServlet {

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
//        processRequest(request, response);
        String user = request.getParameter("user");
        String pass = request.getParameter("password");

        if (user != null && pass != null) {
            try {
                Connection con = new Conexion().getConnection();
                CallableStatement cs = con.prepareCall("{ call obtenerUsuario(?,?,?) }");
                cs.setString(1, user);
                cs.setString(2, pass);
                cs.registerOutParameter(3, OracleTypes.CURSOR);
                cs.execute();

                ResultSet rs = (ResultSet) cs.getObject(3);

                if (rs == null) {
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                    return;
                }

                Empresa empresa = new Empresa();

                while (rs.next()) {
                    empresa.setId(rs.getInt("idempresa"));
                    empresa.setNombre(rs.getString("nombre_empresa"));
//                    empresa.setDescripcion(rs.getString("descripcion_empresa"));
                    empresa.setDireccion(rs.getString("direccion_empresa"));
                    empresa.setEmail(rs.getString("correo_empresa"));
                    empresa.setPais(rs.getString("pais"));
                    empresa.setNit(rs.getString("nit"));
                    empresa.setTelefono(rs.getString("telefono_empresa"));
                    empresa.setSector(rs.getString("sector"));
                }

                HttpSession session = request.getSession(true);

                session.setAttribute("empresa", empresa);

                System.out.println("CONTROLADOR LOGIN");

                response.setStatus(200);
                response.sendRedirect("/SISTEMA1/empresa/crear-oferta");

            } catch (SQLException ex) {

                ex.printStackTrace();

            }
        }
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
