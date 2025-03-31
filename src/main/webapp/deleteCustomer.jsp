<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="HotelManagementSystem.DatabaseServices.CustomerService" %>
<%@ page import="HotelManagementSystem.Message"%>
<%@ page import="java.util.ArrayList" %>

<%
Integer id = Integer.valueOf(request.getParameter("custID"));
CustomerService cs = new CustomerService();
String val = "";

try {
    val = cs.deleteCustomer(id);
    System.out.println(val);
}catch(Exception e){
    System.out.println(e.getMessage());
}

response.sendRedirect("EditCustomers.jsp");

%>