package Servlets;

import dao.AnnonceDao;
import dao.ClientDao;
import dao.TerrainDao;
import dao.impl.AnnonceDaoImp;
import dao.impl.ClientDaoImpl;
import dao.impl.TerrainDaoImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import models.Annonce;
import models.Client;
import models.Terrain;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Random;

@WebServlet(name = "ListingDetailsTraitement", value = "/listing-details-traitement")
public class ListingDetailsTraitement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher view ;
        AnnonceDaoImp adi = new AnnonceDaoImp();
        Annonce ann = adi.getAnnonce(62182);
        request.setAttribute("annonce",ann);
        view = request.getRequestDispatcher("listing-details.jsp");
        view.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}