package API;

import dao.AnnonceDao;
import dao.impl.AnnonceDaoImp;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Annonce;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AllAnnonce", value = "/AllAnnonce")
public class AllAnnonce extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AnnonceDaoImp annonceDaoImp = new AnnonceDaoImp();
        ArrayList<Annonce> = annonceDaoImp.getAnnonces();

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
