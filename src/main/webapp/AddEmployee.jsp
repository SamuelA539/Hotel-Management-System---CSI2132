<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Employee" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Person" %>
<%@ page import="HotelManagementSystem.DatabaseServices.EmployeeService" %>
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


    EmployeeService employeeService = new EmployeeService();
    List<Employee> employees = null;
    try {
        Person p = new Person("first", "M.", "last","testStreet","passport",999 );
        Employee test = new Employee(p, 999, 101);
        employeeService.createEmployee(test);
        employees = employeeService.getEmployees();
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
        <h4>Add Employee<h4>

        <form id="addForm" method="POST" action="Insert-Employee.jsp">
            <label for="employeeID">employeeID</label>
            <input type="text" name="employeeID" id="employeeID"></br>

            <label for="firstName">firstName</label>
            <input type="text" name="firstName" id="firstName" ></br>

            <label for="middleName">middleName</label>
            <input type="text" name="middleName" id="middleName" ></br>

            <label for="lastName">lastName</label>
            <input type="text" name="lastName" id="lastName" ></br>

            <label for="address">address</label>
            <input type="text" name="address" id="address" ></br>

               <label for="idType">idType</label>
            <input type="text" name="idType" id="idType" ></br>

            <label for="personalID">personalID</label>
            <input type="text" name="personalID" id="personalID" ></br>

            <label for="hotelID">hotelID</label>
            <input type="text" name="hotelID" id="hotelID">
        </form>

        <button type="submit" form="addForm">Add</button>
    </div>




    <h2>Employee Info</h2>

    <button>Add Employee</button>
    <br/>


    <% if (employees == null || employees.size() == 0) { %>
        <h4>No Employee Found</h4>
    <%} else {%>

        <table>
            <thead>
                <tr>
                    <th>Employee ID</th>
                    <th>Hotel ID</th>

                    <th> </th>
                </tr>
            </thead>

            <tbody>

                <% for (Employee emp: employees) {%>
                    <tr>
                        <td> <%= emp.getEmployeeID() %> </td>
                        <td> <%= emp.getHotelID() %> </td>
                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

</body>

</html>
