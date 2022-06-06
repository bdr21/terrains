package Servlets;

import com.google.gson.Gson;
import dao.impl.ClientDaoImpl;
import dao.impl.RatingDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Client;

import java.io.IOException;

@WebServlet(name = "Rating", value = "/rating")
public class Rating extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Client cl = (Client) session.getAttribute("currentUser");
        int id_client = 12345;
//        int id_client = Integer.parseInt(request.getParameter("id_client"));
        ClientDaoImpl cdi = new ClientDaoImpl();
        RatingDaoImpl rdi = new RatingDaoImpl();
        double rating = rdi.getRatingCalc(id_client);
        response.setStatus(HttpServletResponse.SC_OK);
        response.getWriter().write("{ ratingAVG : " + rating + " }");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
