package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Hotel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelService {

    //returns all hotels
    public List<Hotel> getHotels() throws Exception {
        String query = "SELECT * FROM Hotel";
        Database db = new Database();

        List<Hotel> hotels = new ArrayList<Hotel>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                Hotel hotel = new Hotel(
                        rs.getInt("id"),
                        rs.getString("streetAddress"),
                        rs.getString("city"),
                        rs.getString("country"),
                        rs.getInt("numRooms")
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
        //TODO test if needed
    public List<Hotel> getHotelsByCity(String city) throws Exception {
        String query = "SELECT * FROM Hotel WHERE Hotel.city='"+city+"'";
        Database db = new Database();

        List<Hotel> hotels = new ArrayList<Hotel>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                Hotel hotel = new Hotel(
                        rs.getInt("id"),
                        rs.getString("streetAddress"),
                        rs.getString("city"),
                        rs.getString("country"),
                        rs.getInt("numRooms")
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
        //TODO test if needed
    public List<Hotel> getHotelByCountry(String country) throws Exception {
        String query = "SELECT * FROM Hotel WHERE hotel.country='"+country+"'";
        Database db = new Database();

        List<Hotel> hotels = new ArrayList<Hotel>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                Hotel hotel = new Hotel(
                        rs.getInt("id"),
                        rs.getString("streetAddress"),
                        rs.getString("city"),
                        rs.getString("country"),
                        rs.getInt("numRooms")
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

    //getByHotelChainIDs "SELECT * FROM Hotel WHERE hotel.hotelChain_ID='"+chainID+"'";

    //updateHotel
}
