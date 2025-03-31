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
        <h4>Edit Employee<h4>

        <form id="dialogForm">
            <input type="text" name="employeeID" id="employeeID" readonly></br>

            <input type="text" name="firstName" id="firstName" >
            <input type="text" name="middleName" id="middleName" >
            <input type="text" name="lastName" id="lastName" >
            <input type="text" name="address" id="address" ></br>

            <input type="text" name="idType" id="idType" >
            <input type="text" name="personalID" id="personalID" ></br>

            <input type="text" name="hotelID" id="hotelID">
        </form>

        <button type="submit" form="dialogForm">Update</button>
        <button type="button" data-dismiss="dialog">Close(Not working)</button>
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
                        <td>
                            <a onclick="setDialogFields(this)"
                                data-tggle="dialog"
                                data-empid="<%= emp.getEmployeeID() %>"
                                data-first="<%= emp.getEmployee().getFirstName() %>"
                                data-middle="<%= emp.getEmployee().getMiddleName() %> "
                                data-last="<%= emp.getEmployee().getLastName() %>"
                                data-address="<%= emp.getEmployee().getAddress() %>"
                                data-idtype="<%= emp.getEmployee().getIdType() %>"
                                data-idnum="<%= emp.getEmployee().getPersonalID() %>"
                                data-hotelid="<%= emp.getHotelID() %>"
                                data-target="#editDialog">
                                    <button> Edit </button>
                            </a>
                        </td>

                        <form method="POST" action="deleteEmployee.jsp">
                            <td>
                                <input type="hidden" value="<%= emp.getEmployeeID() %>" name="empID">
                                <button style="all: unset; cursor: pointer;">Delete Employee</button>
                            </td>
                        </form>

                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

    <script>

            function setDialogFields(row) {
                document.getElementById("employeeID").value = row.dataset.empid;
                document.getElementById("firstName").value = row.dataset.first;
                document.getElementById("middleName").value = row.dataset.middle;
                document.getElementById("lastName").value = row.dataset.last;
                document.getElementById("address").value = row.dataset.address;
                document.getElementById("idType").value = row.dataset.idtype;
                document.getElementById("personalID").value = row.dataset.idnum;
                document.getElementById("hotelID").value = row.dataset.hotelid;

                document.getElementById("dialogForm").action = "Update-Employee.jsp";
                document.getElementById("dialogForm").method = "POST";
            }
        </script>

</body>

</html>
