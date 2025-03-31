<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Room" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Booking" %>
<%@ page import="HotelManagementSystem.DatabaseServices.BookingService" %>
<%@ page import="java.util.ArrayList" %>

<%
    RoomService roomService = new RoomService();
    BookingService bookingService = new BookingService();

    List<Room> rooms = null;
    List<Booking> bookings = null;
    try {
        rooms = roomService.getRooms();
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
    <title>Document</title>
</head>

<body>
    <h2>Employee View</h2>
    <% if (rooms == null || rooms.size() == 0) { %>
        <h4>No Hotel Rooms Found</h4>
    <%} else {%>

        <table>
            <thead>
                <tr>
                    <th>Room Number</th>
                    <th>Price</th>
                    <th>Capacity</th>
                    <th>ViewType</th>
                    <th>Extendable</th>
                    <th>Damaged</th>
                </tr>
            </thead>

            <tbody>

                <tr>

                <td>
                <select>
                <option value="HotelID1">HotelID1</option>
                <option value="HotelID2">HotelID2</option>
                <option value="HotelID3">HotelID3</option>
                <select>
                </td>

                <td>
                <select>
                <option value="price1">price1</option>
                <option value="price2">price2</option>
                <option value="price3">price3</option>
                </select>
                </td>

                <td>
                <select>
                <option value="Capacity1">Capacity1</option>
                <option value="Capacity2">Capacity2</option>
                <option value="Capacity3">Capacity3</option>
                </select>
                </td>

                <td>
                <select>
                <option value="ViewType1">ViewType1</option>
                <option value="ViewType2">ViewType2</option>
                <option value="ViewType3">ViewType3</option>
                </select>
                </td>

                <td>
                <select>
                <option value="Extendable-True">True</option>
                <option value="Extendable-False">False</option>
                </select>
                </td>

                <td>
                <select>
                <option value="Damaged-True">True</option>
                <option value="Damaged-False">False</option>
                </select>
                </td>

                </tr>

                <%
                    //java code to organize rooms list by selection values
                %>

                <% for (Room room: rooms) {%>
                    <tr>
                        <td> <%= room.getRoomNum() %> </td>
                        <td> <%= room.getPrice() %> </td>
                        <td> <%= room.getCapacity() %> </td>
                        <td> <%= room.getViewType() %> </td>
                        <td> <%= room.isExtendable() %> </td>
                        <td> <%= room.isDamaged() %> </td>
                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>
    <h3>Existing Bookings</h3>
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
                <% for (Booking booking: bookings) { %>
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
