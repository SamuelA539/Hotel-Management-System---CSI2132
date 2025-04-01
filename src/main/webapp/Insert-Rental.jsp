<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="HotelManagementSystem.DatabaseEntities.Renting" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RentingService" %>
<%@ page import="HotelManagementSystem.Message" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    RentingService rentingService = new RentingService();

    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    Renting rental = new Renting(
        Integer.valueOf(request.getParameter("rentalID")),
        Integer.valueOf(request.getParameter("employee_id")),
        Integer.valueOf(request.getParameter("room_num")),
        Integer.valueOf(request.getParameter("hotelID")),
        Integer.valueOf(request.getParameter("customer_id")),
        dateFormat.parse(request.getParameter("check_in_date")),
        dateFormat.parse(request.getParameter("check_out_date"))
    );

    Message msg;

    try {
        boolean success = rentingService.createRentals(rental);
        if (success) {
            msg = new Message("success", "Rental created successfully");
        } else {
            msg = new Message("error", "Failed to create rental");
        }
    } catch (Exception e) {
        System.out.println(e.getMessage());
        e.printStackTrace();
        msg = new Message("error", "Error while creating rental: " + e.getMessage());
    }

    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    session.setAttribute("messages", messages);
    response.sendRedirect("AddRental.jsp");
%>