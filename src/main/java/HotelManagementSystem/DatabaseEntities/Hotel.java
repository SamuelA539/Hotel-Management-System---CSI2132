package HotelManagementSystem.DatabaseEntities;

public class Hotel {

    private int hotelChainID;
    private int hotelID;
    private int numRooms;
    private String streetAddress;
    private String city;
    private String country;

    //Arraylist of rooms?
        //ArrayList of hotelEmails
        //Arraylist of hotelNumbers
    //Arraylist of employees

    //private int HotelChain

    /*Constructors*/
    public Hotel(int hotelID, String streetAddress, String city, String country, int numRooms, int hotelChainID) {
        this.hotelID = hotelID;
        this.country = country;
        this.city = city;
        this.streetAddress = streetAddress;
        this.numRooms = numRooms;
        this.hotelChainID = hotelChainID;
    }

    /*Getters*/
    public int getHotelID() { return hotelID; }
    public int getNumRooms() { return numRooms; }
    public String getStreetAddress() { return streetAddress; }
    public String getCity() { return city; }
    public String getCountry() { return country; }
    public int getHotelChainID() { return hotelChainID; }

    /*Setters*/
    public void setHotelID(int hotelID) { this.hotelID = hotelID; }
    public void setNumRooms(int numRooms) { this.numRooms = numRooms; }
    public void setStreetAddress(String streetAddress) { this.streetAddress = streetAddress; }
    public void setCity(String city) { this.city = city; }
    public void setCountry(String country) { this.country = country; }

    //toString
}
