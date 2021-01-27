package product;

public class Comment {
    String productID;
    String userID;
    String name;
    String email;
    String comment;
    int rate;

    public Comment(String userID, String productID, String name, String email, String comment, int rate) {
        this.productID = productID;
        this.userID = userID;
        this.name = name;
        this.email = email;
        this.comment = comment;
        this.rate = rate;
    }

    public boolean isValid() {
        return !(name==null||email==null||comment==null||productID==null||rate<0||rate>5||productID==null|| userID ==null);
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }
}
