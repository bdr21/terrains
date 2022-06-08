package Servlets;

import dao.FavoriDao;
import dao.impl.FavoriDaoImpl;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Client;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet(name = "supprimerunfavori", value = "/delete-favori")
public class DeleteFavori extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id_favori = Integer.parseInt(request.getParameter("id-favori"));
        HttpSession session = request.getSession();
        Client c =  (Client) session.getAttribute("currentUser");
        FavoriDao fdi = new FavoriDaoImpl();
        if(fdi.getFavori(id_favori).getId()== c.getId());
         fdi.deleteFavori(Integer.parseInt(request.getParameter("id-favori")));
    }
}
