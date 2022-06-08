package Servlets;

import dao.impl.AnnonceDaoImp;
import dao.impl.ClientDaoImpl;
import dao.impl.RatingDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Annonce;
import models.Client;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AuthorProfileTraitement", value = "/author-profile-traitement")
public class AuthorProfileTraitement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int id_client = Integer.parseInt(request.getParameter("id_client"));
        ClientDaoImpl cdi = new ClientDaoImpl();
        Client cl = cdi.getClient(id_client);

        AnnonceDaoImp adi = new AnnonceDaoImp();
        List<Annonce> list = adi.getAnnoncesRestrictPerson(id_client);
        int noOfRecords = adi.getNoOfRecords();

        double poster_avg_rating = new RatingDaoImpl().getRatingCalc(id_client);
        int poster_rating_count = new RatingDaoImpl().getRatingCount(id_client);

        request.setAttribute("poster_rating_avg",poster_avg_rating);
        request.setAttribute("poster_rating_count",poster_rating_count);
        request.setAttribute("author",cl);
        request.setAttribute("author_annonces",list);
        request.setAttribute("noOfRecords",noOfRecords);
        RequestDispatcher view = request.getRequestDispatcher("author-profile.jsp");
        view.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
