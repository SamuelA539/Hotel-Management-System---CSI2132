<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="HotelManagementSystem.DatabaseEntities.Booking" %>
<%@ page import="HotelManagementSystem.DatabaseServices.BookingService" %>
<%@ page import="HotelManagementSystem.Message" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    BookingService bookingService = new BookingService();

    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    Booking booking = new Booking(
        Integer.valueOf(request.getParameter("bookingID")),
        dateFormat.parse(request.getParameter("checkInDate")),
        dateFormat.parse(request.getParameter("checkOutDate")),
        dateFormat.parse(request.getParameter("bookingDate")),
        Integer.valueOf(request.getParameter("roomNum")),
        Integer.valueOf(request.getParameter("hotelID")),
        Integer.valueOf(request.getParameter("customer_id"))
    );

    Message msg;

    try {
        boolean success = bookingService.createBooking(booking);
        if (success) {
            msg = new Message("success", "Booking created successfully");
        } else {
            msg = new Message("error", "Failed to create booking");
        }
    } catch (Exception e) {
        System.out.println(e.getMessage());
        e.printStackTrace();
        msg = new Message("error", "Error while creating booking: " + e.getMessage());
    }

    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    session.setAttribute("messages", messages);
    response.sendRedirect("AddBooking.jsp");
%>