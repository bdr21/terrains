
package dao.impl;

import dao.ClientDao;
import dao.MessageDao;
import db.Connect;
import models.Message;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class MessageDaoImpl implements MessageDao {

    @Override
    public List<Message> getMessages() {
        Connection cnx= Connect.getConnection();
        ClientDaoImpl cdi = new ClientDaoImpl();
        AnnonceDaoImp adi = new AnnonceDaoImp();
        List<Message> lc = new ArrayList<Message>();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from Messages");
            while (rs.next()) {
                Message cl = new Message
                        (cdi.getClient(rs.getInt("id_sender")), cdi.getClient(rs.getInt("id_receiver")),
                        rs.getTimestamp("createdAt"), rs.getString("text"),
                        adi.getAnnonce(rs.getInt("id_annonce")));
                lc.add(cl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lc;
    }

    public List<Message> getMessagesRestrictClient(int id_client) {
        Connection cnx= Connect.getConnection();
        ClientDaoImpl cdi = new ClientDaoImpl();
        AnnonceDaoImp adi = new AnnonceDaoImp();
        List<Message> lc = new ArrayList<Message>();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from Messages where id_sender = " + id_client +
                    " or id_receiver = "+ id_client+" order by createdAt");
            while (rs.next()) {
                Message cl = new Message
                        (cdi.getClient(rs.getInt("id_sender")), cdi.getClient(rs.getInt("id_receiver")),
                                rs.getTimestamp("createdAt"), rs.getString("text"),
                                adi.getAnnonce(rs.getInt("id_annonce")));
                lc.add(cl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lc;
    }

    public List<Message> getMessagesRestrictSenderReceiver(int id1,int id2) {
        Connection cnx= Connect.getConnection();
        ClientDaoImpl cdi = new ClientDaoImpl();
        AnnonceDaoImp adi = new AnnonceDaoImp();
        List<Message> lc = new ArrayList<Message>();
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from Messages where id_sender = " + id1 +
                    " AND id_receiver = "+ id2+" or id_sender ="+ id2 +" AND id_receiver = "+ id1 +" order by  createdAt");
            while (rs.next()) {
                Message cl = new Message
                        (cdi.getClient(rs.getInt("id_sender")), cdi.getClient(rs.getInt("id_receiver")),
                                rs.getTimestamp("createdAt"), rs.getString("text"),
                                adi.getAnnonce(rs.getInt("id_annonce")));
                lc.add(cl);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lc;
    }

    @Override
    public boolean addMessage(Message c) {
        Message mes = c;
        Connection cnx=Connect.getConnection();
        Random rand = new Random();
        try {
            PreparedStatement newPST = cnx.prepareStatement("insert into messages values (?,?,?,?,?,?)");
            newPST.setInt(1,new Random().nextInt(10000));
            newPST.setInt(2, c.getSender().getId());
            newPST.setInt(3, c.getReceiver().getId());
            newPST.setInt(4, c.getAnnonce().getId());
            newPST.setTimestamp(5, c.getCreatedAt());
            newPST.setString(6, c.getText());

            int success = newPST.executeUpdate();
            if (success == 1) return true;
            if (success == 0) return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Message getMessage(int idc) {
        Connection cnx=Connect.getConnection();
        ClientDaoImpl cdi = new ClientDaoImpl();
        AnnonceDaoImp adi = new AnnonceDaoImp();
        Message cl = null;
        try {
            Statement newST = cnx.createStatement();
            ResultSet rs = newST.executeQuery("Select * from messages where id =" + idc);
            while (rs.next()) {
                cl = new Message
                        (cdi.getClient(rs.getInt("id_sender")), cdi.getClient(rs.getInt("id_receiver")),
                                rs.getTimestamp("createdAt"), rs.getString("text"),
                                adi.getAnnonce(rs.getInt("id_annonce")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cl;
    }

    @Override
    public boolean deleteMessage(int idc) {
        Connection cnx=Connect.getConnection();
        try {
            PreparedStatement newPST =
                    cnx.prepareStatement("delete from messages where id=?");
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