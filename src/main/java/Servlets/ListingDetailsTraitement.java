package Servlets;

import dao.AnnonceDao;
import dao.ClientDao;
import dao.TerrainDao;
import dao.impl.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import models.Annonce;
import models.Client;
import models.Favori;
import models.Terrain;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Random;

@WebServlet(name = "ListingDetailsTraitement", value = "/listing-details-traitement")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,     // 10 MB
        maxRequestSize =1024 * 1024 * 100   // 100 MB
)
public class ListingDetailsTraitement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int annonceId = Integer.parseInt(request.getParameter("annonceId"));
        RequestDispatcher view ;
        AnnonceDaoImp adi = new AnnonceDaoImp();
        Annonce ann = adi.getAnnonce(annonceId);
        double poster_avg_rating = new RatingDaoImpl().getRatingCalc(ann.getPossesseur().getId());
        int poster_rating_count = new RatingDaoImpl().getRatingCount(ann.getPossesseur().getId());
        request.setAttribute("annonce",ann);
        request.setAttribute("poster_rating_avg",poster_avg_rating);
        request.setAttribute("poster_rating_count",poster_rating_count);
        view = request.getRequestDispatcher("listing-details.jsp");
        view.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int annonce = Integer.parseInt(request.getParameter("annonce"));
        int id_client = Integer.parseInt(request.getParameter("id_client"));
        Annonce ann = new Annonce();
        ann.setId(annonce);
        FavoriDaoImpl fdi = new FavoriDaoImpl();
        boolean status = fdi.addFavori(new Favori(id_client,ann));
        System.out.println("status :" + status);
        if(status)
            System.out.println("favori successfully registered");
    }
}