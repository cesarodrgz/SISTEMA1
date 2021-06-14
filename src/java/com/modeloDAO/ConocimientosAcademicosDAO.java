/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modeloDAO;

import com.modelos.Conexion;
import com.modelos.ConocimientosAcademicos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author rodez
 */
public class ConocimientosAcademicosDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;
    
    
    public int agregar(ConocimientosAcademicos c){
        Conexion conexion = new Conexion();
        String sql = "insert into conocimientos_academicos values(?,?,?,?,?,?)";
        try{
            con = conexion.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, 1);
            ps.setString(2, c.getNombreInstitucion());
            ps.setDate(3, null);
            ps.setDate(4, null);
            ps.setString(5, c.getNombreTitulo());
            ps.setString(6, c.getTipo());
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return r;
    }
}
