package HotelManagementSystem.DatabaseEntities;

public class Renting {

    private int rentalID;

    private Employee employee;
    private Room room;
    private Booking booking;
    private Customer customer;

    /*Constructor*/

    /*Getter*/
    public int getRentalID() {return rentalID;}
    public Employee getEmployee() {return employee;}
    public Room getRoom() {return room;}
    public Booking getBooking() {return booking;}
    public Customer getCustomer() {return customer;}

    /*Setter*/
    public void setRentalID(int rentalID) {this.rentalID = rentalID;}
    public void setEmployee(Employee employee) {this.employee = employee;}
    public void setRoom(Room room) {this.room = room;}
    public void setBooking(Booking booking) {this.booking = booking;}
    public void setCustomer(Customer customer) {this.customer = customer;}

}
