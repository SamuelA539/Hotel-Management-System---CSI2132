<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Room" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Hotel" %>
<%@ page import="HotelManagementSystem.DatabaseServices.HotelService" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.HotelChain" %>
<%@ page import="HotelManagementSystem.DatabaseServices.HotelChainService" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Renting" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RentingService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%
    RoomService roomService = new RoomService();
    HotelService hotelService = new HotelService();
    HotelChainService hotelChainService = new HotelChainService();
    RentingService rentingService = new RentingService();

    List<Room> rooms = null;
    List<Hotel> hotels = null;
    List<HotelChain> hotelChains = null;
    List<Renting> rentals = null;
    try {
        rooms = roomService.getRooms();
        hotels = hotelService.getHotels();
        hotelChains = hotelChainService.getHotelChains();
        rentals = rentingService.getRentals();
    } catch (Exception e) {
        e.printStackTrace();
    }

    String dateParam = request.getParameter("checkIn");
    Date selectedDate = null;
    if (dateParam != null && !dateParam.isEmpty()) {
        try {
            selectedDate = new SimpleDateFormat("yyyy-MM-dd").parse(dateParam);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    String defaultCheckIn = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    String defaultCheckOut = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    if (dateParam != null && !dateParam.isEmpty()) {
        defaultCheckIn = dateParam;
    }

%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Rental Page</title>
</head>

<body>
     <div class="form-container">
        <form method="get" action="">
            <div class="form-group">
                <label for="checkIn">Check Availability for Date:</label>
                <input type="date" id="checkIn" name="checkIn" value="<%= defaultCheckIn %>" required>
                <button type="submit">Check Availability</button>
            </div>
        </form>
    </div>
    <h3>Available Rooms</h3>
    <% if (rooms == null || rooms.size() == 0) { %>
        <h4>No Available Rooms Found</h4>
    <%} else {%>
        <table>
            <thead>
                <tr>
                    <th>Chain</th>
                    <th>Hotel</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Room Number</th>
                    <th>Price</th>
                    <th>Capacity</th>
                    <th>View Type</th>
                    <th>Extendable</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <% for (Room room: rooms) {
                    Hotel roomHotel = null;
                    for (Hotel hotel : hotels) {
                        if (hotel.getHotelID() == room.getHotelID()) {
                            roomHotel = hotel;
                            break;
                        }
                    }

                    HotelChain hotelChain = null;
                    if (roomHotel != null) {
                        for (HotelChain chain : hotelChains) {
                            if (chain.getChainID() == roomHotel.getHotelChainID()) {
                                hotelChain = chain;
                                break;
                            }
                        }
                    }

                    boolean isRented = false;
                        if (selectedDate != null && rentals != null) {
                            for (Renting rental : rentals) {
                                if (rental.getRoomNum() == room.getRoomNum() &&
                                    rental.getHotelID() == room.getHotelID()) {

                                    // Check if selected date is between check-in and check-out
                                    if (!selectedDate.before(rental.getCheckInDate()) &&
                                        !selectedDate.after(rental.getCheckOutDate())) {
                                        isRented = true;
                                        break;
                                    }
                                }
                            }
                        }
                %>
                    <tr>
                        <td><%= hotelChain != null ? hotelChain.getName() : "N/A" %></td>
                        <td><%= roomHotel != null ? roomHotel.getHotelID() : "N/A" %></td>
                        <td><%= roomHotel != null ? roomHotel.getStreetAddress() : "N/A" %></td>
                        <td><%= roomHotel != null ? roomHotel.getCity() : "N/A" %></td>
                        <td><%= room.getRoomNum() %></td>
                        <td>$<%= room.getPrice() %></td>
                        <td><%= room.getCapacity() %></td>
                        <td><%= room.getViewType() %></td>
                        <td><%= room.isExtendable() ? "Yes" : "No" %></td>
                        <td><%= !isRented ? "Available" : "Rented" %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } %>

</body>

</html>
