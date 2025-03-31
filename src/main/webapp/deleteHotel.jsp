<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="HotelManagementSystem.DatabaseServices.HotelService" %>
<%@ page import="HotelManagementSystem.Message"%>
<%@ page import="java.util.ArrayList" %>

<%
Integer id = Integer.valueOf(request.getParameter("hotelID"));
HotelService hs = new HotelService();
String val = "";

try {
    val = hs.deleteHotel(id);
    System.out.println(val);
}catch(Exception e){
    System.out.println(e.getMessage());
}

response.sendRedirect("EditHotel.jsp");

%>