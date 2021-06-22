/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controladores;

import com.modelos.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rodez
 */
public class ControladorOferta extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        String accion = request.getParameter("accion");
        try {
            switch (accion) {
                case "aplicar":
                    aplicar(request);
                    response.sendRedirect("/SISTEMA1/postulante/mis-aplicaciones");
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("404.jsp").forward(request, response);
        }
    }

    private void aplicar(HttpServletRequest request) throws SQLException {
        HttpSession session = request.getSession(false);
        Connection con = new Conexion().getConnection();
        CallableStatement cs = con.prepareCall("{ call aplicar(?,?)}");
        cs.setInt(1, (Integer) session.getAttribute("USER_ID"));
        cs.setInt(2, Integer.parseInt(request.getParameter("idOferta")));
        cs.execute();
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
