<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Hotel" %>
<%@ page import="HotelManagementSystem.DatabaseServices.HotelService" %>
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



    HotelService hotelService = new HotelService();
    List<Hotel> hotels = null;
    try {
        hotels = hotelService.getHotels();
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
        <h4>Edit Hotel<h4>

        <form id="dialogForm">
            <input type="text" name="hotelID" id="hotelID" readonly></br>
            <input type="text" name="numRooms" id="numRooms" ></br>
            <input type="text" name="streetAddress" id="streetAddress" ></br>
            <input type="text" name="city" id="city" ></br>
            <input type="text" name="country" id="country" ></br>
            <input type="text" name="hotelChainID" id="hotelChainID">
        </form>

        <button type="submit" form="dialogForm">Update</button>
        <button type="button" data-dismiss="dialog">Close(Not working)</button>
    </div>





    <h2>Hotel Info</h2>

    <a href="InsertHotel.jsp">
        <button>Add Hotel</button>
    </a>

    <br/>

    <% if (hotels == null || hotels.size() == 0) { %>
        <h4>No Hotels Found</h4>
    <%} else {%>

        <table>
            <thead>
                <tr>
                    <th>Hotel ID</th>
                    <th>Number of Rooms</th>
                    <th>street Address</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Hotel Chain ID</th>

                    <th> </th>
                </tr>
            </thead>

            <tbody>

                <% for (Hotel hotel: hotels) {%>
                    <tr>
                        <td> <%= hotel.getHotelID() %> </td>
                        <td> <%= hotel.getNumRooms() %> </td>
                        <td> <%= hotel.getStreetAddress() %> </td>
                        <td> <%= hotel.getCity() %> </td>
                        <td> <%= hotel.getCountry() %> </td>
                        <td> <%= hotel.getHotelChainID() %> </td>
                        <td>
                            <a onclick="setDialogFields(this)"
                            data-tggle="dialog"
                            data-id="<%= hotel.getHotelID() %>"
                            data-num="<%= hotel.getNumRooms() %>"
                            data-address="<%= hotel.getStreetAddress() %> "
                            data-city="<%= hotel.getCity() %>"
                            data-country="<%= hotel.getCountry() %>"
                            data-chainid="<%= hotel.getHotelChainID() %>"
                            data-target="#editDialog">
                               <button> Edit </button>
                            </a>
                        </td>

                        <form method="POST" action="deleteHotel.jsp">
                            <td>
                                <input type="hidden" value="<%= hotel.getHotelID() %>" name="hotelID">
                                <button style="all: unset; cursor: pointer;">Delete Hotel</button>
                            </td>
                        </form>

                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

    <script>
        function setDialogFields(row) {
            document.getElementById("hotelID").value = row.dataset.id;
            document.getElementById("numRooms").value = row.dataset.num;
            document.getElementById("streetAddress").value = row.dataset.address;
            document.getElementById("city").value = row.dataset.city;
            document.getElementById("country").value = row.dataset.country;
            document.getElementById("hotelChainID").value = row.dataset.chainid;

            document.getElementById("dialogForm").action = "Update-hotel.jsp";
            document.getElementById("dialogForm").method = "POST";
        }
    </script>

</body>

</html>
