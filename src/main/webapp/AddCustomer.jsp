<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Customer" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Person" %>
<%@ page import="HotelManagementSystem.DatabaseServices.CustomerService" %>
<%@ page import="HotelManagementSystem.Message"%>
<%@ page import="java.util.ArrayList" %>

<%
    CustomerService customerService = new CustomerService();
    List<Customer> customers = null;
    try {
        Person p = new Person("first", "M.", "last","testStreet","passport",999 );
        Customer test = new Customer(p, 199 );
        customerService.createCustomer(test);
        customers = customerService.getCustomers();

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
            <h4>Add Customer<h4>

            <form id="addForm" method="POST" action="Insert-Customer.jsp">
                 <input type="text" name="customerID" id="customerID" >
                  <label for="customerID">customerID</label><br>

                 <input type="text" name="firstName" id="firstName" >
                  <label for="firstName">firstName</label><br>

                 <input type="text" name="middleName" id="middleName" >
                  <label for="middleName">middleName</label><br>

                 <input type="text" name="lastName" id="lastName" >
                  <label for="lastName">lastName</label><br>

                 <input type="text" name="address" id="address" >
                  <label for="address">address</label><br>

                 <input type="text" name="idType" id="idType" >
                  <label for="idType">idType</label><br>
                 <input type="text" name="personalID" id="personalID" >
                  <label for="personalID">personalID</label><br>
            </form>

            <button type="submit" form="addForm">Add</button>
        </div>

        <% if (customers == null || customers.size() == 0) { %>
                <h4>No Customers Found</h4>
            <%} else {%>
                <table>
                    <thead>
                        <tr>
                            <th>Customer ID</th>
                            <th>Last Name</th>
                            <th> </th>
                        </tr>
                    </thead>

                    <tbody>

                        <% for (Customer cust: customers) {%>
                            <tr>
                                <td> <%= cust.getCustomerID() %> </td>
                                <td> <%= cust.getCustomer().getLastName() %> </td>
                            </tr>
                        <% } %>

                    </tbody>

                </table>
            <% } %>

</body>

</html>