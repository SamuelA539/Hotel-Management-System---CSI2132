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
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.time.LocalDate" %>

<%
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

    // Default booking dates (today + 1 day)
    String defaultCheckIn = LocalDate.now().toString();
    String defaultCheckOut = LocalDate.now().plusDays(1).toString();
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Booking System</title>
</head>

<body>
    <h2>Book a Hotel Room</h2>

    <div class="booking-form">
        <form id="bookingForm">
            <div class="form-group">
                <label for="checkIn">Check-in Date:</label>
                <input type="date" id="checkIn" name="checkIn" value="<%= defaultCheckIn %>" required>
            </div>

            <div class="form-group">
                <label for="checkOut">Check-out Date:</label>
                <input type="date" id="checkOut" name="checkOut" value="<%= defaultCheckOut %>" required>
            </div>

            <div class="form-group">
                <label for="customerName">Your Name:</label>
                <input type="text" id="customerName" name="customerName" required>
            </div>

            <div class="form-group">
                <label for="customerID">Your ID:</label>
                <input type="int" id="customerID" name="customerID" required>
            </div>

            <div class="form-group">
                <label for="roomSelect">Select Room:</label>
                <select id="roomSelect" name="roomId" required>
                    <option value="">-- Select a Room --</option>
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

                        String roomLabel = (hotelChain != null ? hotelChain.getName() + " - " : "") +
                          (roomHotel != null ? roomHotel.getCity() + ", " + roomHotel.getStreetAddress() + " - " : "") +
                          "Room #" + room.getRoomNum() + " (" + room.getCapacity() + ", $" + room.getPrice() + "/night)";
                        %>
                        <option value="<%= roomHotel.getHotelID() %>-<%= room.getRoomNum() %>"><%= roomLabel %></option>
                    <% } %>
                </select>
            </div>

            <button type="button" onclick="bookRoom()">Book Room</button>
        </form>
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
    <script>
        function selectRoom(roomNum) {
            document.getElementById('roomSelect').value = roomNum;
            window.scrollTo(0, 0);
        }

        function bookRoom() {
            const checkIn = document.getElementById('checkIn').value;
            const checkOut = document.getElementById('checkOut').value;
            const customerName = document.getElementById('customerName').value;
            const customerID = document.getElementById('customerID').value;
            const roomSelect = document.getElementById('roomSelect');

            if (!checkIn || !checkOut || !customerName || !customerID || !roomSelect.value) {
                alert('Please fill in all fields');
                return;
            }

            const roomIdParts = roomSelect.value.split('-');
            if (roomIdParts.length !== 2) {
                alert('Invalid room selection');
                return;
            }

            const hotelID = parseInt(roomIdParts[0]);
            const roomNum = parseInt(roomIdParts[1]);

            const bookingData = {
                checkInDate: checkIn,
                checkOutDate: checkOut,
                customerName: customerName,
                customerID: customerID,
                hotelID: hotelID,
                roomNum: roomNum
            };

            bookings.createBooking(bookingData);
        }
    </script>

</body>
</html>