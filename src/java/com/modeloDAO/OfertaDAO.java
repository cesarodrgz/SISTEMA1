/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modeloDAO;

import com.modelos.Conexion;
import com.modelos.Oferta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author rodez
 */
public class OfertaDAO {
     Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;
    
    
    public int agregar(Oferta o){
        Conexion conexion = new Conexion();
        String sql = "call registrarOferta()";
        try{
            con = conexion.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return r;
    }
}
