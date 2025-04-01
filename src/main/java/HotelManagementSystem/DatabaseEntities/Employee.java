package HotelManagementSystem.DatabaseEntities;

//todo:
//  return person?||person attributes through class?

public class Employee {

    private int employeeID;
    private Person employee;
    private int hotelID;


    /*Constructor*/
    //person obj
    public Employee(Person employee, int employeeID, int hotelID) {
        this.employee = employee;
        this.employeeID = employeeID;
        this.hotelID = hotelID;
    }

    public Employee(String firstName, String middleName, String lastName, String address, String idType, long personalID, int employeeID, int hotelID) {
        this.employee = new Person(firstName,middleName,lastName,address,idType,personalID);
        this.employeeID = employeeID;
        this.hotelID = hotelID;
    }



    /*Getters*/
    public int getEmployeeID() {return employeeID;}
    public Person getEmployee() {return employee;}
    public int getHotelID() {return hotelID; }


    /*Setters*/
    public void setEmployeeID(int employeeID) {this.employeeID = employeeID;}
    public void setEmployee(Person employee) {this.employee = employee;}
    public void setHotelID(int hotelID) {this.hotelID = hotelID;}
}
