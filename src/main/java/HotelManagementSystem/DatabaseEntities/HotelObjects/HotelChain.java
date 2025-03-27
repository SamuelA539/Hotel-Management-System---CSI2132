package HotelManagementSystem.DatabaseEntities.HotelObjects;

public class HotelChain {

    private int chainID; //depends on constriants
    private String officeAddress;
    private int numHotels;
    private String name;
    //ArrayList of hotels?
    //ArrayList of hotelChainEmails
    //Arraylist of hotelChainNumbers

    /*Constructors*/
    public HotelChain(int chainID, String officeAddress, int numHotels, String name) {
        this.chainID = chainID;
        this.numHotels = numHotels;
        this.officeAddress = officeAddress;
        this.name = name;
    }

    /*Getters*/
    public int getChainID() { return this.chainID; }
    public String getOfficeAddress() { return this.officeAddress; }
    public int getNumHotels() { return this.numHotels; }
    public String getName() { return this.name; }

    /*Setters*/
    public void setChainID(int chainID) { this.chainID = chainID; }
    public void setName(String name) { this.name = name; }
    public void setNumHotels(int numHotels) { this.numHotels = numHotels; }
    public void setOfficeAddress(String officeAddress) { this.officeAddress = officeAddress; }

}
