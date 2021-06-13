package com.controladores;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.modeloDAO.PostulanteDAO;
import com.modelos.Postulante;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author rodez
 */
@WebServlet(urlPatterns = {"/ControladorPostulante"})
public class ControladorPostulante extends HttpServlet {

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
        ArrayList<String> list = new ArrayList();
        Postulante postulante = new Postulante();
        String filePath = "C:\\imagenes";
        String fileName = "";
        String separator = System.getProperty("file.separator");
        try {

            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);

            //cv es la HttpServletRequest que recibimos del formulario.
            //Los items obtenidos serán cada uno de los campos del formulario,
            //tanto campos normales como ficheros subidos.
            List items = upload.parseRequest(request);

            //Se recorren todos los items, que son de tipo FileItem
            for (Object item : items) {
                FileItem uploaded = (FileItem) item;

                // Hay que comprobar si es un campo de formulario. Si no lo es, se guarda el fichero
                // subido donde nos interese
                if (!uploaded.isFormField()) {
                    // No es campo de formulario, guardamos el fichero en algún sitio
                    fileName = uploaded.getName();
                    File fichero = new File(filePath, fileName);
                    uploaded.write(fichero);
                } else {
                    // es un campo de formulario, podemos obtener clave y valor
                    list.add(uploaded.getString());
                }
            }

            postulante.setNombres(list.get(0));
            postulante.setApellidos(list.get(1));
            postulante.setGenero(list.get(2));
            postulante.setFechaNacimiento(null); // index 3
            postulante.setDocIdentidad(list.get(4));
            postulante.setPasaporte(Integer.parseInt(list.get(5)));
            postulante.setNit(list.get(6));
            postulante.setNup(list.get(7));
            postulante.setDireccion(list.get(8));
            postulante.setTelefono(Integer.parseInt(list.get(9)));
            postulante.setCorreo(list.get(10));
            postulante.setRs(list.get(11));
            postulante.setCv(filePath + separator + fileName);

            PostulanteDAO postulanteDAO = new PostulanteDAO();
            postulanteDAO.agregar(postulante);

            request.getRequestDispatcher("/login.jsp").forward(request, response);

        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
       
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
