package product;

import java.io.Serializable;

public class Product implements Serializable {
    private String id_product;
    private String product_name;
    private String picture1, picture2, picture3;
    private double price;
    private String id_category;
    private int quantity;
    private ProductDetail productDetail;


    public Product(String id_product, String product_name, String picture1, String picture2, String picture3, double price, String id_category, int quantity) {
        this.id_product = id_product;
        this.product_name = product_name;
        this.picture1 = picture1;
        this.picture2 = picture2;
        this.picture3 = picture3;
        this.price = price;
        this.id_category = id_category;
        this.quantity = quantity;
    }

    public Product(){
        productDetail = new ProductDetail();
    }

    public void setProductDetail(String trademark, String gender, String description, int rate, boolean isDiamond,
                                 boolean isGemstone, boolean isECZ, boolean isPearl, boolean isPlain, boolean isChild){
        productDetail = new ProductDetail(trademark, gender, description, rate, isDiamond, isGemstone, isECZ, isPearl, isPlain, isChild);
    }

    public String getTrademark() {
        return productDetail.getTrademark();
    }

    public void setTrademark(String trademark) {
        productDetail.setTrademark(trademark);
    }

    public String getGender() {
        return productDetail.getGender();
    }

    public void setGender(String gender) {
        productDetail.setGender(gender);
    }

    public String getDescription() {
        return productDetail.getDescription();
    }

    public void setDescription(String description) {
        productDetail.setDescription(description);
    }

    public int getRate() {
        return productDetail.getRate();
    }

    public void setRate(int rate) {
        productDetail.setRate(rate);
    }

    public boolean isDiamond() {
        return productDetail.isDiamond();
    }

    public void setDiamond(boolean diamond) {
        productDetail.setDiamond(diamond);
    }

    public boolean isGemstone() {
        return productDetail.isGemstone();
    }

    public void setGemstone(boolean gemstone) {
        productDetail.setGemstone(gemstone);
    }

    public boolean isECZ() {
        return productDetail.isECZ();
    }

    public void setECZ(boolean ECZ) {
        productDetail.setECZ(ECZ);
    }

    public boolean isPearl() {
        return productDetail.isPearl();
    }

    public void setPearl(boolean pearl) {
        productDetail.setPearl(pearl);
    }

    public boolean isPlain() {
        return productDetail.isPlain();
    }

    public void setPlain(boolean plain) {
        productDetail.setPlain(plain);
    }

    public boolean isChild() {
        return productDetail.isChild();
    }

    public void setChild(boolean child) {
        productDetail.setChild(child);
    }




    public String getId_product() {
        return id_product;
    }

    public void setId_product(String id_product) {
        this.id_product = id_product;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getPicture1() {
        return picture1;
    }

    public void setPicture1(String picture1) {
        this.picture1 = picture1;
    }

    public String getPicture2() {
        return picture2;
    }

    public void setPicture2(String picture2) {
        this.picture2 = picture2;
    }

    public String getPicture3() {
        return picture3;
    }

    public void setPicture3(String picture3) {
        this.picture3 = picture3;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getId_category() {
        return id_category;
    }

    public void setId_category(String id_category) {
        this.id_category = id_category;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getStringPrice(){
        String stringPrice = String.format ("%.0f", price);
        String result ="";
        int length = stringPrice.length();
        while(length/3>0){
            result =  stringPrice.substring(length - 3, length)  + "." + result;
            stringPrice = stringPrice.substring(0, length - 3);
            length = stringPrice.length();
        }
        if(length>0)
            result = stringPrice + "." + result;
        return result.substring(0, result.length() - 1) + " VND";
    }

    public String getStringPriceHasQuantities(int quantity){
        String stringPrice = String.format ("%.0f", (price*quantity));
        String result ="";
        int length = stringPrice.length();
        while(length/3>0){
            result =  stringPrice.substring(length - 3, length)  + "." + result;
            stringPrice = stringPrice.substring(0, length - 3);
            length = stringPrice.length();
        }
        if(length>0)
            result = stringPrice + "." + result;
        return result.substring(0, result.length() - 1) + " VND";
    }


}
