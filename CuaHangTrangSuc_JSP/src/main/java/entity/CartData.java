package entity;

import database.ConnectionDB;
import product.Product;

import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class CartData implements Serializable {
    //kiem tra xem cai san pham do co ton tai trong cart khong?
    public static boolean removeProductInCart(String username, String id_product) {
        try {
            PreparedStatement pstate = ConnectionDB.connect("DELETE FROM cart WHERE id_user = ? and id_product = ?");
            pstate.setString(1, username);
            pstate.setString(2, id_product);
            pstate.executeUpdate();
            pstate.close();
            ConnectionDB.closeConnection();
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    //them 1 san pham vao cart trong CSDL khi ma chua dc them lan nao.
    public static boolean insertProductToCart(Product p, String username) {
        try {
            PreparedStatement pstate = ConnectionDB.connect("insert into cart(id_user, id_product, quantity) values(?,?,?)");
            System.out.println(pstate);
            pstate.setString(1, username);
            pstate.setString(2, p.getId_product());
            pstate.setInt(3, 1);
            pstate.executeUpdate();
            System.out.println(pstate.isClosed());
            pstate.close();
            ConnectionDB.closeConnection();
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    public static boolean updateQuantitesProduct(Product p, String username, int quantity) {
        try {
            PreparedStatement pstate = ConnectionDB.connect("update cart set quantity = ? where id_user = ? and id_product = ?");
            pstate.setInt(1, quantity);
            pstate.setString(2, username);
            pstate.setString(3, p.getId_product());
            pstate.executeUpdate();
            pstate.close();
            ConnectionDB.closeConnection();
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    //lay du lieu trong cart tu db len
    public static Map<Product, Integer> getCartForUser(String username) {
        try {
            PreparedStatement pstate = ConnectionDB.connect("select * from product inner join cart on product.id_product = cart.id_product where cart.id_user = ?");
            pstate.setString(1, username);
            ResultSet rs = pstate.executeQuery();
            Map<Product, Integer> data = new HashMap<>();

            while (rs.next()) {
                Product p = new Product();
                p.setId_product(rs.getString("cart.id_product"));
                p.setProduct_name(rs.getString("product.product_name"));
                p.setPicture1(rs.getString("product.picture1"));
                p.setPrice(rs.getDouble("product.price"));
                data.put(p, rs.getInt("cart.quantity"));
            }
            pstate.close();
            ConnectionDB.closeConnection();
            System.out.println(data.toString());
            return data;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return null;
    }

    //xoa het tat ca cac san pham da mua
    public static boolean clearCart(String username) {
        try {
            PreparedStatement pstate = ConnectionDB.connect("delete from cart where id_user = ?");
            pstate.setString(1, username);
            System.out.println(pstate.executeUpdate());
            pstate.close();
            ConnectionDB.closeConnection();
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

}
