package pe.isil.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
    private static final String URL = "jdbc:postgresql://isilo.db.elephantsql.com:5432/kpqtbiai";
    private static final String USER = "kpqtbiai";
    private static final String PASSWORD = "9jyWcuKjmkkiHmvmFCugWbC3BKtKxVFe";
    private static final String DRIVER = "org.postgresql.Driver";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName(DRIVER);
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
