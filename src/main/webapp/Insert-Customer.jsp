<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Customer" %>
<%@ page import="HotelManagementSystem.DatabaseServices.CustomerService" %>
<%@ page import="HotelManagementSystem.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    CustomerService custService = new CustomerService();
    Customer cust = new Customer(
        request.getParameter("firstName"),
        request.getParameter("middleName"),
        request.getParameter("lastName"),
        request.getParameter("address"),
        request.getParameter("idType"),
        Integer.valueOf(request.getParameter("personalID")),
        Integer.valueOf(request.getParameter("customerID"))
    );

    Message msg;

    try {
        String val = custService.createCustomer(cust);
        System.out.println("value" + val);

        if (val.contains("Error") || val.contains("error")) msg = new Message("error", val);
        else msg = new Message("success", val);
    } catch (Exception e) {
        e.printStackTrace();
        msg = new Message("error", "Error while adding Customer");
    }

    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    session.setAttribute("messages", messages);
    response.sendRedirect("AddCustomer.jsp");
%>