package Servlets;

import dao.AnnonceDao;
import dao.ClientDao;
import dao.impl.AnnonceDaoImp;
import dao.impl.ClientDaoImpl;
import dao.impl.FavoriDaoImpl;
import dao.impl.MessageDaoImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Annonce;
import models.Client;
import models.Favori;
import models.Message;

import java.io.IOException;
import java.util.List;

@WebServlet("/myprofile")
public class MyProfile extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        int page = 1;
        int recordsPerPage = 5;
        List<Annonce> list = null;
        List<Message> msgs = null;
        List<Favori> favoris = null;

        Client c = (Client) session.getAttribute("currentUser");
//        Client c = new Client(12345,"bdr@s.co","123456");
        if (request.getParameter("page") != null)
            page = Integer.parseInt(
                    request.getParameter("page"));
        AnnonceDaoImp dao = new AnnonceDaoImp();
        MessageDaoImpl mdi = new MessageDaoImpl();
        FavoriDaoImpl fdi = new FavoriDaoImpl();
        list = dao.getAnnoncesRestrictPerson( (page - 1) * recordsPerPage,
                recordsPerPage, c.getId());
        msgs = mdi.getMessagesRestrictClient(c.getId());
        favoris = fdi.getFavoris(c.getId());

        System.out.println("size" + list.size());
        System.out.println("page : " + page);

        int noOfRecords = dao.getNoOfRecords();
        int noOfPages = (int)Math.ceil(noOfRecords * 1.0
                / recordsPerPage);
        System.out.println("nb page : " + noOfPages);
        System.out.println("nb record : " + noOfRecords);
        System.out.println("les messages : \n" + msgs);

        // session
        request.setAttribute("currentUser",c);
        request.setAttribute("messages",msgs);
        request.setAttribute("favoris",favoris);
        request.setAttribute("nbrAnnonces", noOfRecords);
        request.setAttribute("annonceListPerson", list);
        request.setAttribute("noOfPages", noOfPages);
        request.setAttribute("currentPage", page);
        System.out.println(list);

        RequestDispatcher view
                = request.getRequestDispatcher("myProfile.jsp");
        view.forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

}
