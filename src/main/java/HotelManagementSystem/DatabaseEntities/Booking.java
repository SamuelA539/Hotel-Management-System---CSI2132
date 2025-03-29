package HotelManagementSystem.DatabaseEntities;

import java.util.Date;

public class Booking {

    private int bookingID;
    private Date checkInDate;
    private Date checkOutDate;
    private Date bookingDate;

    private Customer customer;

    /*Constructor*/
    public Booking(int bookingID, Date checkInDate, Date checkOutDate, Date bookingDate, Customer customer) {
        this.bookingID = bookingID;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.bookingDate = bookingDate;
        this.customer = customer;
    }

    /*Getters*/
    public int getBookingID() {return bookingID;}
    public Date getCheckInDate() {return checkInDate;}
    public Date getCheckOutDate() {return checkOutDate;}
    public Date getBookingDate() {return bookingDate;}
    public Customer getCustomer() {return customer;}

    /*Setters*/
    public void setBookingDate(Date bookingDate) {this.bookingDate = bookingDate;}
    public void setBookingID(int bookingID) {this.bookingID = bookingID;}
    public void setCheckInDate(Date checkInDate) {this.checkInDate = checkInDate;}
    public void setCheckOutDate(Date checkOutDate) {this.checkOutDate = checkOutDate;}
    public void setCustomer(Customer customer) {this.customer = customer;}
}
