package Servlets;

import dao.ClientDao;
import dao.impl.ClientDaoImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Client;
import org.springframework.security.crypto.bcrypt.BCrypt;

import java.io.IOException;

@WebServlet(name = "Update-My-Info", value = "/UpdateMyInfo")
public class UpdateMyInfo extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {


    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String pwd = BCrypt.hashpw( request.getParameter("password"), BCrypt.gensalt()); ;
        String adresse = request.getParameter("adresse");
        Client c = new Client(nom,prenom,adresse,email,pwd);
        ClientDao cdi = new ClientDaoImpl();
        System.out.println(cdi.updateClient(c));
        request.setAttribute("currentUser",c);
        RequestDispatcher view
                = request.getRequestDispatcher("myProfile.jsp");
        view.forward(request, response);
    }
}
