<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Room" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
<%@ page import="java.util.ArrayList" %>

<%
    //Services for page
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <h2>Database Modification Page</h2>


    <a href="EditHotel.jsp">
        <button> View Hotels </button>
    </a>

    <a href="EditRooms.jsp">
    <button> Edit Rooms </button>
    </a>

    <a href="EditCustomers.jsp">
    <button> Edit Customers </button>
    </a>

    <a href="EditEmployees.jsp">
    <button> Edit Employees </button>
    </a>

</body>