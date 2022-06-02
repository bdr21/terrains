package Servlets;

import dao.AnnonceDao;
import dao.ClientDao;
import dao.impl.AnnonceDaoImp;
import dao.impl.ClientDaoImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Annonce;
import models.Client;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "my-profile", value = "/myProfile")
public class MyProfile extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int page = 1;
        int recordsPerPage = 5;
        List<Annonce> list = null;
        Client c = (Client)request.getSession().getAttribute("currentUser");
        if (request.getParameter("page") != null)
            page = Integer.parseInt(
                    request.getParameter("page"));
        AnnonceDaoImp dao = new AnnonceDaoImp();
        list = dao.getAnnoncesRestrictPerson( (page - 1) * recordsPerPage,
                recordsPerPage, c.getId());
        System.out.println(list.size());
        int noOfRecords = dao.getNoOfRecords();
        int noOfPages = (int)Math.ceil(noOfRecords * 1.0
                / recordsPerPage);

        request.setAttribute("annonceList", list);
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
