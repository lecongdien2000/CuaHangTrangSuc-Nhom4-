package product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ProductsData {
//    static HashMap<String, Product> datas = new HashMap<String, Product>();
    static List<Product> productList = new ArrayList<>();
    public  static List<Product> getData() {
//        List<Product> productList = new ArrayList<Product>();
        Product product = new Product("001", "Sp1", "","","",20000,"c1", 20);
//        datas.put(product.getId_product(), product);
        productList.add(product);
        productList.add(new Product("002", "Sp2", "","","",20000,"c1", 20));
        productList.add(new Product("003", "Sp3", "","","",20000,"c1", 20));
        productList.add(new Product("004", "Sp4", "","","",20000,"c1", 20));
        productList.add(new Product("005", "Sp5", "","","",20000,"c1", 20));
    return productList;
    }


}
