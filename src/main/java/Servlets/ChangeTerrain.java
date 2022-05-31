package Servlets;

import dao.TerrainDao;
import dao.impl.TerrainDaoImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Terrain;

import java.io.IOException;

@WebServlet(name = "changeTerrain", value = "/ChangeTerrain")

public class ChangeTerrain extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id_param = request.getParameter("id");
//        int id = 0;
//        if ( !(id_param == null || id_param.equals("")) ) id =  Integer.parseInt(request.getParameter("id"));
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

        Terrain terrain = new Terrain(latitude,longitude,region,ville, addresse);

        TerrainDao terrainDao = new TerrainDaoImpl();
        terrainDao.addTerrain(terrain);
        RequestDispatcher view ;

        view = request.getRequestDispatcher("terrainChange.jsp");
        view.forward(request, response);


    }
}
