package DAO;

import models.Client;

import java.util.List;

public interface ClientDao {
    boolean addClient(Client c);
    boolean updateClient(Client c);
    boolean deleteClient(int idc);
    Client getClient(int idc);
    Client getClient(String email , String password);
    List<Client> getClients();
}