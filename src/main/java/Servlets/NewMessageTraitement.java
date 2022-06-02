package Servlets;

import com.google.gson.Gson;
import dao.MessageDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Client;
import models.Message;

import java.io.IOException;
import java.util.stream.Collectors;

@WebServlet(name = "NewMessageTraitement", value = "/new-message-traitement")
public class NewMessageTraitement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String requestData = request.getReader().lines().collect(Collectors.joining());
        Gson gson = new Gson(); // Or use new GsonBuilder().create();
        Message message = gson.fromJson(requestData, Message.class);
        System.out.println(requestData);
        System.out.println(message);
        //MessageDao dao = new MessageDao();
        //dao.setMessage(message);
    }
}
