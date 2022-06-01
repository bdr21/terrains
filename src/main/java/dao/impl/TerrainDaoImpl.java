package dao.impl;

import dao.TerrainDao;
import db.Connect;
import models.Terrain;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class TerrainDaoImpl implements TerrainDao {

    @Override
    public List<Terrain> getTerrains() {
        Connection cnx= Connect.getConnection();
        List<Terrain> lc = new ArrayList<Terrain>();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from Terrains");
            while (rs.next()) {
                Terrain cl = new Terrain
                        (rs.getInt("id"),
                        rs.getDouble("latitude"), rs.getDouble("longitude"),
                        rs.getString("region"), rs.getString("ville") ,rs.getString("adresse"));
                lc.add(cl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lc;
    }

    @Override
    public boolean addTerrain(Terrain c) {
        Connection cnx=Connect.getConnection();
        Random rand = new Random();
        try {
            PreparedStatement newPST = cnx.prepareStatement("insert into terrains values (?,?,?,?,?)");
            newPST.setInt(1, c.getId());
            newPST.setDouble(2, c.getLatitude());
            newPST.setDouble(3, c.getLongitude());
            newPST.setString(4, c.getRegion());
            newPST.setString(5, c.getVille());
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateTerrain(Terrain c) {
        Connection cnx=Connect.getConnection();
        try {
            PreparedStatement newPST =
                    cnx.prepareStatement("update terrains set  latitude=? , longitude=? , region= ? ,ville = ? where id=?");
            newPST.setDouble(2, c.getLatitude());
            newPST.setDouble(3, c.getLongitude());
            newPST.setString(4, c.getRegion());
            newPST.setString(5, c.getVille());
            newPST.setInt(3, c.getId());
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Terrain getTerrain(int idc) {
        Connection cnx=Connect.getConnection();
        Terrain cl = null;
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from terrains where id =" + idc);
            while (rs.next()) {
                cl = new Terrain
                        (rs.getInt("id"),
                                rs.getDouble("latitude"), rs.getDouble("longitude"), rs.getString("region"),
                                rs.getString("ville"), rs.getString("ville")+","+rs.getString("region"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cl;
    }

    @Override
    public Terrain getTerrain(double lat , double lon) {
        Connection cnx=Connect.getConnection();
        Terrain cl = null;
        try {
            Statement newST = cnx.createStatement();
            String sql = "Select * from Terrains where"
                    + " latitude = '" + lat + "' and longitude = '" + lon + "'";
            ResultSet rs = newST.executeQuery(sql);
            while (rs.next()) {
                cl = new Terrain
                        (rs.getInt("id"),
                                rs.getDouble("latitude"), rs.getDouble("longitude"), rs.getString("region"),
                                rs.getString("ville") , rs.getString("adresse"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cl;
    }

    @Override
    public boolean deleteTerrain(int idc) {
        Connection cnx=Connect.getConnection();
        try {
            PreparedStatement newPST =
                    cnx.prepareStatement("delete from terrains where id=?");
            newPST.setInt(1, idc);
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


}