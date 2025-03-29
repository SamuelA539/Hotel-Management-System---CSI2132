<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Hotel" %>
<%@ page import="HotelManagementSystem.DatabaseServices.HotelService" %>
<%@ page import="java.util.ArrayList" %>

<%
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
    <h2>Employee View</h2>
    <% if(hotels == null || hotels.size() == 0) { %>
        <h4>No Hotels Found</h4>
    <%} else {%>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Street Address</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Number Of Rooms</th>
                </tr>
            </thead>

            <tbody>
                <% for (Hotel hotel: hotels) {%>
                    <tr>
                        <td> <%= hotel.getHotelID() %> </td>
                        <td> <%= hotel.getStreetAddress() %> </td>
                        <td> <%= hotel.getCity() %> </td>
                        <td> <%= hotel.getCountry() %> </td>
                        <td> <%= hotel.getNumRooms() %> </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } %>

</body>

</html>
