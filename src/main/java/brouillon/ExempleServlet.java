package brouillon;

import DAO.ClientDao;
import models.Client;
import DaoImpl.ClientDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ExempleServlet", value = "/exemple")
public class ExempleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher view ;
        ClientDao cdi = new ClientDaoImpl();
        ArrayList<Client> listc = (ArrayList<Client>) cdi.getClients();
        request.setAttribute("listdescl",listc);
        view = request.getRequestDispatcher("/brouillon/exemple1.jsp");
        view.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
