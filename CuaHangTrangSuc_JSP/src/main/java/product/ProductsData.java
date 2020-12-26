package product;

import java.util.ArrayList;
import java.util.HashMap;

public class ProductsData {
    static HashMap<String, Product> datas = new HashMap<String, Product>();

    static  {
        Product product = new Product("001", "Sp1", "","","",20000,"c1", 20);
        datas.put(product.id_product, product);
    }

}
