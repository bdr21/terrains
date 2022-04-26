package db;

import dao.exception.DaoException;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class Connect {

    final static String FICHIER_PROPERTIES       = "jdbc.properties";
    static final String PROPERTY_URL             = "jdbc.url";
    static final String PROPERTY_DRIVER          = "jdbc.driver";
    static final String PROPERTY_NOM_UTILISATEUR = "jdbc.username";
    static final String PROPERTY_MOT_DE_PASSE    = "jdbc.password";

    static ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
    static InputStream fichierProperties = classLoader.getResourceAsStream( FICHIER_PROPERTIES );
    static String url;
    static String driver;
    static String nomUtilisateur;
    static String motDePasse;
//
    static Properties properties = new Properties();

    private static Connection con;
    private Connect() {};
    public static Connection getConnection() {
        if ( fichierProperties == null ) {
            throw new DaoException( "Le fichier properties " + FICHIER_PROPERTIES + " est introuvable." );
        }

        try {
            properties.load(fichierProperties);
            url = properties.getProperty( PROPERTY_URL );
            driver = properties.getProperty( PROPERTY_DRIVER );
            nomUtilisateur = properties.getProperty( PROPERTY_NOM_UTILISATEUR );
            motDePasse = properties.getProperty( PROPERTY_MOT_DE_PASSE );

            Class.forName(driver);
            con= DriverManager.getConnection(url,nomUtilisateur,motDePasse);
        } catch (IOException e) {
            throw new DaoException( "Impossible de charger le fichier properties " , e );
        } catch(ClassNotFoundException e){
            throw new DaoException( "Le driver est introuvable dans le classpath.", e );
        } catch(SQLException e){
            throw new DaoException( "Connection à la base impossible :", e );
        }
        return con;
    }
}