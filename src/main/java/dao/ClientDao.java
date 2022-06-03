package dao;

import models.Client;

import java.util.List;

public interface ClientDao {
    boolean addClient(Client c);
    boolean updateClient(Client c);
    boolean deleteClient(int idc);
    boolean deleteClients(String ids);
    Client getClient(int idc);
    Client getClient(String email);
    Client getClient(String email , String password);
    List<Client> getClients();
}