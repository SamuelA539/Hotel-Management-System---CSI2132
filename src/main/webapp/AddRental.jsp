<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Renting" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RentingService" %>
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

    RentingService rentingService = new RentingService();
    List<Renting> rentals = null;
    try {
        rentals = rentingService.getRentals();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rental Management</title>
</head>

<body>
    <div id="editDialog" role="dialog">
        <h4>Add Rental<h4>

        <form id="addForm" method="POST" action="Insert-Rental.jsp">
            <label for="rentalID">Rental ID</label>
            <input type="text" name="rentalID" id="rentalID" ></br>

            <label for="employee_id">Employee ID</label>
            <input type="text" name="employee_id" id="employee_id" ></br>

            <label for="room_num">Room Number</label>
            <input type="text" name="room_num" id="room_num" ></br>

            <label for="hotelID">Hotel ID</label>
            <input type="text" name="hotelID" id="hotelID" ></br>

            <label for="customer_id">Customer ID</label>
            <input type="text" name="customer_id" id="customer_id" ></br>

            <label for="check_in_date">Check-in Date</label>
            <input type="date" name="check_in_date" id="check_in_date" ></br>

            <label for="check_out_date">Check-out Date</label>
            <input type="date" name="check_out_date" id="check_out_date" ></br>
        </form>
        <button type="submit" form="addForm">Add Rental</button>
    </div>

    <h2>Rentals</h2>

    <br/>

    <% if (rentals == null || rentals.size() == 0) { %>
        <h4>No Rentals Found</h4>
    <%} else {%>

        <table>
            <thead>
                <tr>
                    <th>Rental ID</th>
                    <th>Employee ID</th>
                    <th>Room Number</th>
                    <th>Hotel ID</th>
                    <th>Customer ID</th>
                    <th>Check-in Date</th>
                    <th>Check-out Date</th>
                </tr>
            </thead>

            <tbody>
                <% for (Renting rental: rentals) {%>
                    <tr>
                        <td><%= rental.getRentalID() %></td>
                        <td><%= rental.getEmployeeId() %></td>
                        <td><%= rental.getRoomNum() %></td>
                        <td><%= rental.getHotelID() %></td>
                        <td><%= rental.getCustomerId() %></td>
                        <td><%= rental.getCheckInDate() %></td>
                        <td><%= rental.getCheckOutDate() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } %>
</body>
</html>