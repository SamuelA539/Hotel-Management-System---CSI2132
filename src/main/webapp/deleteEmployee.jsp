<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="HotelManagementSystem.DatabaseServices.EmployeeService" %>
<%@ page import="HotelManagementSystem.Message"%>
<%@ page import="java.util.ArrayList" %>

<%
Integer id = Integer.valueOf(request.getParameter("empID"));
EmployeeService es = new EmployeeService();
String val = "";

try {
    val = es.deleteEmployee(id);
    System.out.println(val);
}catch(Exception e){
    System.out.println(e.getMessage());
}

response.sendRedirect("EditEmployees.jsp");

%>