package DaoImpl;

import DAO.TerrainDao;
import DAO.TerrainDao;
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
                        rs.getString("region"), rs.getString("ville"));
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
            PreparedStatement newPST = cnx.prepareStatement("insert into terrains values (?,?,?,?,?,?)");
            newPST.setInt(1, rand.nextInt(100000));
            newPST.setString(2, c.getNom());
            newPST.setString(3, c.getPrenom());
            newPST.setString(4, c.getEmail());
            newPST.setString(5, c.getPassword());
            newPST.setString(6, c.getAdresse());
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
                    cnx.prepareStatement("update terrains set nom=? , prenom=? where id=?");
            newPST.setString(1, c.getNom());
            newPST.setString(2, c.getPrenom());
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
            ResultSet rs = newST.executeQuery("Select * from Terrains where id =" + idc);
            while (rs.next()) {
                cl = new Terrain
                        (rs.getInt("id"),
                                rs.getString("nom"), rs.getString("prenom"), rs.getString("adresse"),
                                rs.getString("email"), rs.getString("password"));
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
                    + " email = '" + email + "' and password = '" + password + "'";
            ResultSet rs = newST.executeQuery(sql);
            while (rs.next()) {
                cl = new Terrain
                        (rs.getInt("id"),
                                rs.getString("nom"), rs.getString("prenom"), rs.getString("adresse"),
                                rs.getString("email"), rs.getString("password"));
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