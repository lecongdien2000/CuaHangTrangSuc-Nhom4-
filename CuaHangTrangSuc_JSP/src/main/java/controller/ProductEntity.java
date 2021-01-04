package controller;

import database.ConnectionDB;
import product.Product;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class ProductEntity {
    public Product getById(String id) {
        PreparedStatement s = null;

        try {
            String sql = "select * from product where id = ?";
            s = ConnectionDB.connect(sql);
            s.setString(1, id);
            ResultSet rs = s.executeQuery();
            Product p = new Product();
            if (rs.next()) {
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
            }
            rs.close();
            s.close();
            return p;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException a) {
            a.printStackTrace();
        }

        return null;

    }


}
