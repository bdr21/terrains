package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect {
    private static Connection con;
    private Connect() {};
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost/projets2","root","1234");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}