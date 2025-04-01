<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="HotelManagementSystem.DatabaseEntities.Employee" %>
<%@ page import="HotelManagementSystem.DatabaseServices.EmployeeService" %>
<%@ page import="HotelManagementSystem.Message" %>
<%@ page import="java.util.ArrayList" %>

<%
    EmployeeService empService = new EmployeeService();
    Employee emp = new Employee(
        request.getParameter("firstName"),
        request.getParameter("middleName"),
        request.getParameter("lastName"),
        request.getParameter("address"),
        request.getParameter("idType"),
        Integer.valueOf(request.getParameter("personalID")),
        Integer.valueOf(request.getParameter("employeeID")),
        Integer.valueOf(request.getParameter("hotelID"))
    );

    Message msg;

    try {
        String val = empService.createEmployee(emp);
        System.out.println("value: " + val);

        if (val.contains("Error") || val.contains("error")) msg = new Message("error", val);
        else msg = new Message("success", val);
    } catch (Exception e) {
        e.printStackTrace();
        msg = new Message("error", "Error while adding Customer");
    }

    response.sendRedirect("AddEmployee.jsp");
%>