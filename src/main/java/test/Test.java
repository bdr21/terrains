package test;

import dao.AnnonceDao;
import dao.ClientDao;
import dao.impl.AnnonceDaoImp;
import dao.impl.ClientDaoImpl;
import models.Annonce;
import models.Client;

import java.io.File;
import java.util.ArrayList;

public class Test {

    public static void main(String args[])
    {
        AnnonceDao adi = new AnnonceDaoImp();
        System.out.println(adi.addAnnonce(new Annonce(1,new Client(6380),"location",9368239)));

    }
}
