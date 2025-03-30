package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelService {
    //TODO:
    // delete
    // INSERT & UPDATE related tables

    //returns all hotels
    public List<Hotel> getHotels() throws Exception {
        String query = "SELECT * FROM hotel";
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

    //getHotelByCity !NEEDS TESTING!
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

    //getHotelByCountry !NEEDS TESTING!
    public List<Hotel> getHotelByCountry(String country) throws Exception {
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



    //insertHotel
    public String createHotel(Hotel hotel) throws Exception{
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
            System.out.println("Output(1 = success): " + out );

            stmt.close();

        } catch (Exception e) {
            message = "Error While Inserting Hotel: " + e.getMessage();
        } finally {
            if (con != null)  con.close();
            if (message.isEmpty()) message =   "Hotel Successfully Inserted";
        }
        return message;

    }

    //updateHotel
        //TODO what attributes can change?(HotelChainID)
    public String updateHotel (Hotel hotel) throws Exception {
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


//    //testing Service
//    public static void main(String[] args)  throws Exception{
//        HotelService hs = new HotelService();
//
//        // adding hotel to existing chain(WORKS)
//        Hotel test = new Hotel(99, "testStreet", "testCity", "testCountry",100,1);
//        hs.createHotel(test);
//
//        //Testing hotel update(WORKS)
//        test.setCity("CapitalCity");
//        hs.updateHotel(test);
//
//    }


}
