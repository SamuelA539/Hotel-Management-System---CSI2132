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
    //the dates (start, end) of booking or renting ?

/*
    //category of the hotel
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID from OWNS where owns.star_rating="+ stars +")";]
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID from OWNS where owns.star_rating<"+ maxStars +")";]
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID from OWNS where owns.star_rating>"+ minStars +")";]

    //total number of rooms in the hotel
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID FROM Hotel WHERE hotel.numRooms >" +minRooms+ "AND hotel.numRooms <"+maxRooms+)";]
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID FROM Hotel WHERE hotel.numRooms >" +minRooms+ ")";]
        //[String query = "SELECT * FROM Room WHERE Room.hotel_ID IN (Select hotelID FROM Hotel WHERE hotel.numRooms < "+ maxRooms +")";]

    //price of the rooms
        //[String query = "SELECT * FROM Room WHERE Room.price > min and Room.price < max ";]
        //[String query = "SELECT * FROM Room WHERE Room.price > min";]
        //[String query = "SELECT * FROM Room WHERE Room.price < max";]
*/

    //Get all rooms
    public List<Room> getRooms() throws Exception {
        Database db = new Database();
        List<Room> rooms = new ArrayList<Room>();

        String query = "SELECT * FROM room";

        try(Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            //System.out.println(stmt);
            ResultSet rs = stmt.executeQuery(); //!!failure

            //ResultSet Exception handling
            if (rs == null) {
                System.out.println("rs null");
                throw new RuntimeException("Result Set Null");
                //System.out.println(rs.getStatement());
            } else {
                Exception warning = rs.getWarnings();
                if (warning != null) {
                    //System.out.println(warning.getMessage());
                    throw warning;
                }

                while (rs.next()) {
//                    System.out.println("row: " + rs.getRow());
//                    System.out.println("Was null: " + rs.wasNull());
//                    System.out.println(rs.getInt("room_number"));

                    Room room = new Room(
                            rs.getInt("room_number"),
                            rs.getFloat("price"),
                            rs.getString("capacity"),
                            rs.getString("view_type"),
                            rs.getBoolean("is_extendable"),
                            rs.getBoolean("is_damaged")
//                       rs.getInt("hotel_id")
                    );
                    rooms.add(room);
                }
                rs.close();
            }
                stmt.close();
                con.close();
                db.close();

                //Exception if 0 rooms returned
                if (rooms.isEmpty()) {
                    System.out.println("0 rooms");
                    //throw new RuntimeException("0 Rooms retrieved");
                }

                return rooms;
        } catch (Exception e) {
            throw new Exception("Error Getting Hotels: " + e.getMessage());
        }
    }



//    public static void main(String[] args) throws Exception {
//        RoomService roomService = new RoomService();
//        List<Room> rooms = null;
//
//        try {
//            rooms = roomService.getRooms();
//        } catch (Exception e) {
//            throw new Exception("oops: " + e.getMessage());
//        }
//
//        if (rooms != null) {
//            System.out.println("looping rooms");
//            //System.out.println(rooms.get(0).getRoomNum());
//
//            for (Room room: rooms) {
//                System.out.println(room.getRoomNum());
//            }
//
//        }else {
//            System.out.println("Rooms null");
//        }
//    }

}
