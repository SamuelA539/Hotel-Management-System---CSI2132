package HotelManagementSystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    /* Database connection settings, change dbName, dbusername, dbpassword */
    private final String ipAddress = "127.0.0.1";
    private final String dbServerPort = "5432";
    private final String dbName = "postgres";

    private final String dbusername = "postgres";
    private final String dbpassword = "password";

    private String JDBC_URL = "jdbc:postgresql://localhost:5432/"+dbName+"?currentSchema=project";

    private Connection con = null;

    /**
     * Opens DB connection
     * @throws Exception
     **/
    public Connection getConncetion() throws Exception {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://"+ ipAddress + ":" + dbServerPort + "/" + dbName+"?currentSchema=project",
                    dbusername,
                    dbpassword);
            return con;
        } catch (Exception e) {
            throw new Exception("Couldn't connect to Database Server: " + e.getMessage());
        }
    }

    /**
    * Closes DB connection
    * @throws SQLException from con
    **/
    public void close() throws SQLException {
        try {
            if (con != null){
                con.close();
            }
        } catch (SQLException e) {
            throw new SQLException("Could not close Connection with Database Server: " + e.getMessage());
        }
    }

//    public static void main(String[] args) {
//        Database db = new Database();
//        try {
//            db.getConncetion();
//        } catch (Exception e) {
//            System.out.println("Opps: " + e.getMessage());
//        }
//        System.out.println("Done");
//
//    }

}