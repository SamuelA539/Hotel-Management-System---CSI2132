package HotelManagementSystem.DatabaseEntities;

public class Room {

    private int roomNum;
    private float price;
    private String capacity;
    private String viewType;
    private boolean extendable;
    private boolean damaged;
    private int hotelID;

    //int hotelID
    //arrayList amenities?

    /*Constructor*/
    public Room(int roomNum, float price, String capacity, String viewType, boolean extendable, boolean damaged, int hotelID) {
        this.roomNum = roomNum;
        this.price = price;
        this.capacity = capacity;
        this.viewType = viewType;
        this.extendable = extendable;
        this.damaged = damaged;
        this.hotelID = hotelID;
    }

    /*Getters*/
    public int getRoomNum() {return roomNum;}
    public float getPrice() {return price;}
    public String getCapacity() {return capacity;}
    public String getViewType() {return viewType;}
    public boolean isExtendable() {return extendable;}
    public boolean isDamaged() {return damaged;}
    public int getHotelID() { return hotelID; }

    /*Setters*/
    public void setRoomNum(int roomNum) {this.roomNum = roomNum;}
    public void setPrice(float price) {this.price = price;}
    public void setCapacity(String capacity) {this.capacity = capacity;}
    public void setViewType(String viewType) {this.viewType = viewType;}
    public void setExtendable(boolean extendable) {this.extendable = extendable;}
    public void setDamaged(boolean damaged) {this.damaged = damaged;}
    public void setHotelID(int hotelID) { this.hotelID = hotelID; }
}
