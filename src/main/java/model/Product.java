package model;

public class Product {
    private int ProductID;
    private int SupplierID;
    private String SupplierName;
    private String ProductName;
    private Float ProductPrice;
    private String Detail;

    public Product() {
        super();
    }

    public Product(int productID, int supplierID, String productName, Float productPrice, String detail) {
        ProductID = productID;
        SupplierID = supplierID;
        ProductName = productName;
        ProductPrice = productPrice;
        Detail = detail;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int productID) {
        ProductID = productID;
    }

    public int getSupplierID() {
        return SupplierID;
    }

    public void setSupplierID(int supplierID) {
        SupplierID = supplierID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String productName) {
        ProductName = productName;
    }

    public Float getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(Float productPrice) {
        ProductPrice = productPrice;
    }

    public String getDetail() {
        return Detail;
    }

    public void setDetail(String detail) {
        Detail = detail;
    }

    public String getSupplierName() {
        return SupplierName;
    }

    public void setSupplierName(String supplierName) {
        SupplierName = supplierName;
    }
}
