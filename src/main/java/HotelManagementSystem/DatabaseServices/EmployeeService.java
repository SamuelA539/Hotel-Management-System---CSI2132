package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Customer;
import HotelManagementSystem.DatabaseEntities.Employee;
import HotelManagementSystem.DatabaseEntities.Person;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmployeeService {

    public List<Employee> getEmployees() throws Exception{
        Database db = new Database();
        List<Employee> employees = new ArrayList<Employee>();

        String query = "SELECT * FROM employee";

        try(Connection con = db.getConncetion()) {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            System.out.println(rs == null);

            //ResultSet Exception handling
            if (rs == null) {
                System.out.println("rs null");
                throw new RuntimeException("Result Set Null");
                //System.out.println(rs.getStatement());
            } else {
                Exception warning = rs.getWarnings();
                if (warning != null) {
                    System.out.println(warning.getMessage());
                    throw warning;
                }

                while (rs.next()) {
//                    System.out.println("row: " + rs.getRow());
//                    System.out.println("Was null: " + rs.wasNull());
//                    System.out.println(rs.getInt("room_number"));

                    Employee emp = new Employee(
                            rs.getString("firstName"),
                            rs.getString("middleName"),
                            rs.getString("lastName"),
                            rs.getString("address"),
                            rs.getString("ID_type"),
                            rs.getLong("personalID"),
                            rs.getInt("EmployeeID"),
                            rs.getInt("hotel_id")
                    );
                    employees.add(emp);
                }
                rs.close();
            }
            stmt.close();
            con.close();
            db.close();

            //Exception if 0 rooms returned
            if (employees.isEmpty()) {
                System.out.println("0 rooms");
                //throw new RuntimeException("0 Rooms retrieved");
            }
        } catch (Exception e) {
            throw new Exception("Error Getting Customers: " + e.getMessage());
        }
        return employees;
    }

    //getEmployeeRoles(int empID) throws Exception {}

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
            stmt.setLong(7,  emp.getEmployee().getPersonalID());
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

    //what attributes can change(hotelID)?
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
            stmt.setLong(6,  emp.getEmployee().getPersonalID());

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

    public String deleteEmployee(int empID) throws Exception {
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
                System.out.println("Hotel Employee Deletion Query Executed Successfully");
            } else {
                System.out.println("Error in Employee Deletion Query Execution");
            }

            stmt.close();
        } catch (Exception e) {
            message = "Error deleting Employee: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Successfully deleted Employee";
        }
        return message;
    }


    //Related Table services
    String employeeRoleRelation = "employeerole";
    public String insertEmployeeRole(int empID, String role) throws Exception {
        String message = "";

        Connection con = null;
        Database db = new Database();

        String sql = "INSERT INTO " +
                employeeRoleRelation +
                " (EmployeeID, role) VALUES " +
                "(?, ?)";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setInt(1,empID);
            stmt.setString(2,role);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("EmployeeRole INSERT Query Executed Successfully");
            } else {
                System.out.println("Error in EmployeeRole INSERT Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Inserting EmployeeRole: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "EmployeeRole Inserted Successfully";
        }

        return message;
    }

    public String deleteEmployeeRole(int empID, String role) throws Exception {
        String message = "";

        Connection con = null;
        Database db = new Database();

        String sql = "DELETE from " +
                employeeRoleRelation +
                "WHERE EmployeeID=? and role=?";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);

            stmt.setInt(1,empID);
            stmt.setString(2,role);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("EmployeeRole Delete Query Executed Successfully");
            } else {
                System.out.println("Error in EmployeeRole Delete Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Deleting EmployeeRole: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "EmployeeRole Deleted successfully";
        }

        return message;
    }



//
    public static void main(String[] args) throws Exception {
        EmployeeService es = new EmployeeService();
        String res = "";

        // adding employee to existing hotel(WORKS)
        Person p = new Person("first", "M.", "last","testStreet","passport",999 );
        Employee test = new Employee(p, 999, 101);
        res = es.createEmployee(test);
        System.out.println(res);


        // updating employee with existing hotel(WORKS)
        test.getEmployee().setFirstName("Tim");
        res = es.updateEmployee(test);
        System.out.println(res);

        //insert Role
//        res = es.insertEmployeeRole(test.getEmployeeID(), "test");
//        System.out.println(res);

        //delete Role
//        res = es.deleteEmployeeRole(test.getEmployeeID(),"test");
//        System.out.println(res);

        //delete emp
//        res = es.deleteEmployee(test.getEmployeeID());
//        System.out.println(res);

        List<Employee> emps = es.getEmployees();
        for (Employee emp : emps) {
            System.out.println(emp.getEmployeeID());
        }
    }


}
