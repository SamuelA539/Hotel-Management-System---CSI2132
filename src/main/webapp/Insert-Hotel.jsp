<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Hotel" %>
<%@ page import="HotelManagementSystem.DatabaseServices.HotelService" %>
<%@ page import="HotelManagementSystem.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    HotelService hotelService = new HotelService();
    Hotel hotel = new Hotel(
        Integer.valueOf(request.getParameter("hotelID")),
        request.getParameter("streetAddress"),
        request.getParameter("city"),
        request.getParameter("country"),
        Integer.valueOf(request.getParameter("numRooms")),
        Integer.valueOf(request.getParameter("hotelChainID"))
    );

    Message msg;

    try {
        String val = hotelService.createHotel(hotel);
        System.out.println(val);
        if (val.contains("Error") || val.contains("error")) msg = new Message("error", val);
        else msg = new Message("success", val);
    } catch (Exception e) {
        System.out.println(e.getMessage());
        e.printStackTrace();
        msg = new Message("error", "Error while updating Hotel");
    }

    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    session.setAttribute("messages", messages);
    response.sendRedirect("AddHotel.jsp");
%>