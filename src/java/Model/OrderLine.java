package Model;

public class OrderLine {

    private int olid;
    private int oid;
    private Product product;
    private int quantity;
    private double price;
    private String size;
    private String color;

    public OrderLine() {
    }

    public OrderLine(int olid, int oid, Product product, int quantity, double price, String size, String color) {
        this.olid = olid;
        this.oid = oid;
        this.product = product;
        this.quantity = quantity;
        this.price = price;
        this.size = size;
        this.color = color;
    }
    
    

    public int getOlid() {
        return olid;
    }

    public void setOlid(int olid) {
        this.olid = olid;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    
    

}
