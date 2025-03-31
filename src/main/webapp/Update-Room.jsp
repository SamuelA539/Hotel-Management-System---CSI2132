<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Room" %>
<%@ page import="HotelManagementSystem.DatabaseServices.RoomService" %>
<%@ page import="HotelManagementSystem.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    RoomService roomService = new RoomService();
    Room room = new Room(
        Integer.valueOf(request.getParameter("roomNum")),
        Float.valueOf(request.getParameter("price")),
        request.getParameter("capacity"),
        request.getParameter("viewType"),
        Boolean.valueOf(request.getParameter("extendableBtn")),
        Boolean.valueOf(request.getParameter("damagedBtn")),
        Integer.valueOf(request.getParameter("hotelID"))
    );

    Message msg;

    try {
        String val = roomService.updateRoom(room);
        if (val.contains("Error") || val.contains("error")) msg = new Message("error", val);
        else msg = new Message("success", val);
    } catch (Exception e) {
        e.printStackTrace();
        msg = new Message("error", "Error while updating Hotel");
    }

    ArrayList<Message> messages = new ArrayList<>();
    messages.add(msg);

    session.setAttribute("messages", messages);
    //response.sendRedirect("EditRooms.jsp");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <%=request.getParts ()%>
</body>
</html>