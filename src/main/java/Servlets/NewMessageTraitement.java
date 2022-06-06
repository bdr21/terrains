package Servlets;

//import com.google.gson.Gson;
import com.google.gson.Gson;
import dao.impl.MessageDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Annonce;
import models.Client;
import models.Message;
import models.MessageCustom;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.stream.Collectors;

@WebServlet(name = "NewMessageTraitement", value = "/new-message-traitement")
@MultipartConfig()
public class NewMessageTraitement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String text = request.getParameter("text");
        int annonceId = Integer.parseInt(request.getParameter("annonceId"));
        int receiverId = Integer.parseInt(request.getParameter("receiverId"));

        // (Client)request.getSession().getAttribute("currentUser");
        Client sender = new Client(12345,"bdr@s.co","123456");
        Client receiver = new Client(receiverId,null,null);

        MessageDaoImpl mdi = new MessageDaoImpl();
        Annonce annonce = new Annonce();
        annonce.setId(annonceId);
        Message msg = new Message(sender,receiver,text,annonce);
        
        boolean status = mdi.addMessage(msg);
        if(status) System.out.println("message successfully registered");
    }
}
