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
        <h4>Add Hotel<h4>

        <form id="addForm" method="POST" action="Insert-Hotel.jsp">
            <label for="hotelID">hotelID</label>
            <input type="text" name="hotelID" id="hotelID" ></br>

            <label for="numRooms">numRooms</label>
            <input type="text" name="numRooms" id="numRooms" ></br>

            <label for="streetAddress">streetAddress</label>
            <input type="text" name="streetAddress" id="streetAddress" ></br>

            <label for="city">city</label>
            <input type="text" name="city" id="city" ></br>

            <label for="country">country</label>
            <input type="text" name="country" id="country" ></br>

            <label for="hotelChainID">hotelChainID</label>
            <input type="text" name="hotelChainID" id="hotelChainID">
        </form>
        <button type="submit" form="addForm">Add</button>
    </div>





    <h2>Hotels</h2>

    <br/>

    <% if (hotels == null || hotels.size() == 0) { %>
        <h4>No Hotels Found</h4>
    <%} else {%>

        <table>
            <thead>
                <tr>
                    <th>Hotel ID</th>
                    <th>Hotel Chain ID</th>

                    <th> </th>
                </tr>
            </thead>

            <tbody>

                <% for (Hotel hotel: hotels) {%>
                    <tr>
                        <td> <%= hotel.getHotelID() %> </td>
                        <td> <%= hotel.getHotelChainID() %> </td>

                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>


</body>

</html>
