package HotelManagementSystem.DatabaseServices;

import HotelManagementSystem.Database;
import HotelManagementSystem.DatabaseEntities.Customer;
import HotelManagementSystem.DatabaseEntities.Person;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;

public class CustomerService {

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
            stmt.setInt(7,  cust.getCustomer().getPersonalID());

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
            stmt.setInt(6,  cust.getCustomer().getPersonalID());

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
//    public static void main(String[] args) throws Exception{
//        CustomerService cs = new CustomerService();
//
//        Person p = new Person("first", "M.", "last","testStreet","passport",999 );
//        Customer test = new Customer(p, 199 );
//
////        adding Customer(WORKS)
//        cs.createCustomer(test);
//
//        //Updating customer ()
//        test.getCustomer().setFirstName("Tom");
//        String res = cs.updateCustomer(test);
//        System.out.println(res);
//
//        //deleting customer
//        res = cs.deleteCustomer(test.getCustomerID());
//        System.out.println(res);
//    }

}
