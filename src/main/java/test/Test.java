package test;

import dao.ClientDao;
import dao.impl.ClientDaoImpl;
import models.Client;

import java.io.File;
import java.util.ArrayList;

public class Test {

    public static void main(String args[])
    {
        ClientDao cdi = new ClientDaoImpl();
        ArrayList<Client> listc = (ArrayList<Client>) cdi.getClients();
        for(Client c:listc) {
            System.out.println(c);
        }
        System.out.println(new File("").getAbsolutePath());
        String str = "delete";
        System.out.println(str.matches("put|del"));
//        Client c = new Client(5,"koko","15667");
//        cdi.updateClient(c);
    }
}
