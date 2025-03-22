package HotelManagementSystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionDB {

    /* Database connection settings, change dbName, dbusername, dbpassword */
    private final String ipAddress = "127.0.0.1";
    private final String dbServerPort = "5432";
    private final String dbName = "postgres";
    private final String dbusername = "postgres";
    private final String dbpassword = "";


    private Connection con = null;

}
