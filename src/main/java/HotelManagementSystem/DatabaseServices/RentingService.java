package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Renting;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RentingService {
    public List<Renting> getRentals() throws Exception {
        String query = "SELECT * FROM renting";
        Database db = new Database();

        List<Renting> bookings = new ArrayList<>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Renting booking = new Renting(
                        rs.getInt("rentalID"),
                        rs.getInt("employee_id"),
                        rs.getInt("room_num"),
                        rs.getInt("hotelID"),
                        rs.getInt("customer_id"),
                        rs.getDate("check_in_date"),
                        rs.getDate("check_out_date")
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

    public boolean createRentals(Renting newRental) throws Exception {
        String query = "INSERT INTO renting (employee_id, room_num, hotelID, customer_id, " +
                "check_in_date, check_out_date) VALUES (?, ?, ?, ?, ?, ?)";
        Database db = new Database();

        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);

            // Set parameters for the prepared statement
            stmt.setInt(1, newRental.getEmployeeId());
            stmt.setInt(2, newRental.getRoomNum());
            stmt.setInt(3, newRental.getHotelID());
            stmt.setInt(4, newRental.getCustomerId());
            stmt.setDate(5, new java.sql.Date(newRental.getCheckInDate().getTime()));
            stmt.setDate(6, new java.sql.Date(newRental.getCheckOutDate().getTime()));

            int rowsAffected = stmt.executeUpdate();
            stmt.close();

            return rowsAffected > 0;
        } catch (Exception e) {
            throw new Exception("Error creating rental: " + e.getMessage());
        }
    }
}
