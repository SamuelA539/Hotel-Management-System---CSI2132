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
}
