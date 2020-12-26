package product;

public class Product {
    String id_product;
    String product_name;
    String picture1, picture2, picture3;
    double price;
    String id_category;
    int quantity;

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

    }
}
