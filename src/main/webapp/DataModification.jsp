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

    <div>
        <a href="EditHotel.jsp">
            <button> View Hotels </button>
        </a>
        <a href="AddHotel.jsp">
            <button> Add Hotels </button>
        </a>
    </div>

    <br/>

    <div>
        <a href="EditRooms.jsp">
            <button> Edit Rooms </button>
        </a>
        <a href="AddRoom.jsp">
            <button> Add Rooms </button>
        </a>
    </div>

    <br/>

    <div>
        <a href="EditCustomers.jsp">
            <button> Edit Customers </button>
        </a>

        <a href="AddCustomer.jsp">
            <button> Add Customers </button>
        </a>
    </div>

    <br/>

    <div>
        <a href="EditEmployees.jsp">
            <button> Edit Employees </button>
        </a>

        <a href="AddEmployee.jsp">
            <button> Add Employees </button>
        </a>
    </div>

</body>