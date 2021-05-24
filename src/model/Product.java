package model;

public class Product {
    private int pid;
    private String pName;
    private String expDate;
    private int startPrice;
    private int vendorID;
    private String description;

    //Product Constructor?????

    //Product id
    public int getPid() { return pid; }

    public void setPid(int pid) { this.pid = pid; }

    //Product Name
    public String getPname() { return pName; }

    public void setPname(String pName) { this.pName = pName; }

    //Bid expiry date
    public String getExpDate() { return expDate; }

    public void setExpDate(String expDate) { this.expDate = expDate; }

    //Start Price
    public int getStartPrice() { return startPrice; }

    public void setStartPrice(int startPrice) { this.startPrice = startPrice; }
}
