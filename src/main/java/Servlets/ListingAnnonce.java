package Servlets;



import java.io.IOException;
import java.util.List;

import dao.impl.AnnonceDaoImp;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Annonce;

@WebServlet("/AnnonceList")
public class ListingAnnonce extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ListingAnnonce() { super(); }

    @Override
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException
    {
        int page = 1;
        int recordsPerPage = 5;
        if (request.getParameter("page") != null)
            page = Integer.parseInt(
                    request.getParameter("page"));
        AnnonceDaoImp dao = new AnnonceDaoImp();
        List<Annonce> list = dao.getAnnoncesRestrict(
                (page - 1) * recordsPerPage,
                recordsPerPage);
        int noOfRecords = dao.getNoOfRecords();
        int noOfPages = (int)Math.ceil(noOfRecords * 1.0
                / recordsPerPage);
        request.setAttribute("annonceList", list);
        request.setAttribute("noOfPages", noOfPages);
        request.setAttribute("currentPage", page);
        RequestDispatcher view
                = request.getRequestDispatcher("display_List_Annonce2.jsp");
        view.forward(request, response);
    }
}

