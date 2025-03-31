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
                <input type="text" name="hotelID" id="hotelID" readonly>
                <input type="text" name="roomNum" id="roomNum" ></br>

                <input type="text" name="price" id="price" >
                <input type="text" name="capacity" id="capacity" >
                <input type="text" name="viewType" id="viewType" ></br>

                <input type="button" id="extendable" name="extendable" onclick="toggleExtendableBtn()">
                <input type="button" id="damaged" name="damaged" onlick="toggleDamagedBtn()">
            </form>

            <button type="submit" form="dialogForm">Update</button>
            <button type="button" data-dismiss="dialog">Delete(Not working)</button>
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
                                data-tggle="dialog"
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

                document.getElementById("extendable").value = row.dataset.extendable;
                document.getElementById("damaged").value = row.dataset.damaged;

                document.getElementById("dialogForm").action = "Update-Room.jsp";
                document.getElementById("dialogForm").method = "POST";
            }

            function toggleExtendableBtn() {
                let extBtn = document.getElementById("extendable");
                console.log("Pre toggle ",extBtn.value);
                if (extBtn.value == "true") {
                    extBtn.value = "false";
                }
                if (extBtn.value == "false") {
                    extBtn.value = "true";
                }
                console.log("Post toggle ",extBtn.value);
            }

            function toggleDamagedBtn() {
                let dmgBtn = document.getElementById("damaged");
                if (dmgBtn.value == "true") {
                    dmgBtn.value = "false";
                }
                if (dmgBtn.value == "false") {
                    dmgBtn.value = "true";
                }
            }
        </script>

</body>

</html>
