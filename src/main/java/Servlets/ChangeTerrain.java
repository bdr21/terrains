package Servlets;

import DAO.TerrainDao;
import DaoImpl.TerrainDaoImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Terrain;

import java.io.IOException;

@WebServlet(name = "changeTerrain", value = "/ChangeTerrain")

public class ChangeTerrain extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id =  Integer.parseInt(request.getParameter("id"));
        double latitude =  Double.parseDouble(request.getParameter("lat"));
        double longitude = Double.parseDouble(request.getParameter("lon"));
        String addresse = request.getParameter("addr");
        String ville = request.getParameter("ville");
        String region = request.getParameter("region");

//
//        String id =  request.getParameter("id");
//        String latitude =  request.getParameter("lat");
//        String longitude = request.getParameter("lon");
//        String addresse = request.getParameter("addr");
//        String ville = request.getParameter("ville");
//        String region = request.getParameter("region");

        System.out.println(id);
        Terrain terrain = new Terrain(id,latitude,longitude,region,ville);

        TerrainDao terrainDao = new TerrainDaoImpl();
        terrainDao.addTerrain(terrain);
        RequestDispatcher view ;

        view = request.getRequestDispatcher("terrainChange.jsp");
        view.forward(request, response);


    }
}
