package Servlets;

import dao.ClientDao;
import models.Client;
import dao.impl.ClientDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "UserCrud", value = "/user-crud.servlet")
public class UserCrud extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher view ;
        ClientDao cdi = new ClientDaoImpl();
        ArrayList<Client> listc = (ArrayList<Client>) cdi.getClients();
        request.setAttribute("listedescl",listc);
        view = request.getRequestDispatcher("user-crud.jsp");
        view.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("_method");
        if (method.matches("PUT|DELETE")) {
            if (method.equals("PUT")) doPut(request,response);
            if (method.equals("DELETE")) doDelete(request,response);
            return;
        }
        ClientDao cdi = new ClientDaoImpl();
        Client c = new Client(request.getParameter("lname"),request.getParameter("fname"),
                request.getParameter("uaddress"),request.getParameter("uemail"),
                request.getParameter("upass"));
        boolean status= cdi.addClient(c);
        if(status)
            System.out.println("User successfully registered");
        doGet(request,response);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ClientDaoImpl cdi = new ClientDaoImpl();
        int uid = Integer.parseInt(request.getParameter("uid"));
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        Client c = new Client(uid,lname,fname,null,null,null);
        boolean status= cdi.updateClient(c);
        if(status)
            System.out.println("User successfully updated");
        doGet(request,response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ClientDaoImpl cdi = new ClientDaoImpl();
        String uids = request.getParameter("uids");
        System.out.println(uids);
        boolean status= cdi.deleteClients(uids);
        if(status)
            System.out.println("Users successfully deleted");
        doGet(request,response);
//        ClientDaoImpl cdi = new ClientDaoImpl();
//        int uid = Integer.parseInt(request.getParameter("uid"));
//        boolean status= cdi.deleteClient(uid);
//        if(status)
//            System.out.println("User successfully deleted");
//        doGet(request,response);
    }
}

