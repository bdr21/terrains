package Servlets;

//import com.google.gson.Gson;
import dao.impl.MessageDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Client;
import models.Message;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.stream.Collectors;

@WebServlet(name = "NewMessageTraitement", value = "/new-message-traitement")
public class NewMessageTraitement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String queryStrPre = request.getQueryString();
        String queryStr = URLDecoder.decode(queryStrPre.replace("+", "%2B"), "UTF-8")
                                    .replace("%2B", "+");
        String[] queryStrArr = queryStr.split("&");
        String text = queryStrArr[2];
        String annIdStr = queryStrArr[0];
        String posterIdStr = queryStrArr[1];
        int annonceId = Integer.parseInt(annIdStr);
        int annoncePosterId = Integer.parseInt(posterIdStr);

//        Client sender = (Client) session.getAttribute("currentUser");
        Client sender = new Client(12345,"bdr@s.co","123456");
        Client receiver = new Client(annoncePosterId,null,null);

        MessageDaoImpl mdi = new MessageDaoImpl();
        Message msg = new Message(sender,receiver,text,annonceId);
        boolean status = mdi.addMessage(msg);
        if(status) System.out.println("message successfully registered");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();

//        String requestData = request.getReader().lines().collect(Collectors.joining());
//        Gson gson = new Gson(); // Or use new GsonBuilder().create();
//        Message message = gson.fromJson(requestData, Message.class);
//        System.out.println(requestData);
//        System.out.println(message);

////        Client sender = (Client) session.getAttribute("currentUser");
//        Client sender = new Client(12345,"bdr@s.co","123456");
//        Client receiver = new Client(message.getId_annonce(),null,null);
//        MessageDaoImpl mdi = new MessageDaoImpl();
//        Message msg = new Message(sender,receiver,text,annonceId);
//        boolean status = mdi.addMessage(msg);
//        if(status) System.out.println("message successfully registered");
    }
}
