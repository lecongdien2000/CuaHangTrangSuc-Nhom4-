package entity;

import database.ConnectionDB;
import product.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductsData {
//    static HashMap<String, Product> productList = new HashMap<String, Product>();

    public  static HashMap<String, Product> getAllData(){
          return getDataQuery("Select * from product p join product_detail pd where p.id_product = pd.id_product");
    }
    public  static HashMap<String, Product> getDataByName(String name){
        if(name==null) return null;
        name = name.toLowerCase();
        return getDataQuery("Select * from product p join product_detail pd on  p.id_product = pd.id_product where lower(p.product_name) like '%"+ name + "%'");
    }
    public  static HashMap<String, Product> getDataQuery(String query){
        Statement s = null;
        HashMap<String, Product> productList = new HashMap<String, Product>();
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

    public static Product getProductByID(String id) {
        HashMap<String, Product> productList = getDataQuery("Select * from product p join product_detail pd where p.id_product = '" + id + "' and p.id_product = pd.id_product");
        return productList.get(id);
    }

    public  static int getDataSizeByName(String name){
        Statement s = null;
        int result = -1;
        String sql = "Select count(id_product) as cnt from product where lower(product_name) like '%"+ name + "%'";
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery(sql);
            rs.next();
            result = rs.getInt("cnt");
            s.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException a) {
            a.printStackTrace();
        }
        return result;
    }

    public static HashMap<String, Product> getDataByNameWithLimit(String name, int offset, int limit) {
        if(name==null) return null;
        name = name.toLowerCase();
        return getDataQuery("Select * from product p join product_detail pd on  p.id_product = pd.id_product where lower(p.product_name) like '%"+ name + "%' limit " + (offset - 1) + ", " + limit);
    }
}
