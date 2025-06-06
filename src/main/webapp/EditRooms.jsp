<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Room" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
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
            <h4>Edit Employee<h4>

            <form id="dialogForm">
                <label for="hotelID">hotelID</label>
                <input type="text" name="hotelID" id="hotelID" readonly></br>

                <label for="roomNum">roomNum</label>
                <input type="text" name="roomNum" id="roomNum" ></br>

                <label for="price">price</label>
                <input type="text" name="price" id="price" ></br>

                <label for="capacity">capacity</label>
                <input type="text" name="capacity" id="capacity" ></br>

                <label for="viewType">viewType</label>
                <input type="text" name="viewType" id="viewType" ></br>

                <label for="extendable">extendable</label>
                <input type="checkbox" id="extendable" name="extendable"></br>

                <label for="damaged">damaged</label>
                <input type="checkbox" id="damaged" name="damaged">
            </form>

            <button type="submit" form="dialogForm">Update</button>
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
                        <td>
                            <a onclick="setDialogFields(this)"
                                data-hotelid="<%= room.getHotelID() %>"
                                data-roomnum="<%= room.getRoomNum() %>"
                                data-price="<%= room.getPrice() %> "
                                data-capacity="<%= room.getCapacity() %>"
                                data-viewtype="<%= room.getViewType() %>"

                                data-extendable="<%= room.isExtendable() %>"
                                data-damaged="<%= room.isDamaged() %>"

                                data-target="#editDialog">
                                    <button> Edit </button>
                            </a>
                        </td>

                        <form method="POST" action="deleteRoom.jsp">
                            <td>
                                <input type="hidden" value="<%= room.getHotelID() %>" name="hotelId">
                                <input type="hidden" value="<%= room.getRoomNum() %>" name="roomNum">
                                <button style="all: unset; cursor: pointer;">Delete Room</button>
                            </td>
                        </form>

                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

    <script>
            function setDialogFields(row) {
                console.log(row.dataset);

                document.getElementById("hotelID").value = row.dataset.hotelid;
                document.getElementById("roomNum").value = row.dataset.roomnum;
                document.getElementById("price").value = row.dataset.price;
                document.getElementById("capacity").value = row.dataset.capacity;
                document.getElementById("viewType").value = row.dataset.viewtype;

                console.log(row.dataset.extendable);
                console.log(row.dataset.damaged);

                if (row.dataset.extendable === "true") {
                    document.getElementById("extendable").checked = true;
                }
                if (row.dataset.damaged === "true") {
                    document.getElementById("damaged").checked = true;
                }

                document.getElementById("dialogForm").action = "Update-Room.jsp";
                document.getElementById("dialogForm").method = "POST";
            }
        </script>

</body>

</html>
