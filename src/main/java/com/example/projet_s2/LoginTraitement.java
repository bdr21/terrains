package com.example.projet_s2;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

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
        if (email.equals("omar@s") && pwd.equals("fouad")) {
            HttpSession session = request.getSession();
            //Cookie ckie = new Cookie("projets2cookie" , email);
            //response.addCookie(ckie);
            session.setAttribute("email",email);
            view = request.getRequestDispatcher("home.jsp");
            view.forward(request, response);
        } else {
            System.out.print("err");
        }
    }
}
