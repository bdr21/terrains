package dao.impl;

import dao.ClientDao;
import db.Connect;
import models.Client;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class ClientDaoImpl implements ClientDao {

    @Override
    public List<Client> getClients() {
        Connection cnx= Connect.getConnection();
        List<Client> lc = new ArrayList<Client>();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from Clients");
            while (rs.next()) {
                Client cl = new Client
                        (rs.getInt("id"),
                                rs.getString("nom"), rs.getString("prenom"), rs.getString("adresse"),
                                rs.getString("email"), rs.getString("password"));
                lc.add(cl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lc;
    }

    @Override
    public boolean addClient(Client c) {
        Connection cnx=Connect.getConnection();
        Random rand = new Random();
        try {
            PreparedStatement newPST = cnx.prepareStatement("insert into clients values (?,?,?,?,?,?)");
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
    public boolean updateClient(Client c) {
        Connection cnx=Connect.getConnection();
        try {
            PreparedStatement newPST =
                    cnx.prepareStatement("update clients set nom=? , prenom=? where id=? or email=?");
            newPST.setString(1, c.getNom());
            newPST.setString(2, c.getPrenom());
            newPST.setInt(3, c.getId());
            newPST.setString(4, c.getEmail());
            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Client getClient(int idc) {
        Connection cnx=Connect.getConnection();
        Client cl = null;
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from Clients where id =" + idc);
            while (rs.next()) {
                cl = new Client
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
    public Client getClient(String email) {
        Connection cnx=Connect.getConnection();
        Client cl = null;
        try {
            PreparedStatement newST = cnx.prepareStatement("Select * from Clients where email = ?");
            newST.setString(1,email);
            ResultSet rs = newST.executeQuery();
            while (rs.next()) {
                cl = new Client
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
    public Client getClient(String email , String password) {
        Connection cnx=Connect.getConnection();
        Client cl = null;
        try {
            Statement newST = cnx.createStatement();
            String sql = "Select * from Clients where"
                    + " email = '" + email + "' and password = '" + password + "'";
            ResultSet rs = newST.executeQuery(sql);
            while (rs.next()) {
                cl = new Client
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
    public boolean deleteClient(int idc) {
        Connection cnx=Connect.getConnection();
        try {
            PreparedStatement newPST =
                    cnx.prepareStatement("delete from clients where id=?");
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
    public boolean deleteClients(String ids) {
        Connection cnx=Connect.getConnection();
        try {
            String query = "delete from clients where id in (" + ids +")";
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
}