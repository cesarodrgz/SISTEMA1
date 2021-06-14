/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modeloDAO;

import com.modelos.Conexion;
import com.modelos.Congreso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author rodez
 */
public class CongresosDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;
    
    
    public int agregar(Congreso c){
        Conexion conexion = new Conexion();
        String sql = "insert into congresos values(?,?,?,?,?,?)";
        try{
            con = conexion.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, 1);
            ps.setString(2, c.getNombre());
            ps.setString(3, c.getLugar());
            ps.setString(4, c.getPais());
            ps.setString(5, c.getAnfitrion());
            ps.setDate(6, null);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return r;
    }
}
