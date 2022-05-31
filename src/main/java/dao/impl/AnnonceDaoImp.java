package dao.impl;

import dao.AnnonceDao;
import dao.ClientDao;
import dao.TerrainDao;
import db.Connect;
import models.Annonce;
import models.Terrain;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class AnnonceDaoImp implements AnnonceDao {

    @Override
    public boolean addAnnonce(Annonce c) {
        Connection cnx= Connect.getConnection();
        Random rand = new Random();
        try {
            PreparedStatement newPST = cnx.prepareStatement("insert into annonce values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            newPST.setInt(1, rand.nextInt(100000));
            newPST.setString(2, c.getTitle());
            newPST.setTimestamp(3, c.getDateDePub());
            newPST.setInt(4, c.getPossesseur().getId());
            newPST.setString(5, c.getDescription());
            newPST.setString(6, c.getTags());
            newPST.setString(7, c.getVideo_url());
            newPST.setString(8, c.getThumbnail());
            newPST.setString(9, c.getGallerie());
            newPST.setInt(10, c.getPrice());
            newPST.setString(11, c.getTelephone_number());
            newPST.setString(12, c.getEmail());
            newPST.setString(13, c.getFacebook());
            newPST.setString(14, c.getInstagram());
            newPST.setString(15, c.getTwitter());
            newPST.setInt(16, c.getTerrain().getId());
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateAnnonce(Annonce c) {
//        Connection cnx=Connect.getConnection();
//        try {
//            PreparedStatement newPST =
//                    cnx.prepareStatement("update annonce set type =? , id_annonceur=?,dateDePub=? where id=?");
//            newPST.setString(2, c.getType());
//            newPST.setTimestamp(3, new java.sql.Timestamp(c.getDateDePub()));
//            newPST.setInt(4, c.getId());
//            int success = newPST.executeUpdate();
//            if (success == 1) return true;
//            if (success == 0) return false;
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
        return false;
    }

    @Override
    public boolean deleteAnnonce(int idc) {
        Connection cnx=Connect.getConnection();
        try {
            PreparedStatement newPST =
                    cnx.prepareStatement("delete from annonce where id=?");
            newPST.setInt(1, idc);
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteAnnonces(String ids) {
        Connection cnx=Connect.getConnection();
        try {
            String query = "delete from annonce where id in (" + ids +")";
            System.out.println(query);
            PreparedStatement newPST = cnx.prepareStatement(query);
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Annonce getAnnonce(int idc) {
        Connection cnx=Connect.getConnection();
        Annonce cl = null;
        ClientDao cdi = new ClientDaoImpl();
        TerrainDao tdi = new TerrainDaoImpl();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from annonce where id =" + idc);
            while (rs.next()) {
                cl = new Annonce(rs.getInt("id"), cdi.getClient(rs.getInt("id_annonceur")) ,
                        rs.getString("title") , rs.getString("description"), rs.getString("tags"),
                        rs.getString("video_url"), rs.getString("thumbnail") , rs.getString("gallerie"),
                        rs.getInt("price"), rs.getTimestamp("dateDePub"),
                        rs.getString("telephone_number"), rs.getString("email"),
                        rs.getString("twitter"), rs.getString("facebook"), rs.getString("instagram"),
                        tdi.getTerrain(rs.getInt("id_terrain")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cl;
    }

     @Override
    public boolean deleteAnnonce(String ids) {
        Connection cnx=Connect.getConnection();
        try {
            String query = "delete from annonce where id in (" + ids +")";
            System.out.println(query);
            PreparedStatement newPST = cnx.prepareStatement(query);
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }



    @Override
    public List<Annonce> getAnnonces() {
        Connection cnx= Connect.getConnection();
        List<Annonce> lc = new ArrayList<Annonce>();
        Annonce cl = null;
        ClientDao cdi = new ClientDaoImpl();
        TerrainDao tdi = new TerrainDaoImpl();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from annonce");
            while (rs.next()) {
                cl = new Annonce(rs.getInt("id"), cdi.getClient(rs.getInt("id_annonceur")) ,
                        rs.getString("title") , rs.getString("description"), rs.getString("tags"),
                        rs.getString("video_url"), rs.getString("thumbnail") , rs.getString("gallerie"),
                        rs.getInt("price"), rs.getTimestamp("dateDePub"),
                        rs.getString("telephone_number"), rs.getString("email"),
                        rs.getString("twitter"), rs.getString("facebook"), rs.getString("instagram"),
                        tdi.getTerrain(rs.getInt("id_terrain")));
                lc.add(cl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lc;
    }
}
