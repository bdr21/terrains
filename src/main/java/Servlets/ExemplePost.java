package Servlets;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Client;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.stream.Collectors;

@WebServlet(name = "my-profile", value = "/exemplePost")
public class ExemplePost extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String requestData = request.getReader().lines().collect(Collectors.joining());
        Gson gson = new Gson(); // Or use new GsonBuilder().create();
        Client target2 = gson.fromJson(requestData, Client.class);
        System.out.println(requestData);
        System.out.println(target2);
    }
    }
