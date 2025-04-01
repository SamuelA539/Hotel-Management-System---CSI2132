package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Customer;
import HotelManagementSystem.DatabaseEntities.Person;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class CustomerService {

    public List<Customer> getCustomers() throws Exception {
        Database db = new Database();
        List<Customer> customers = new ArrayList<Customer>();

        String query = "SELECT * FROM customer";

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

                    Customer customer = new Customer(
                            rs.getString("firstname"),
                            rs.getString("middlename"),
                            rs.getString("lastname"),
                            rs.getString("address"),
                            rs.getString("id_type"),
                            rs.getLong("idnumber"),
                            rs.getInt("customerID")
                    );
                    customers.add(customer);
                }
                rs.close();
            }
            stmt.close();
            con.close();
            db.close();

            //Exception if 0 rooms returned
            if (customers.isEmpty()) {
                System.out.println("0 rooms");
                //throw new RuntimeException("0 Rooms retrieved");
            }

            return customers;
        } catch (Exception e) {
            throw new Exception("Error Getting Customers: " + e.getMessage());
        }
    }

    //create Customer
    public String createCustomer(Customer cust) throws Exception{
        String message = "";

        Connection con = null;
        Database db = new Database();

        String query = "INSERT INTO CUSTOMER " +
                "(customerID, firstName, middleName, lastName, address, ID_type, IDnumber, registration_date)" +
                "VALUES (?,?,?,?,?,?,?,?);";

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setInt(1, cust.getCustomerID());
            stmt.setString(2, cust.getCustomer().getFirstName());
            stmt.setString(3, cust.getCustomer().getMiddleName());
            stmt.setString(4, cust.getCustomer().getLastName());
            stmt.setString(5,  cust.getCustomer().getAddress());
            stmt.setString(6,  cust.getCustomer().getIdType());
            stmt.setLong(7,  cust.getCustomer().getPersonalID());

            stmt.setDate(8, Date.valueOf(LocalDate.now())); //todo TEST

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Customer Insertion Query Executed Successfully");
            } else {
                System.out.println("Error in Customer Insertion Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Inserting Customer: "+ e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message= "Successfully Inserted Customer";
        }
        return message;
    }

    //update Customer
    public String updateCustomer(Customer cust) throws Exception{
        String message = "";

        Connection con = null;
        Database db = new Database();


        String query = "UPDATE Customer SET " +
                "firstName=?, middleName=?, lastName=?, address=?, ID_type=?, IDnumber=? " +
                "WHERE CustomerID=?;";
        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(query);


            stmt.setString(1, cust.getCustomer().getFirstName());
            stmt.setString(2, cust.getCustomer().getMiddleName());
            stmt.setString(3, cust.getCustomer().getLastName());
            stmt.setString(4,  cust.getCustomer().getAddress());
            stmt.setString(5,  cust.getCustomer().getIdType());
            stmt.setLong(6,  cust.getCustomer().getPersonalID());

            stmt.setInt(7, cust.getCustomerID());

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Customer Update Query Executed Successfully");
            } else {
                System.out.println("Error in Customer Update Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error Inserting Customer: "+ e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message= "Successfully Inserted Customer";
        }
        return message;
    }

    public String deleteCustomer(int custID) throws Exception {
        String message = "";
        Connection con = null;

        String sql = "DELETE FROM customer WHERE customerID=?;";
        Database db = new Database();

        try {
            con = db.getConncetion();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, custID);

            int out = stmt.executeUpdate();
            if (out == 1) {
                System.out.println("Customer Deletion Query Executed Successfully");
            } else {
                System.out.println("Error in Customer Deletion Query Execution");
            }

            stmt.close();

        } catch (Exception e) {
            message = "Error while deleting Customer: " + e.getMessage();
        } finally {
            if (con != null) con.close();
            if (message.isEmpty()) message = "Customer successfully deleted";
        }

        return message;
    }

//
    public static void main(String[] args) throws Exception{
        CustomerService cs = new CustomerService();

        Person p = new Person("first", "M.", "last","testStreet","passport",999 );
        Customer test = new Customer(p, 199 );

//        adding Customer(WORKS)
        cs.createCustomer(test);

//        //Updating customer ()
//        test.getCustomer().setFirstName("Tom");
//        String res = cs.updateCustomer(test);
//        System.out.println(res);
//
//        //deleting customer
//        res = cs.deleteCustomer(test.getCustomerID());
//        System.out.println(res);
        List<Customer> custs = cs.getCustomers();
        for (Customer cust: custs) {
            System.out.println(cust.getCustomerID());
        }
    }

}
