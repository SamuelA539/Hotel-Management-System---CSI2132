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
    //  INSERT & UPDATE & DELETE related tables
    //the dates (start, end) of booking or renting ?


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
                            rs.getBoolean("is_damaged"),
                            rs.getInt("hotel_id")
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

    public String createRoom(Room room) throws Exception {
        String message = "";
        Connection con = null;

        Database db = new Database();

        String insertQuery = "INSERT INTO Room " +
                "(room_number, price, capacity, view_type, is_extendable, is_damaged, hotel_id) " +
                "VALUES (?,?,?,?,?,?,?);";

        try {
            con = db.getConncetion();

            PreparedStatement stmt = con.prepareStatement(insertQuery);

            stmt.setInt(1, room.getRoomNum());
            stmt.setFloat(2, room.getPrice());
            stmt.setString(3,room.getCapacity());
            stmt.setString(4, room.getViewType());
            stmt.setBoolean(5, room.isExtendable());
            stmt.setBoolean(6, room.isDamaged());
            stmt.setInt(7, room.getHotelID());


            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Room Insertion Query Executed Successfully");
            } else {
                System.out.println("Error in Room Insertion Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error While Inserting Room: " + e.getMessage();
        } finally {
            if (con != null)  con.close();
            if (message.isEmpty()) message = "Room Successfully Inserted";
        }
        return message;
    }

    public String updateRoom(Room room) throws Exception {
        String message = "";
        Connection con = null;

        Database db = new Database();

        String insertQuery = "UPDATE Room set" +
                "price=?, capacity=?, view_type=?, is_extendable=?, is_damaged=? " +
                "WHERE hotelID=? and room_number=?;";

        try {
            con = db.getConncetion();

            PreparedStatement stmt = con.prepareStatement(insertQuery);

            stmt.setFloat(1, room.getPrice());
            stmt.setString(2, room.getCapacity());
            stmt.setString(3, room.getViewType());
            stmt.setBoolean(4, room.isExtendable());
            stmt.setBoolean(5, room.isDamaged());

            stmt.setInt(6, room.getRoomNum());
            stmt.setInt(7, room.getHotelID());

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Room Update Query Executed Successfully");
            } else {
                System.out.println("Error in Room Update Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error While Inserting Room: " + e.getMessage();
        } finally {
            if (con != null)  con.close();
            if (message.isEmpty()) message = "Room Successfully Inserted";
        }
        return message;
    }

    public String deleteRoom(int roomNum, int hotelID) throws Exception {
        String message = "";
        Connection con = null;

        String sql = "DELETE FROM room WHERE room_number=? and hotel_id=?";
        Database db = new Database();

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setInt(1,roomNum);
            stmt.setInt(2, hotelID);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Room Deletion Query Executed Successfully");
            } else {
                System.out.println("Error in Room Deletion Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Deleting Room: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Successfully deleted Room";
        }
        return message;
    }


//Related Table services
    String roomAmenityRelation = "roomamenitie";
    public String addRoomAmenity(int roomNum, int hotelID, String amenity) throws Exception {
        String message = "";

        Connection con = null;
        Database db = new Database();

        String sql = "INSERT INTO " +
                roomAmenityRelation +
                " (roomNum, hotelID, amenities) VALUES " +
                "(?, ?, ?)";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setInt(1,roomNum);
            stmt.setInt(2, hotelID);
            stmt.setString(3, amenity);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Room Amenity Insert Query Executed Successfully");
            } else {
                System.out.println("Error in Room Amenity Insert Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Inserting Room Amenity: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Room Amenity Inserted Successfully";
        }

        return message;
    }

    public String deleteRoomAmenity(int roomNum, int hotelID, String amenity) throws Exception {
        String message = "";

        Connection con = null;
        Database db = new Database();

        String sql = "DELETE FROM " +
                roomAmenityRelation +
                " WHERE roomNum=? and hotelID=? and amenities=?";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setInt(1,roomNum);
            stmt.setInt(2, hotelID);
            stmt.setString(3, amenity);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("RoomAmenity DELETE Query Executed Successfully");
            } else {
                System.out.println("Error in RoomAmenity DELETE Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Deleting RoomAmenity: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "RoomAmenity Deleted Successfully";
        }

        return message;
    }




    //TESTs
//    public static void main(String[] args) throws Exception {
//
//        RoomService rs = new RoomService();
//        String res = "";
//
//        //adding room to existing hotel(WORKS)
//        Room test = new Room(99, 99.99F,"single","city",true,false, 101);
//        rs.createRoom(test);
//
//        //updating room(Error)
//        //test.setDamaged(true);
//        //String res = rs.updateRoom(test);
//        //System.out.println(res);
//
//        res = rs.addRoomAmenity(test.getRoomNum(), test.getHotelID(), "stuff");
//        System.out.println(res);
//
//        res = rs.deleteRoomAmenity(test.getRoomNum(), test.getHotelID(), "stuff");
//        System.out.println(res);
//
//
//        res = rs.deleteRoom(test.getRoomNum(), test.getHotelID());
//        System.out.println(res);
//    }


}
