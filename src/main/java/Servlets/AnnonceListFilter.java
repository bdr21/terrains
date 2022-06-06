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
import java.util.Collections;
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
        int recordsPerPage = 9;
        List<Annonce> list = null;
        if (request.getParameter("page") != null)
            page = Integer.parseInt(
                    request.getParameter("page"));
        AnnonceDaoImp dao = new AnnonceDaoImp();

        if(request.getParameter("ordre")!=null)
        {
            int ordre = Integer.parseInt(request.getParameter("ordre"));
            System.out.println(ordre);
            switch(ordre)
            {
                case 1: list = dao.getAnnoncesRestrict ((page - 1) * recordsPerPage,
                        recordsPerPage, Integer.parseInt(request.getParameter("price")), request.getParameter("title"),request.getParameter("region"));
                    break;
                case 2: list = dao.getAnnoncesRestrictOrderByTitleAsc( (page - 1) * recordsPerPage,
                        recordsPerPage, Integer.parseInt(request.getParameter("price")), request.getParameter("title"),request.getParameter("region"));
                    break;
                case 3 : list = dao.getAnnoncesRestrictOrderByTitleDesc( (page - 1) * recordsPerPage,
                        recordsPerPage, Integer.parseInt(request.getParameter("price")), request.getParameter("title"),request.getParameter("region"));
                    break;
                case 4: list = dao.getAnnoncesRestrictOrderByDateAsc( (page - 1) * recordsPerPage,
                        recordsPerPage, Integer.parseInt(request.getParameter("price")), request.getParameter("title"),request.getParameter("region"));
                    break;
                case 5: list = dao.getAnnoncesRestrictOrderByDateDesc ((page - 1) * recordsPerPage,
                        recordsPerPage, Integer.parseInt(request.getParameter("price")), request.getParameter("title"),request.getParameter("region"));
                    break;
                case 6: list = dao.getAnnoncesRestrictOrderByPriceAsc( (page - 1) * recordsPerPage,
                        recordsPerPage, Integer.parseInt(request.getParameter("price")), request.getParameter("title"),request.getParameter("region"));
                    break;
                case 7: list = dao.getAnnoncesRestrictOrderByPriceDesc ((page - 1) * recordsPerPage,
                        recordsPerPage, Integer.parseInt(request.getParameter("price")), request.getParameter("title"),request.getParameter("region"));
                    break;
                default:
                    System.out.println("rien n'est selectionné");
            }
            request.setAttribute("ordre", request.getParameter("ordre"));
        }
        else
        {
            list = dao.getAnnoncesRestrict( (page - 1) * recordsPerPage,
                    recordsPerPage, Integer.parseInt(request.getParameter("price")), request.getParameter("title"),request.getParameter("region"));
            request.setAttribute("ordre", 1);

        }

        System.out.println(list);
        System.out.println(list.size());
        int noOfRecords = dao.getNoOfRecords();
        int noOfPages = (int)Math.ceil(noOfRecords * 1.0
                / recordsPerPage);
        request.setAttribute("noOfRecords", noOfRecords);
        request.setAttribute("annonceList", list);
        request.setAttribute("noOfPages", noOfPages);
        request.setAttribute("currentPage", page);
        request.setAttribute("price", request.getParameter("price"));
        request.setAttribute("title", request.getParameter("title"));
        request.setAttribute("region", request.getParameter("region"));


//        System.out.println(list);
//        Collections.sort(list, Annonce.annonceComparatorDateDes);
//        System.out.println(list);
//        Collections.sort(list, Annonce.annoncePriceComparatorAsc);
//        System.out.println(list);
//        Collections.sort(list, Annonce.annoncePriceComparatorDesc);
//        System.out.println(list);
//        Collections.sort(list, Annonce.annonceComparatorTitleAsc);
//        System.out.println(list);
//        Collections.sort(list, Annonce.annonceComparatorTitleDesc);
//        System.out.println(list);

        RequestDispatcher view
                = request.getRequestDispatcher("display_List_Annonce3.jsp");
        view.forward(request, response);
    }
}
