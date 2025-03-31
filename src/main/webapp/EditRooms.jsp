<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Room" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
<%@ page import="java.util.ArrayList" %>

<%
    RoomService roomService = new RoomService();
    List<Room> rooms = null;
    try {
        rooms = roomService.getRooms();
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
    <h2>Room Info</h2>
    <button>Add Room</button>
    <br/>
    <% if (rooms == null || rooms.size() == 0) { %>
        <h4>No Hotel Rooms Found</h4>
    <%} else {%>

        <table>
            <thead>
                <tr>
                    <th>Hotel ID</th>
                    <th>Room Number</th>
                    <th>Price</th>
                    <th>Capacity </th>
                    <th>viewType</th>
                    <th>extendable</th>
                    <th>damaged</th>

                    <th> </th>
                </tr>
            </thead>

            <tbody>

                <% for (Room room: rooms) {%>
                    <tr>
                        <td> <%= room.getHotelID() %> </td>
                        <td> <%= room.getRoomNum() %> </td>
                        <td> <%= room.getPrice() %> </td>
                        <td> <%= room.getCapacity() %> </td>
                        <td> <%= room.getViewType() %> </td>
                        <td> <%= room.isExtendable() %> </td>
                        <td> <%= room.isDamaged() %> </td>
                        <td><button>Edit</button></td>
                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

</body>

</html>
