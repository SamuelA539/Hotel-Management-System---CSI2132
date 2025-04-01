package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Hotel;

import javax.xml.crypto.Data;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelService {

    //Hotel getters

    //returns all hotels
    public List<Hotel> getHotels() throws Exception {
        String query = "SELECT * FROM hotel;";
        Database db = new Database();

        List<Hotel> hotels = new ArrayList<>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Hotel hotel = new Hotel(
                        rs.getInt("hotelID"),
                        rs.getString("addressLine1"),
                        rs.getString("city"),
                        rs.getString("country"),
                        rs.getInt("numRooms"),
                        rs.getInt("hotelChain_id")
                );
                hotels.add(hotel);
            }

            rs.close();
            stmt.close();
            con.close();
            db.close();

            return hotels;
        } catch (Exception e) {
            throw new Exception("Error Getting Hotels: " + e.getMessage());
        }
    }

    //getHotelByCity
    public List<Hotel> getHotelsByCity(String city) throws Exception {
        String query = "SELECT * FROM Hotel WHERE Hotel.city='"+city+"'";
        Database db = new Database();

        List<Hotel> hotels = new ArrayList<Hotel>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Hotel hotel = new Hotel(
                        rs.getInt("hotelID"),
                        rs.getString("addressLine1"),
                        rs.getString("city"),
                        rs.getString("country"),
                        rs.getInt("numRooms"),
                        rs.getInt("hotelChain_id")
                );
                hotels.add(hotel);
            }

            rs.close();
            stmt.close();
            con.close();
            db.close();

            return hotels;
        } catch (Exception e) {
            throw new Exception("Error Getting Hotels: " + e.getMessage());
        }
    }

    //getHotelByCountry
    public List<Hotel> getHotelsByCountry(String country) throws Exception {
        String query = "SELECT * FROM Hotel WHERE hotel.country='"+country+"'";
        Database db = new Database();

        List<Hotel> hotels = new ArrayList<Hotel>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Hotel hotel = new Hotel(
                        rs.getInt("hotelID"),
                        rs.getString("addressLine1"),
                        rs.getString("city"),
                        rs.getString("country"),
                        rs.getInt("numRooms"),
                        rs.getInt("hotelChain_id")
                );
                hotels.add(hotel);
            }

            rs.close();
            stmt.close();
            con.close();
            db.close();

            return hotels;
        } catch (Exception e) {
            throw new Exception("Error Getting Hotels: " + e.getMessage());
        }
    }

    //getByHotelChainName "SELECT * FROM Hotel WHERE hotel.hotelChain_ID='"+chainID+"'";


//INSERT UPDATE DELETE methods

    //insertHotel to existing chain
    public String createHotel(Hotel hotel) throws Exception {
        String message = "";
        Connection con = null;

        Database db = new Database();

        String insertQuery = "INSERT INTO HOTEL " +
                "(hotelID, numRooms, addressLine1, city, country, hotelChain_id ) " +
                "VALUES (?,?,?,?,?,?);";

        try {
            con = db.getConncetion();

            PreparedStatement stmt = con.prepareStatement(insertQuery);

            stmt.setInt(1, hotel.getHotelID());
            stmt.setInt(2, hotel.getNumRooms());
            stmt.setString(3, hotel.getStreetAddress());
            stmt.setString(4, hotel.getCity());
            stmt.setString(5, hotel.getCountry());
            stmt.setInt(6, hotel.getHotelChainID());

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Hotel Insertion Query Executed Successfully");
            } else {
                System.out.println("Error in Hotel Insertion Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error While Inserting Hotel: " + e.getMessage();
        } finally {
            if (con != null)  con.close();
            if (message.isEmpty()) message = "Hotel Successfully Inserted";
        }
        return message;

    }

    //updateHotel
    //what attributes can change?(HotelChainID)
    public String updateHotel(Hotel hotel) throws Exception {
        Connection con = null;
        String message = "";

        String sql = "UPDATE hotel SET " +
                "numRooms=?, addressLine1=?, city=?, country=?, hotelChain_id=? " +
                "WHERE hotelID=?;";

        Database db = new Database();

        try {
            con = db.getConncetion();

            PreparedStatement stmt = con.prepareStatement(sql);


            stmt.setInt(1, hotel.getNumRooms());
            stmt.setString(2, hotel.getStreetAddress());
            stmt.setString(3, hotel.getCity());
            stmt.setString(4, hotel.getCountry());
            stmt.setInt(5, hotel.getHotelChainID());

            stmt.setInt(6, hotel.getHotelID());

            stmt.executeUpdate();
            stmt.close();

        }catch (Exception e) {
            message = "Error while updating Hotel: " + e.getMessage();
        } finally {
            if (con != null)  con.close();
            if (message.isEmpty()) message = "Hotel Successfully Updated";
        }

        return message;
    }

    //delete hotel
    public String deleteHotel(int hotelID) throws Exception {
        String message = "";
        Connection con = null;

        String sql = "DELETE FROM hotel WHERE hotelID = ?;";
        Database db = new Database();

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, hotelID);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Hotel Deletion Query Executed Successfully");
            } else {
                System.out.println("Error in Hotel Deletion Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error while deleting hotel: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Hotel successfully deleted";
        }

        return message;
    }



//Related Table service
    String hotelNumberRelation = "hotelnumber";
    public String insertHotelNumber(int hotelID, String number) throws Exception {
        String message = "";

        Connection con = null;
        Database db = new Database();

        String sql = "INSERT INTO "+
                hotelNumberRelation +
                " (hotelID, phoneNum)" +
                "VALUES (?, ?)";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);
            //
            stmt.setInt(1, hotelID);
            stmt.setString(2, number);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Hotel Number INSERT Query Executed Successfully");
            } else {
                System.out.println("Error in Hotel Number INSERT Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Inserting Hotel Number: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Hotel Number Successfully Inserted";
        }

        return message;
    }

    public String deleteHotelNumber(int hotelID, String number) throws Exception {
        String message = "";

        Connection con = null;
        Database db = new Database();

        String sql = "DELETE FROM" +
                hotelNumberRelation +
                " WHERE hotelID=? and phoneNum=?";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, hotelID);
            stmt.setString(2,number);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Hotel Number Delete Query Executed Successfully");
            } else {
                System.out.println("Error in Hotel Number Delete Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Deleting Hotel Number: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Hotel Number Successfully Deleted";
        }

        return message;
    }

    String hotelEmailRelation = "hotelemail";
    public String insertHotelEmail(int hotelID, String email) throws Exception {
        String message = "";

        Connection con = null;
        Database db = new Database();

        String sql = "INSERT INTO " +
                hotelEmailRelation +
                " (hotelID, email)" +
                "VALUES (?, ?)";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, hotelID);
            stmt.setString(2,email);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Hotel Email Insert Query Executed Successfully");
            } else {
                System.out.println("Error in Hotel Email Insert Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error inserting Hotel Email: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Hotel Email Successfully Inserted";
        }

        return message;
    }

    public String deleteHotelEmail(int hotelID, String email) throws Exception {
        String message = "";

        Connection con = null;
        Database db = new Database();

        String sql = "DELETE FROM " +
                hotelEmailRelation +
                " WHERE hotelID=? and email=?";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setInt(1, hotelID);
            stmt.setString(2, email);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Hotel Email Delete Query Executed Successfully");
            } else {
                System.out.println("Error in Hotel Email Delete Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Deleting Hotel Email: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Hotel Email Deleted Successfully";
        }

        return message;
    }





    //testing Service
//    public static void main(String[] args)  throws Exception{
//        HotelService hs = new HotelService();
//        String res = "";
//        // adding hotel to existing chain(WORKS)
//        Hotel test = new Hotel(99, "testStreet", "testCity", "testCountry",100,1);
//        hs.createHotel(test);
//
////        //Testing hotel update(WORKS)
////        test.setCity("CapitalCity");
////        hs.updateHotel(test);
//
//        res = hs.insertHotelEmail(test.getHotelID(), "email@test");
//        System.out.println(res);
//        res = hs.insertHotelNumber(test.getHotelID(), "num-num-test");
//        System.out.println(res);
//
//        res = hs.deleteHotelEmail(test.getHotelID(), "email@test");
//        System.out.println(res);
//        res = hs.deleteHotelNumber(test.getHotelID(), "num-num-test");
//        System.out.println(res);
//
//
//        res = hs.deleteHotel(test.getHotelID());
//        System.out.println(res);
//
////        List<Hotel> hotels = hs.getHotelsByCountry("Japan");
////        for (Hotel hotel: hotels) {
////            System.out.println(hotel.getCity());
////        }
//    }


}
