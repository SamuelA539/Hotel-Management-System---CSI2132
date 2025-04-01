<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Room" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Hotel" %>
<%@ page import="HotelManagementSystem.DatabaseServices.HotelService" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.HotelChain" %>
<%@ page import="HotelManagementSystem.DatabaseServices.HotelChainService" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Booking" %>
<%@ page import="HotelManagementSystem.DatabaseServices.BookingService" %>
<%@ page import="HotelManagementSystem.Message"%>
<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<Message> messages;

    if ((ArrayList<Message>) session.getAttribute("messages") == null) messages = new ArrayList<>();
    else messages = (ArrayList<Message>) session.getAttribute("messages");

    String msgField = "";

    for (Message m : messages) {
        msgField += "{\"type\":\"" + m.type + "\",\"value\":\"" + m.value.replaceAll("['\"]+", "") + "\"},";
    }

    session.setAttribute("messages", new ArrayList<Message>());

    RoomService roomService = new RoomService();
    HotelService hotelService = new HotelService();
    HotelChainService hotelChainService = new HotelChainService();
    BookingService bookingService = new BookingService();

    List<Room> rooms = null;
    List<Hotel> hotels = null;
    List<HotelChain> hotelChains = null;
    List<Booking> bookings = null;
    try {
        rooms = roomService.getRooms();
        hotels = hotelService.getHotels();
        hotelChains = hotelChainService.getHotelChains();
        bookings = bookingService.getBookings();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Management</title>
</head>

<body>
    <div id="editDialog" role="dialog">
        <h4>Add Booking<h4>

        <form id="addForm" method="POST" action="Insert-Booking.jsp">
            <label for="bookingID">Booking ID</label>
            <input type="text" name="bookingID" id="bookingID" ></br>

            <label for="checkInDate">Check-in Date</label>
            <input type="date" name="checkInDate" id="checkInDate" ></br>

            <label for="checkOutDate">Check-out Date</label>
            <input type="date" name="checkOutDate" id="checkOutDate" ></br>

            <label for="bookingDate">Booking Date</label>
            <input type="date" name="bookingDate" id="bookingDate" ></br>

            <label for="roomNum">Room Number</label>
            <input type="text" name="roomNum" id="roomNum" ></br>

            <label for="hotelID">Hotel ID</label>
            <input type="text" name="hotelID" id="hotelID" ></br>

            <label for="customer_id">Customer ID</label>
            <input type="text" name="customer_id" id="customer_id" ></br>
        </form>
        <button type="submit" form="addForm">Add Booking</button>
    </div>

    <h3>Available Rooms</h3>
        <% if (rooms == null || rooms.size() == 0) { %>
            <h4>No Hotel Rooms Found</h4>
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
                            <td>
                                <button onclick="selectRoom(<%= room.getRoomNum() %>)">Select</button>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } %>

    <h2>Bookings</h2>

    <br/>

    <% if (bookings == null || bookings.size() == 0) { %>
        <h4>No Bookings Found</h4>
    <%} else {%>

        <table>
            <thead>
                <tr>
                    <th>Booking ID</th>
                    <th>Check-in Date</th>
                    <th>Check-out Date</th>
                    <th>Booking Date</th>
                    <th>Room Number</th>
                    <th>Hotel ID</th>
                    <th>Customer ID</th>
                </tr>
            </thead>

            <tbody>
                <% for (Booking booking: bookings) {%>
                    <tr>
                        <td><%= booking.getBookingID() %></td>
                        <td><%= booking.getCheckInDate() %></td>
                        <td><%= booking.getCheckOutDate() %></td>
                        <td><%= booking.getBookingDate() %></td>
                        <td><%= booking.getRoomNum() %></td>
                        <td><%= booking.getHotelID() %></td>
                        <td><%= booking.getCustomer() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } %>
</body>
</html>