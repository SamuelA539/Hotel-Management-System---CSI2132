package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Room;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//allows getting of rooms from DB using different categories
    //Complex Queries with no Lists VS Simple Queries with list sorting
public class RoomService {
    //TODO: +queries
    //the dates (start, end) of booking or renting

    //category of the hotel
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select * from OWNS where owns.star_rating="+ stars +")";]
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select * from OWNS where owns.star_rating<"+ maxStars +")";]
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select * from OWNS where owns.star_rating>"+ minStars +")";]

    //total number of rooms in the hotel
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select * FROM Hotel WHERE hotel.numRooms >" +minRooms+ "AND hotel.numRooms <"+maxRooms+)";]

    //price of the rooms
        //[String query = "SELECT * FROM Room WHERE Room.price > min and Room.price < max ";]


    //Get all rooms
    public List<Room> getRooms() throws Exception {
        String query = "SELECT * FROM Room";
        Database db = new Database();
        List<Room> rooms = new ArrayList<Room>();
        try(Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                Room room = new Room(
                        rs.getInt("room_number"),
                        rs.getFloat("price"),
                        rs.getString("capacity"),
                        rs.getString("view_type"),
                        rs.getBoolean("is_extendable"),
                        rs.getBoolean("is_damaged")
//                        rs.getInt("hotel_id")
                );
                rooms.add(room);

            }
            rs.close();
            stmt.close();
            con.close();
            db.close();

            return rooms;
        } catch (Exception e) {
            throw new Exception("Error Getting Hotels: " + e.getMessage());
        }
    }


    //Complex Queries

    //Get rooms by capacity
        //query: "SELECT * FROM Room WHERE Room.capacity = 'capacity' "
    public List<Room> getRoomsByCapacity(String capacity) throws Exception {
        String query = "SELECT * FROM Room WHERE Room.capacity = '"+ capacity +"'";
        Database db = new Database();
        List<Room> rooms = new ArrayList<Room>();
        try(Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                Room room = new Room(
                        rs.getInt("room_number"),
                        rs.getFloat("price"),
                        rs.getString("capacity"),
                        rs.getString("view_type"),
                        rs.getBoolean("is_extendable"),
                        rs.getBoolean("is_damaged")
//                        rs.getInt("hotel_id")
                );
                rooms.add(room);

            }
            rs.close();
            stmt.close();
            con.close();
            db.close();

            return rooms;
        } catch (Exception e) {
            throw new Exception("Error Getting Hotels: " + e.getMessage());
        }
    }

    //Get rooms by City
        //query: "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID FROM Hotel WHERE hotel.city = 'city')"
    //!!!CASE SENSITIVE!!!
    public List<Room> getRoomsByCity(String city) throws Exception {
        String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID FROM Hotel WHERE hotel.city = '" + city + "')";
        Database db = new Database();
        List<Room> rooms = new ArrayList<Room>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                Room room = new Room(
                        rs.getInt("room_number"),
                        rs.getFloat("price"),
                        rs.getString("capacity"),
                        rs.getString("view_type"),
                        rs.getBoolean("is_extendable"),
                        rs.getBoolean("is_damaged")
//                        rs.getInt("hotel_id")
                );
                rooms.add(room);

            }
            rs.close();
            stmt.close();
            con.close();
            db.close();

            return rooms;
        } catch (Exception e) {
            throw new Exception("Error Getting Hotels: " + e.getMessage());
        }
    }

    //Get rooms by City
        //query: "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID FROM Hotel WHERE hotel.country = 'country')"
    //!!!CASE SENSITIVE!!!
    public List<Room> getRoomsByCountry(String country) throws Exception {
        String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID FROM Hotel WHERE hotel.country = '"+ country +"')";
        Database db = new Database();
        List<Room> rooms = new ArrayList<Room>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                Room room = new Room(
                        rs.getInt("room_number"),
                        rs.getFloat("price"),
                        rs.getString("capacity"),
                        rs.getString("view_type"),
                        rs.getBoolean("is_extendable"),
                        rs.getBoolean("is_damaged")
//                        rs.getInt("hotel_id")
                );
                rooms.add(room);

            }
            rs.close();
            stmt.close();
            con.close();
            db.close();

            return rooms;
        } catch (Exception e) {
            throw new Exception("Error Getting Hotels: " + e.getMessage());
        }
    }

    //Get hotel by ChainName
        //query: "SELECT * FROM Room WHERE Room.hotel_ID IN
            //(Select hotelID FROM Hotel WHERE hotel.hotelchain_id IN
                //(Select chainID FROM hotelchain WHERE hotelchain.Chain_name= 'chainName')
            //)"
    //!!!CASE SENSITIVE!!!
    public List<Room> getRoomsByHotelChain(String chainName) throws Exception {
        String query = "SELECT * FROM Room WHERE Room.hotel_ID IN " +
                "(Select hotelID FROM Hotel WHERE hotel.hotelchain_id IN " +
                "(Select chainID FROM hotelchain WHERE hotelchain.Chain_name= '" + chainName + ") )";

        Database db = new Database();
        List<Room> rooms = new ArrayList<Room>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.getResultSet();

            while (rs.next()) {
                Room room = new Room(
                        rs.getInt("room_number"),
                        rs.getFloat("price"),
                        rs.getString("capacity"),
                        rs.getString("view_type"),
                        rs.getBoolean("is_extendable"),
                        rs.getBoolean("is_damaged")
//                        rs.getInt("hotel_id")
                );
                rooms.add(room);

            }
            rs.close();
            stmt.close();
            con.close();
            db.close();

            return rooms;
        } catch (Exception e) {
            throw new Exception("Error Getting Hotels: " + e.getMessage());
        }
    }



}
