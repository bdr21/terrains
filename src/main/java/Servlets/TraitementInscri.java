package Servlets;

import dao.ClientDao;
import dao.impl.ClientDaoImpl;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Client;
import org.springframework.security.crypto.bcrypt.BCrypt;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "traitementd'inscri", value = "/TraitementInscri")
public class TraitementInscri extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String pwd = BCrypt.hashpw( request.getParameter("password"), BCrypt.gensalt()); ;
        String adresse = request.getParameter("adresse");
        Client c = new Client(nom,prenom,adresse,email,pwd);
        ClientDao cdi = new ClientDaoImpl();
        cdi.addClient(c);

//        String plain_password="toto";
//        String pw_hash =BCrypt.hashpw( request.getParameter("password"), BCrypt.gensalt());
//
//        if( BCrypt.checkpw(plain_password, pw_hash) ) {
//            System.out.println("mot de passe OK");
//        }else {
//            System.out.println("Mauvais mdp");
//        }
    }

}
