package HotelManagementSystem.DatabaseEntities;

//todo:
//  return person?||person attributes through class?

public class Customer {
    int customerID;
    private Person customer;


    /*Constructor*/
    public Customer(Person customer, int customerID) {
        this.customer = customer;
        this.customerID = customerID;
    }

    public Customer(String firstName, String middleName, String lastName, String address, String idType, int personalID, int customerID) {
        this.customer = new Person(firstName,middleName,lastName,address,idType,personalID);
        this.customerID = customerID;
    }

    /*Getters*/
    public int getCustomerID() {return customerID;}
    public Person getCustomer() {return customer;}

    /*Setters*/
    public void setCustomerID(int customerID) {this.customerID = customerID;}
    public void setCustomer(Person customer) {this.customer = customer;}

}
