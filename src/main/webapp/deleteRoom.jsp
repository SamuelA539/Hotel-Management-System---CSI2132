<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
<%@ page import="HotelManagementSystem.Message"%>
<%@ page import="java.util.ArrayList" %>

<%
Integer id = Integer.valueOf(request.getParameter("hotelId"));
Integer num = Integer.valueOf(request.getParameter("roomNum"));
RoomService rs = new RoomService();
String val = "";

try {
    val = rs.deleteRoom(id, num);
    System.out.println(val);
}catch(Exception e){
    System.out.println(e.getMessage());
}

response.sendRedirect("EditRooms.jsp");

%>