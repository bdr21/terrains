package Servlets;

import com.google.gson.Gson;
import dao.impl.ClientDaoImpl;
import dao.impl.MessageDaoImpl;
import dao.impl.RatingDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Annonce;
import models.Client;
import models.Rating;

import java.io.IOException;

@WebServlet(name = "Rating", value = "/rating")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,     // 10 MB
        maxRequestSize =1024 * 1024 * 100   // 100 MB
)
public class RatingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Client cl = (Client) session.getAttribute("currentUser");
//        int id_client = 12345;
        int id_client = Integer.parseInt(request.getParameter("id_client"));
        ClientDaoImpl cdi = new ClientDaoImpl();
        RatingDaoImpl rdi = new RatingDaoImpl();
        double rating = rdi.getRatingCalc(id_client);
        response.setStatus(HttpServletResponse.SC_OK);
        response.getWriter().write("{ ratingAVG : " + rating + " }");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String comment = request.getParameter("comment");
        int rated = Integer.parseInt(request.getParameter("rated"));
        Client cl = (Client) session.getAttribute("currentUser");
        int rater = cl.getId();
        float rating = Float.parseFloat(request.getParameter("rating"));


        RatingDaoImpl rdi = new RatingDaoImpl();
        ClientDaoImpl cdi = new ClientDaoImpl();
        Rating ratingBean = new Rating(cdi.getClient(rater),cdi.getClient(rated),rating,comment);
        boolean status = rdi.addRating(ratingBean);
        if(status) System.out.println("rating successfully registered");
    }
}
