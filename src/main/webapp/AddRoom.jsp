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

    <div id="editDialog" role="dialog">
            <h4>Add Room<h4>

            <form id="addForm" method="POST" action="Insert-Room.jsp">
                <label for="hotelID">hotelID</label>
                <input type="text" name="hotelID" id="hotelID"></br>

                <label for="roomNum">roomNum</label>
                <input type="text" name="roomNum" id="roomNum" ></br>

                <label for="price">price</label>
                <input type="text" name="price" id="price" ></br>

                <label for="capacity">capacity</label>
                <input type="text" name="capacity" id="capacity" ></br>

                <label for="viewType">viewType</label>
                <input type="text" name="viewType" id="viewType" ></br>
                <div>
                    <input type="checkbox" id="extendable" name="extendable">
                    <l]abel for="extendable">extendable</label>
                </div>
                <div>
                    <input type="checkbox" id="damaged" name="damaged">
                    <label for="damaged">damaged</label>
                </div>
            </form>

            <button type="submit" form="addForm">Add</button>
        </div>


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
                </tr>
            </thead>

            <tbody>

                <% for (Room room: rooms) {%>
                    <tr>
                        <td> <%= room.getHotelID() %> </td>
                        <td> <%= room.getRoomNum() %> </td>
                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

</body>

</html>
