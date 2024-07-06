package model;

import java.sql.Date;

public class Voucher {
    private int VoucherID;
    private String VoucherName;
    private Float VoucherPrice;
    private Date ExpirationDate;
    private String Detail;

    public Voucher() {
    }

    public Voucher(int voucherID, String voucherName, Float voucherPrice, Date expirationDate, String detail) {
        VoucherID = voucherID;
        VoucherName = voucherName;
        VoucherPrice = voucherPrice;
        ExpirationDate = expirationDate;
        Detail = detail;
    }

    public Voucher(String voucherName, Float voucherPrice, Date expirationDate, String detail) {
        VoucherName = voucherName;
        VoucherPrice = voucherPrice;
        ExpirationDate = expirationDate;
        Detail = detail;
    }

    public int getVoucherID() {
        return VoucherID;
    }

    public void setVoucherID(int voucherID) {
        VoucherID = voucherID;
    }

    public String getVoucherName() {
        return VoucherName;
    }

    public void setVoucherName(String voucherName) {
        VoucherName = voucherName;
    }

    public Float getVoucherPrice() {
        return VoucherPrice;
    }

    public void setVoucherPrice(Float voucherPrice) {
        VoucherPrice = voucherPrice;
    }

    public Date getExpirationDate() {
        return ExpirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        ExpirationDate = expirationDate;
    }

    public String getDetail() {
        return Detail;
    }

    public void setDetail(String detail) {
        Detail = detail;
    }

    @Override
    public String toString() {
        return "Voucher{" +
                "VoucherID=" + VoucherID +
                ", VoucherName='" + VoucherName + '\'' +
                ", VoucherPrice=" + VoucherPrice +
                ", ExpirationDate=" + ExpirationDate +
                ", Detail='" + Detail + '\'' +
                '}';
    }
}
