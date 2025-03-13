package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/SportFlow";
    private static final String USER = "root"; // Remplacez par votre nom d'utilisateur
    private static final String PASSWORD = "password"; // Remplacez par votre mot de passe

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
