package HotelManagementSystem.DatabaseEntities;

public class Person {
    private String firstName;
    private String middleName;
    private String lastName;
    private String address;
    private String idType;
    private int personalID;

    public Person(String firstName, String middleName, String lastName, String address, String idType, int personalID) {
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.address = address;
        this.idType = idType;
        this.personalID = personalID;
    }

    public String getFirstName() {return firstName;}
    public String getMiddleName() {return middleName;}
    public String getLastName() {return lastName;}
    public String getAddress() {return address;}
    public String getIdType() {return idType;}
    public int getPersonalID() {return personalID;}

    public void setFirstName(String firstName) {this.firstName = firstName;}
    public void setMiddleName(String middleName) {this.middleName = middleName;}
    public void setLastName(String lastName) {this.lastName = lastName;}
    public void setAddress(String address) {this.address = address;}
    public void setIdType(String idType) {this.idType = idType;}
    public void setPersonalID(int personalID) {this.personalID = personalID;}

}

