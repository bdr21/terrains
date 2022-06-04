package dao.impl;

import dao.FavoriDao;
import db.Connect;
import models.Favori;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class FavoriDaoImpl implements FavoriDao {
    @Override
    public boolean addFavori(Favori c) {
        Favori mes = c;
        Connection cnx=Connect.getConnection();
        Random rand = new Random();
        try {
            PreparedStatement newPST = cnx.prepareStatement("insert into favoris values (?,?,?)");
            newPST.setInt(1,new Random().nextInt(10000));
            newPST.setInt(2, c.getId_client());
            newPST.setInt(3, c.getAnnonce().getId());

            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteFavori(int idf) {
        Connection cnx=Connect.getConnection();
        try {
            PreparedStatement newPST =
                    cnx.prepareStatement("delete from favoris where id=?");
            newPST.setInt(1, idf);
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Favori> getFavoris() {
        Connection cnx= Connect.getConnection();
        AnnonceDaoImp adi = new AnnonceDaoImp();
        List<Favori> lc = new ArrayList<Favori>();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from Favoris");
            while (rs.next()) {
                Favori cl = new Favori
                        (rs.getInt("id"), rs.getInt("id_client"), adi.getAnnonce(rs.getInt("id_annonce")));
                lc.add(cl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lc;
    }

    @Override
    public List<Favori> getFavoris(int id_client) {
        Connection cnx= Connect.getConnection();
        AnnonceDaoImp adi = new AnnonceDaoImp();
        List<Favori> lc = new ArrayList<Favori>();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from Favoris where id_client = " + id_client );
            while (rs.next()) {
                Favori cl = new Favori
                        (rs.getInt("id"), rs.getInt("id_client"), adi.getAnnonce(rs.getInt("id_annonce")));
                lc.add(cl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lc;
    }
}
