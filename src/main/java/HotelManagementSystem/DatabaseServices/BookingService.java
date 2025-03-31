package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BookingService {
    public List<Booking> getBookings() throws Exception {
        String query = "SELECT * FROM booking";
        Database db = new Database();

        List<Booking> bookings = new ArrayList<>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Booking booking = new Booking(
                        rs.getInt("bookingID"),
                        rs.getDate("check_in_date"),
                        rs.getDate("check_out_date"),
                        rs.getDate("booking_date"),
                        rs.getInt("room_num"),
                        rs.getInt("hotelID"),
                        rs.getInt("customer_id")
                );
                bookings.add(booking);
            }

            rs.close();
            stmt.close();
            return bookings;
        } catch (Exception e) {
            throw new Exception("Error getting bookings: " + e.getMessage());
        }
    }

    public boolean createBooking(Booking newBooking) throws Exception {
        String query = "INSERT INTO booking (check_in_date, check_out_date, booking_date, " +
                "room_num, hotelID, customer_id) VALUES (?, ?, ?, ?, ?, ?)";
        Database db = new Database();

        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);

            // Set parameters for the prepared statement
            stmt.setDate(1, new java.sql.Date(newBooking.getCheckInDate().getTime()));
            stmt.setDate(2, new java.sql.Date(newBooking.getCheckOutDate().getTime()));
            stmt.setDate(3, new java.sql.Date(newBooking.getBookingDate().getTime()));
            stmt.setInt(4, newBooking.getRoomNum());
            stmt.setInt(5, newBooking.getHotelID());
            stmt.setInt(6, newBooking.getCustomer());

            int rowsAffected = stmt.executeUpdate();
            stmt.close();

            return rowsAffected > 0;
        } catch (Exception e) {
            throw new Exception("Error creating booking: " + e.getMessage());
        }
    }

}
