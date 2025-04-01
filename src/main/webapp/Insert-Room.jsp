<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Room" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
<%@ page import="HotelManagementSystem.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    Boolean extendable = false;
    Boolean damaged = false;

    if (request.getParameter("extendable") != null && request.getParameter("extendable").equals("on")) extendable = true;

    if (request.getParameter("damaged") != null && request.getParameter("damaged").equals("on")) damaged = true;

    RoomService roomService = new RoomService();
    Room room = new Room(
        Integer.valueOf(request.getParameter("roomNum")),
        Float.valueOf(request.getParameter("price")),
        request.getParameter("capacity"),
        request.getParameter("viewType"),
        extendable,
        damaged,
        Integer.valueOf(request.getParameter("hotelID"))
    );

    Message msg;

    try {
        String val = roomService.createRoom(room);
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
    response.sendRedirect("AddRoom.jsp");
%>

