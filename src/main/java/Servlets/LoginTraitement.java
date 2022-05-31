package Servlets;

import dao.ClientDao;
import dao.impl.ClientDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Client;

import java.io.IOException;
import java.util.Objects;

@WebServlet(name = "Login", value = "/login-traitement")
public class LoginTraitement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pwd = request.getParameter("password");
        RequestDispatcher view ;
        ClientDao cdi = new ClientDaoImpl();
        Client currentUser = cdi.getClient(email,pwd);
        if (!Objects.isNull(currentUser)) {
            HttpSession session = request.getSession();
            //Cookie ckie = new Cookie("projets2cookie" , email);
            //response.addCookie(ckie);
            session.setAttribute("email",email);
            session.setAttribute("currentUser", currentUser);
            view = request.getRequestDispatcher("add-listing.jsp");
            view.forward(request, response);
        } else {
            System.out.print("err");
        }
    }
}
