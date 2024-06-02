
package model;

import java.sql.Date;

public class Account {
    private String AccountID;
    private String Password;
    private int AccountType;
    private Date CreationDate;
    private String Status;
    private String Email;

    public Account() {
        super();
    }

    public Account(String Email,String AccountID, String Password, int AccountType, Date CreationDate, String Status) {
        this.Email = Email;
        this.AccountID = AccountID;
        this.Password = Password;
        this.AccountType = AccountType;
        this.CreationDate = CreationDate;
        this.Status = Status;
    }
    public String getAccountID() {
        return AccountID;
    }
    public void setAccountID(String AccountID) {
        this.AccountID = AccountID;
    }
    public String getPassword() {
        return Password;
    }
    public void setPassword(String Password) {
        this.Password = Password;
    }
    public int getAccountType() {
        return AccountType;
    }
    public void setAccountType(int AccountType) {
        this.AccountType = AccountType;
    }
    public Date getCreationDate() {
        return CreationDate;
    }
    public void setCreationDate(Date CreationDate) {
        this.CreationDate = CreationDate;
    }
    public String getStatus() {
        return Status;
    }
    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        this.Email = email;
    }

    @Override
    public String toString() {
        return "Account{" +
                "AccountID=" + AccountID +
                ", Password='" + Password + '\'' +
                ", AccountType=" + AccountType +
                ", CreationDate=" + CreationDate +
                ", Status='" + Status + '\'' +
                ", Email='" + Email + '\'' +
                '}';
    }
}
