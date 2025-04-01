package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.HotelChain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelChainService {
    public List<HotelChain> getHotelChains() throws Exception {
        String query = "SELECT * FROM hotelchain";
        Database db = new Database();

        List<HotelChain> chains = new ArrayList<>();
        try (Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                HotelChain chain = new HotelChain(
                        rs.getInt("chainID"),
                        rs.getString("Office_address"),
                        rs.getInt("Num_of_hotels"),
                        rs.getString("Chain_name")
                );
                chains.add(chain);
            }

            rs.close();
            stmt.close();
            return chains;
        } catch (Exception e) {
            throw new Exception("Error getting hotel chains: " + e.getMessage());
        }
    }
}
