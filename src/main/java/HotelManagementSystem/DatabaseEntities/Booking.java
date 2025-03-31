package HotelManagementSystem.DatabaseEntities;

import java.util.Date;

public class Booking {

    private int room_num;
    private int hotelID;
    private int bookingID;
    private Date checkInDate;
    private Date checkOutDate;
    private Date bookingDate;

    private int customer;

    /*Constructor*/
    public Booking(int bookingID, Date checkInDate, Date checkOutDate, Date bookingDate, int room_num, int hotelID, int customer) {
        this.bookingID = bookingID;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
        this.bookingDate = bookingDate;
        this.room_num = room_num;
        this.hotelID = hotelID;
        this.customer = customer;
    }

    /*Getters*/
    public int getBookingID() {return bookingID;}
    public Date getCheckInDate() {return checkInDate;}
    public Date getCheckOutDate() {return checkOutDate;}
    public Date getBookingDate() {return bookingDate;}
    public int getCustomer() {return customer;}
    public int getRoomNum() { return room_num;}
    public int getHotelID() { return hotelID;}

    /*Setters*/
    public void setBookingDate(Date bookingDate) {this.bookingDate = bookingDate;}
    public void setBookingID(int bookingID) {this.bookingID = bookingID;}
    public void setCheckInDate(Date checkInDate) {this.checkInDate = checkInDate;}
    public void setCheckOutDate(Date checkOutDate) {this.checkOutDate = checkOutDate;}
    public void setCustomer(Customer customer) {this.customer = customer.getCustomerID();}

}
