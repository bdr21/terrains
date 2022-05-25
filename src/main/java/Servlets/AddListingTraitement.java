package Servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.Map;

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
        System.out.println("{{{{{{{{{{{{{{{{{{{{{{{*********************}}}}}}}}}}}}}}}}}}}}}}}");
        Map<String , String[]> map = request.getParameterMap();
        for (Map.Entry<String, String[]> entry : map.entrySet()) {
            System.out.println("Key : " + entry.getKey() + " Value : ");
            for (String str : entry.getValue()) {
                System.out.println(str + "---");
            }
        }

//        Part filePart = request.getPart("file");
//        String fileName = filePart.getSubmittedFileName();
//        for(Part part : request.getParts()) {
//            part.write("C:\\upload\\" + fileName);
//        }
//        response.getWriter().print("The file uploaded sucessfully.");
    }
}
