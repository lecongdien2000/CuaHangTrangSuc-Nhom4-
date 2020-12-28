package entity;

import database.ConnectionDB;
import product.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ProductsData {
//    static HashMap<String, Product> datas = new HashMap<String, Product>();
    static HashMap<String, Product> productList = new HashMap<String, Product>();
    public  static HashMap<String, Product> getAllData(){
          return getDataQuery("Select * from product p join product_detail pd where p.id_product = pd.id_product");
    }
    public  static HashMap<String, Product> getDataByName(String name){
        name = name.toLowerCase();
        return getDataQuery("Select * from product p join product_detail pd where p.id_product = pd.id_product" +
                " and lower(p.product_name) like /'%"+name+"%/'");
    }
    public  static HashMap<String, Product> getDataQuery(String query){
        Statement s = null;

        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery(query);
            while(rs.next()){
                Product p = new Product();
                p.setId_product(rs.getString("p.id_product"));
                p.setProduct_name(rs.getString("product_name"));
                p.setPicture1(rs.getString("picture1"));
                p.setPicture2(rs.getString("picture2"));
                p.setPicture3(rs.getString("picture3"));
                p.setPrice(rs.getDouble("price"));
                p.setId_category(rs.getString("id_category"));
                p.setQuantity(rs.getInt("quantity"));
                p.setProductDetail(rs.getString("trademark"), rs.getString("gender"), rs.getString("description"),
                        rs.getInt("rate"), rs.getBoolean("is_diamond"), rs.getBoolean("is_gemstone"),
                        rs.getBoolean("is_ecz"),
                        rs.getBoolean("is_pearl"), rs.getBoolean("is_plain"), rs.getBoolean("is_child"));
                productList.put(p.getId_product(), p);
            }
            s.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException a) {
            a.printStackTrace();
        }

        return productList;
    }

}
