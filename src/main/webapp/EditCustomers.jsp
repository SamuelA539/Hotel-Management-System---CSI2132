<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Customer" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Person" %>
<%@ page import="HotelManagementSystem.DatabaseServices.CustomerService" %>
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
            <h4>Edit Customer<h4>

            <form id="dialogForm">
                <input type="text" name="customerID" id="customerID" readonly></br>

                <input type="text" name="firstName" id="firstName" >
                <input type="text" name="middleName" id="middleName" >
                <input type="text" name="lastName" id="lastName" >
                <input type="text" name="address" id="address" ></br>

                <input type="text" name="idType" id="idType" >
                <input type="text" name="personalID" id="personalID" ></br>

            </form>

            <button type="submit" form="dialogForm">Update</button>
            <button type="button" data-dismiss="dialog">Close(Not working)</button>
        </div>

    <h2>Customer Info</h2>

    <button >Add Customer</button>
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
                        <td>
                            <a onclick="setDialogFields(this)"
                                data-tggle="dialog"
                                data-custid="<%= cust.getCustomerID() %>"
                                data-first="<%= cust.getCustomer().getFirstName() %>"
                                data-middle="<%= cust.getCustomer().getMiddleName() %> "
                                data-last="<%= cust.getCustomer().getLastName() %>"
                                data-address="<%= cust.getCustomer().getAddress() %>"
                                data-idtype="<%= cust.getCustomer().getIdType() %>"
                                data-idnum="<%= cust.getCustomer().getPersonalID() %>"
                                data-target="#editDialog">
                                    <button> Edit </button>
                            </a>
                        </td>

                        <form method="POST" action="deleteCustomer.jsp">
                            <td>
                                <input type="hidden" value="<%= cust.getCustomerID() %>" name="custID">
                                <button style="all: unset; cursor: pointer;">Delete Customer</button>
                            </td>
                        </form>

                    </tr>
                <% } %>

            </tbody>

        </table>
    <% } %>

     <script>
                function setDialogFields(row) {
                    document.getElementById("customerID").value = row.dataset.custid;
                    document.getElementById("firstName").value = row.dataset.first;
                    document.getElementById("middleName").value = row.dataset.middle;
                    document.getElementById("lastName").value = row.dataset.last;
                    document.getElementById("address").value = row.dataset.address;
                    document.getElementById("idType").value = row.dataset.idtype;
                    document.getElementById("personalID").value = row.dataset.idnum;

                    document.getElementById("dialogForm").action = "Update-Customer.jsp";
                    document.getElementById("dialogForm").method = "POST";
                }
     </script>

</body>

</html>
