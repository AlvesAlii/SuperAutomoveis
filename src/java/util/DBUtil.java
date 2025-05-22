package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private static final String URL = "jdbc:mysql://localhost:3306/concessionaria?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";         // ajuste conforme seu BD
    private static final String PASSWORD = "";         // ajuste conforme seu BD

    static {
        try {
            // Carrega explicitamente o driver JDBC do MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("Driver MySQL não encontrado! Adicione o JAR ao seu projeto.");
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
