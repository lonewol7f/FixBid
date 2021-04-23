package model;

public class User {

    //private String UserAcc;
    private String FName;
    private String LName;
    private String address;
    private String phoneNumber;
    private String email;
    private String password;


    /*public String getUserAcc() {
        return UserAcc;
    }

    public void setUserAcc(String userAcc) {
        UserAcc = userAcc;
    }*/

    public String getFName() {
        return FName;
    }

    public void setFName(String FName) {
        this.FName = FName;
    }

    public String getLName() {
        return LName;
    }

    public void setLName(String LName) {
        this.LName = LName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() { return phoneNumber; }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


}
