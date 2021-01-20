package entity;

import database.ConnectionDB;
import product.Product;

import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CartData implements Serializable {
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
            PreparedStatement pstate = ConnectionDB.connect("update cart set quantity = ? where id_user = ? and id_product = ?") ;
            pstate.setInt(1, quantity);
            System.out.println(quantity);
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
}
