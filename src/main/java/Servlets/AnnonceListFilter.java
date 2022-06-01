package Servlets;

import dao.impl.AnnonceDaoImp;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Annonce;

import java.io.IOException;
import java.util.List;
@WebServlet("/AnnonceFilter")
public class AnnonceListFilter extends HttpServlet {
    public AnnonceListFilter() { super(); }
    @Override
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException
    {
        int page = 1;
        int recordsPerPage = 5;
        List<Annonce> list = null;
        if (request.getParameter("page") != null)
            page = Integer.parseInt(
                    request.getParameter("page"));
        AnnonceDaoImp dao = new AnnonceDaoImp();
        list = dao.getAnnoncesRestrict( (page - 1) * recordsPerPage,
                recordsPerPage, Integer.parseInt(request.getParameter("price")), request.getParameter("title"),request.getParameter("region"));
        System.out.println(list.size());
        int noOfRecords = dao.getNoOfRecords();
        int noOfPages = (int)Math.ceil(noOfRecords * 1.0
                / recordsPerPage);
        request.setAttribute("annonceList", list);
        request.setAttribute("noOfPages", noOfPages);
        request.setAttribute("currentPage", page);

        request.setAttribute("price", request.getParameter("price"));
        request.setAttribute("title", request.getParameter("title"));
        request.setAttribute("region", request.getParameter("region"));

        System.out.println(list);
        RequestDispatcher view
                = request.getRequestDispatcher("display_List_Annonce3.jsp");
        view.forward(request, response);
    }
}
