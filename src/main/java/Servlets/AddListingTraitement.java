package Servlets;

import dao.AnnonceDao;
import dao.TerrainDao;
import dao.impl.AnnonceDaoImp;
import dao.impl.TerrainDaoImpl;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Annonce;
import models.Client;
import models.Terrain;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Map;
import java.util.Random;

@WebServlet(name = "AddListingTraitement", value = "/add-listing-traitement")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,     // 10 MB
        maxRequestSize =1024 * 1024 * 100   // 100 MB
)
public class AddListingTraitement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("{{{{{{{{{{{{{{{{{{{{{{{add listing traitement servlet}}}}}}}}}}}}}}}}}}}}}}}");
//        Map<String , String[]> map = request.getParameterMap();
//        for (Map.Entry<String, String[]> entry : map.entrySet()) {
//            System.out.println("Key : " + entry.getKey() + " Value : ");
//            for (String str : entry.getValue()) {
//                System.out.println(str + "---");
//            }
//        }
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String tags = request.getParameter("tags");
        String video_url = request.getParameter("videourl");
        int price = Integer.parseInt(request.getParameter("price"));
        String telephone_number = request.getParameter("telephone_number");
        String email = request.getParameter("email");
        String twitter = request.getParameter("twitter");
        String facebook = request.getParameter("facebook");
        String instagram = request.getParameter("instagram");
//        Client possesseur = (Client) request.getSession().getAttribute("currentUser");
        Client possesseur = new Client(12345,"bdr@s.co","123456");
        //\\
        double latitude = Double.parseDouble(request.getParameter("lat"));
        double longitude = Double.parseDouble(request.getParameter("lon"));
        String region = request.getParameter("region");
        String ville = request.getParameter("ville");
        String adresse = request.getParameter("addr");
        String thumbnail = "";
        String gallerie = "";

        Collection<Part> fileParts = request.getParts();
        for (Part part : fileParts) {
            String fileName = part.getSubmittedFileName();
            String pathWithTargetFolder = getServletContext().getRealPath("");
            String path = pathWithTargetFolder.split("target")[0];
            String pathToImages = path + "src\\main\\webapp\\images\\";
            if (part.getName().equals("preview_img")) { pathToImages+= "annonces_thumbnails\\" ;}
            if (part.getName().equals("gallery_imgs")) { pathToImages+= "annonces_galleries\\" ;}
            String pathWithFileName = pathToImages + fileName;
            if (part.getName().equals("preview_img")) { thumbnail = pathWithFileName ;}
            if (part.getName().equals("gallery_imgs")) { gallerie += pathWithFileName + "," ;}
            if (pathWithFileName != null) part.write(pathWithFileName);
        }

        Terrain terrain = new Terrain(new Random().nextInt(100000), latitude,longitude,region,ville,adresse);

        TerrainDao tdi = new TerrainDaoImpl();
        boolean status= tdi.addTerrain(terrain);
        System.out.println("status :" + status);
        if(status)
            System.out.println("terrain successfully registered");

        AnnonceDao adi = new AnnonceDaoImp();
        Annonce ann = new Annonce(new Random().nextInt(100000),possesseur,title,description,tags,video_url,thumbnail,gallerie,price,null,telephone_number,email,twitter,facebook,instagram,terrain);
        boolean status2= adi.addAnnonce(ann);
        System.out.println("status 2 :" + status2);
        if(status2)
            System.out.println("annonce successfully registered");
//        response.getWriter().print("The file uploaded sucessfully.");
    }
}


//        Timestamp dateDePub = new Timestamp(System.currentTimeMillis());