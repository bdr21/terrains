package dao.impl;

import dao.RatingDao;
import db.Connect;
import models.Rating;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class RatingDaoImpl implements RatingDao {

    @Override
    public boolean addRating(Rating c) {
        Connection cnx= Connect.getConnection();
        Random rand = new Random();
        try {
            PreparedStatement newPST = cnx.prepareStatement("insert into ratings values (?,?,?)");
            newPST.setInt(1,new Random().nextInt(10000));
            newPST.setInt(2, c.getRater().getId());
            newPST.setInt(3, c.getRated().getId());
            newPST.setFloat(3, c.getRating());
            newPST.setInt(3, c.getRated().getId());

            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteRating(int idr) {
        Connection cnx=Connect.getConnection();
        try {
            PreparedStatement newPST =
                    cnx.prepareStatement("delete from ratings where id=?");
            newPST.setInt(1, idr);
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Rating> getRatings(int id_client) {
        Connection cnx= Connect.getConnection();
        ClientDaoImpl cdi = new ClientDaoImpl();
        List<Rating> lc = new ArrayList<Rating>();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from Ratings where id_client = " + id_client );
            while (rs.next()) {
                Rating cl = new Rating
                        (rs.getInt("id"), cdi.getClient(rs.getInt("rater")),
                                cdi.getClient(rs.getInt("rated")),
                                rs.getFloat("rating"), rs.getString("comment"));
                lc.add(cl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lc;
    }

    @Override
    public double getRatingCalc(int id_client) {
        Connection cnx=Connect.getConnection();
        double avg_rating = 0.0;
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("select avg(rating) as average from ratings where rated =" + id_client);
            while (rs.next()) {
                avg_rating = rs.getDouble(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return avg_rating;
    }

    public int getRatingCount(int id_client) {
        Connection cnx=Connect.getConnection();
        int rating_count = 0;
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("select count(rating) from ratings where rated =" + id_client);
            while (rs.next()) {
                rating_count = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rating_count;
    }
}
