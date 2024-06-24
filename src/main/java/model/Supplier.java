package model;

public class Supplier {
    private int SupplierID;
    private String SupplierName;
    private String Address;
    private String Email;
    private String PhoneNumber;

    public Supplier() {
        super();
    }

    public Supplier(int supplierID, String supplierName, String address, String email, String phoneNumber) {
        SupplierID = supplierID;
        SupplierName = supplierName;
        Address = address;
        Email = email;
        PhoneNumber = phoneNumber;
    }

    public int getSupplierID() {
        return SupplierID;
    }

    public void setSupplierID(int supplierID) {
        SupplierID = supplierID;
    }

    public String getSupplierName() {
        return SupplierName;
    }

    public void setSupplierName(String supplierName) {
        SupplierName = supplierName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getPhoneNumber() {
        return PhoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        PhoneNumber = phoneNumber;
    }
}
