/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modeloDAO;

import com.modelos.Conexion;
import com.modelos.Postulante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author rodez
 */
public class PostulanteDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;
    
    
    public int agregar(Postulante p){
        Conexion conexion = new Conexion();
        String sql = "insert into postulante values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try{
            con = conexion.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, 1);
            ps.setString(2, p.getNombres());
            ps.setString(3, p.getApellidos());
            ps.setString(4, p.getGenero());
            ps.setDate(5, null);
            ps.setString(6, p.getDocIdentidad());
            ps.setInt(7, p.getPasaporte());
            ps.setString(8, p.getNit());
            ps.setString(9, p.getNup());
            ps.setString(10, p.getDireccion());
            ps.setInt(11, p.getTelefono());
            ps.setString(12, p.getCorreo());
            ps.setString(13, p.getRs());
            ps.setString(14, p.getCv());
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return r;
    }
}
