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
        int recordsPerPage = 9;
        List<Annonce> list = null;
        List<Message> msgs = null;
        List<Favori> favoris = null;
        Client c =  (Client) session.getAttribute("currentUser");
        if(c == null)
        {
            RequestDispatcher view
                    = request.getRequestDispatcher("authentification.jsp");
            view.forward(request, response);
        }
        {

//        Client c = new Client(12345,"bdr@s.co","123456");
        if (request.getParameter("page") != null)
            page = Integer.parseInt(
                    request.getParameter("page"));
        AnnonceDaoImp dao = new AnnonceDaoImp();
        MessageDaoImpl mdi = new MessageDaoImpl();
        FavoriDaoImpl fdi = new FavoriDaoImpl();

            if(request.getParameter("ordre")!=null)
            {
                int ordre = Integer.parseInt(request.getParameter("ordre"));
                System.out.println(ordre);
                switch(ordre)
                {
                    case 1: list = dao.getAnnoncesFilter ((page - 1) * recordsPerPage,
                            recordsPerPage,Integer.MAX_VALUE, "","","RAND()","",c);
                        break;
                    case 2:  list = dao.getAnnoncesFilter ((page - 1) * recordsPerPage,
                            recordsPerPage, Integer.MAX_VALUE,"","","title","ASC",c);
                        break;
                    case 3:  list = dao.getAnnoncesFilter ((page - 1) * recordsPerPage,
                            recordsPerPage, Integer.MAX_VALUE,"","","title","DESC",c);
                        break;
                    case 4:  list = dao.getAnnoncesFilter ((page - 1) * recordsPerPage,
                            recordsPerPage, Integer.MAX_VALUE,"","","dateDePub","DESC",c);
                        break;
                    case 5: list = dao.getAnnoncesFilter ((page - 1) * recordsPerPage,
                            recordsPerPage, Integer.MAX_VALUE,"","","dateDePub","ASC",c);
                        break;
                    case 6: list = dao.getAnnoncesFilter ((page - 1) * recordsPerPage,
                            recordsPerPage, Integer.MAX_VALUE,"","","price","ASC",c);
                        break;
                    case 7: list = dao.getAnnoncesFilter ((page - 1) * recordsPerPage,
                            recordsPerPage, Integer.MAX_VALUE,"","","price","DESC",c);
                        break;
                    default:
                        System.out.println("rien n'est selectionné");
                }
                request.setAttribute("ordre", request.getParameter("ordre"));
            }
            else
            {
                list = dao.getAnnoncesFilter( (page - 1) * recordsPerPage,
                        recordsPerPage,Integer.MAX_VALUE , "","","RAND()","",c);
                request.setAttribute("ordre", 1);

            }
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
        request.setAttribute("noOfRecords", noOfRecords);
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
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

}
