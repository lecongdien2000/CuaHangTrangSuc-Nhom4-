package database;

import java.sql.*;

public class ConnectionDB {
    static Connection connection;
    public static Statement connect() throws ClassNotFoundException, SQLException {
        if(connection==null||connection.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/nladb?useUnicode=true&characterEncoding=utf-8",
                    "root", "kimhong@482000");
        }
            return connection.createStatement();
    }

}
