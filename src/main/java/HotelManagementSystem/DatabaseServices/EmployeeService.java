package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Employee;
import HotelManagementSystem.DatabaseEntities.Person;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class EmployeeService {
    //TODO:
    // INSERT & UPDATE & DELETE related tables

    //create Employee
    public String createEmployee(Employee emp) throws Exception{
        String message = "";

        Connection con = null;
        Database db = new Database();

        String query = "INSERT INTO EMPLOYEE " +
                "(EmployeeID, firstName, middleName, lastName, address, ID_type, personalID, hotel_id)" +
                "VALUES (?,?,?,?,?,?,?,?);";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setInt(1, emp.getEmployeeID());
            stmt.setString(2, emp.getEmployee().getFirstName());
            stmt.setString(3, emp.getEmployee().getMiddleName());
            stmt.setString(4, emp.getEmployee().getLastName());
            stmt.setString(5,  emp.getEmployee().getAddress());
            stmt.setString(6,  emp.getEmployee().getIdType());
            stmt.setInt(7,  emp.getEmployee().getPersonalID());
            stmt.setInt(8,  emp.getHotelID());

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Employee Insertion Query Executed Successfully");
            } else {
                System.out.println("Error in Employee Insertion Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Inserting Employee: "+ e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message= "Successfully Inserted Employee";
        }
        return message;
    }

    //update Employee
        //TODO what attributes can change? (hotelID)
    public String updateEmployee(Employee emp) throws Exception{
        String message = "";

        Connection con = null;
        Database db = new Database();


        String query = "UPDATE Employee SET firstName=?, middleName=?, lastName=?, address=?, ID_type=?, personalID=? " +
                "WHERE hotel_id=? and EmployeeID=?;";
        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(query);


            stmt.setString(1, emp.getEmployee().getFirstName());
            stmt.setString(2, emp.getEmployee().getMiddleName());
            stmt.setString(3, emp.getEmployee().getLastName());
            stmt.setString(4,  emp.getEmployee().getAddress());
            stmt.setString(5,  emp.getEmployee().getIdType());
            stmt.setInt(6,  emp.getEmployee().getPersonalID());

            stmt.setInt(7,  emp.getHotelID());
            stmt.setInt(8, emp.getEmployeeID());

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Employee Update Query Executed Successfully");
            } else {
                System.out.println("Error in Employee Update Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Inserting Employee: "+ e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message= "Successfully Inserted Employee";
        }
        return message;
    }

    public String deleteEmployee(int empID, int hotelID) throws Exception {
        String message = "";
        Connection con = null;

        Database db = new Database();
        String sql = "DELETE FROM employee WHERE EmployeeID=?";
        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setInt(1, empID);
            //stmt.setInt(2, hotelID);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Hotel Employee Query Executed Successfully");
            } else {
                System.out.println("Error in Employee Deletion Query Execution");
            }

            stmt.close();
        } catch (Exception e) {
            message = "Error deleteing Employee: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Successfully deleted Employee";
        }
        return message;
    }

//    public static void main(String[] args) throws Exception {
//        EmployeeService es = new EmployeeService();
//
//        // adding employee to existing hotel(WORKS)
//        Person p = new Person("first", "M.", "last","testStreet","passport",999 );
//        Employee test = new Employee(p, 999, 101);
//        es.createEmployee(test);
//
//        // updating employee with existing hotel(WORKS)
//        test.getEmployee().setFirstName("Tim");
//        String res = es.updateEmployee(test);
//        System.out.println(res);
//
//        res = es.deleteEmployee(test.getEmployeeID(), 0);
//        System.out.println(res);
//    }


}
