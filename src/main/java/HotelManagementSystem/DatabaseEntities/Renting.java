package HotelManagementSystem.DatabaseEntities;

import java.sql.Date;

public class Renting {

    private int hotelID;
    private Date check_out_date;
    private Date check_in_date;
    private int rentalID;
    private int employee_id;
    private int room_num;
    private Booking booking;
    private int customer_id;

    public Renting(int rentalID, int employee_id, int room_num, int hotelID, int customer_id, Date check_in_date, Date check_out_date) {
        this.rentalID = rentalID;
        this.employee_id = employee_id;
        this.room_num = room_num;
        this.hotelID = hotelID;
        this.customer_id = customer_id;
        this.check_in_date = check_in_date;
        this.check_out_date = check_out_date;

    }

    /*Constructor*/

    /*Getter*/
    public int getRentalID() { return rentalID; }
    public int getEmployeeId() { return employee_id; }
    public int getRoomNum() { return room_num; }
    public int getHotelID() { return hotelID; }
    public int getCustomerId() { return customer_id; }
    public Date getCheckInDate() { return check_in_date; }
    public Date getCheckOutDate() { return check_out_date; }

    /*Setter*/
    public void setRentalID(int rentalID) { this.rentalID = rentalID; }
    public void setEmployeeId(int employee_id) { this.employee_id = employee_id; }
    public void setRoomNum(int room_num) { this.room_num = room_num; }
    public void setHotelID(int hotelID) { this.hotelID = hotelID; }
    public void setCustomerId(int customer_id) { this.customer_id = customer_id; }
    public void setCheckInDate(Date check_in_date) { this.check_in_date = check_in_date; }
    public void setCheckOutDate(Date check_out_date) { this.check_out_date = check_out_date; }

}
