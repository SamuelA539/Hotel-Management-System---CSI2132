<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Employee" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Person" %>
<%@ page import="HotelManagementSystem.DatabaseServices.EmployeeService" %>
<%@ page import="java.util.ArrayList" %>

<%
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
                        <td><button>Edit</button></td>
                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

</body>

</html>
