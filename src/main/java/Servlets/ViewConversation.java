package Servlets;

import com.google.gson.Gson;
import dao.impl.MessageDaoImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Client;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;


@WebServlet(name = "viewConversation", value = "/viewConversation")
public class ViewConversation extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Client c =  (Client) session.getAttribute("currentUser");
        if(c == null)
        {
            RequestDispatcher view
                    = request.getRequestDispatcher("authentification.jsp");
            view.forward(request, response);
        }
        else
        {
        if (request.getParameter("avecQui") != null)
        {
            int idAvecQui = Integer.parseInt(
                    request.getParameter("avecQui"));
            MessageDaoImpl mdi = new MessageDaoImpl();
            List msgs = mdi.getMessagesRestrictSenderReceiver(idAvecQui,c.getId());
            request.setAttribute("messages",msgs);
            System.out.println(msgs);
            Gson gson = new Gson();
            PrintWriter out = response.getWriter();
            response.setContentType("application/json");
            out.println(gson.toJson(msgs));

        }
        }
    }
}


