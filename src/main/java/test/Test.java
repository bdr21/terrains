package test;
import DAO.ClientDao;
import DaoImpl.ClientDaoImpl;
import models.Client;

import java.util.ArrayList;

public class Test {

    public static void main(String args[])
    {
        ClientDao cdi = new ClientDaoImpl();
//        ArrayList<Client> listc = (ArrayList<Client>) cdi.getClients();
//        for(Client c:listc) {
//            System.out.println(c);
//        }
        Client c = new Client(5,"koko","15667");
        cdi.updateClient(c);
    }
}
