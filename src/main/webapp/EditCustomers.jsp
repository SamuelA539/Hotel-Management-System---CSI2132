<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Customer" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Person" %>
<%@ page import="HotelManagementSystem.DatabaseServices.CustomerService" %>
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
    <h2>Customer Info</h2>x
    <button>Add Customer</button>
    <br/>
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
                        <td><button>Edit</button></td>
                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

</body>

</html>
