package Model;

import java.sql.Date;
import java.util.List;

public class Order {
    private int oid;
    private double price;
    private int status;
    private Date createDate;
    private String address;
    private String phone;
    private String note;
    
    private Account account;
    private List<OrderLine> orderLine;

    public Order() {
    }

    public Order(int oid, double price, int status, Date createDate, String address, String phone, String note, Account account, List<OrderLine> orderLine) {
        this.oid = oid;
        this.price = price;
        this.status = status;
        this.createDate = createDate;
        this.address = address;
        this.phone = phone;
        this.note = note;
        this.account = account;
        this.orderLine = orderLine;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<OrderLine> getOrderLine() {
        return orderLine;
    }

    public void setOrderLine(List<OrderLine> orderLine) {
        this.orderLine = orderLine;
    }
    
    

}
