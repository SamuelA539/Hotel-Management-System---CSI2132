package HotelManagementSystem.DatabaseEntities;

//todo:
//  return person?||person attributes through class?

public class Employee {

    private int employeeID;
    private Person employee;
    //Arraylist of roles?

    /*Constructor*/
    //person obj
    public Employee(Person employee, int employeeID) {
        this.employee = employee;
        this.employeeID = employeeID;
    }

    public Employee(String firstName, String middleName, String lastName, String address, String idType, int personalID, int employeeID) {
        this.employee = new Person(firstName,middleName,lastName,address,idType,personalID);
        this.employeeID = employeeID;
    }



    /*Getters*/
    public int getEmployeeID() {return employeeID;}
    public Person getEmployee() {return employee;}


    /*Setters*/
    public void setEmployeeID(int employeeID) {this.employeeID = employeeID;}
    public void setEmployee(Person employee) {this.employee = employee;}

}
