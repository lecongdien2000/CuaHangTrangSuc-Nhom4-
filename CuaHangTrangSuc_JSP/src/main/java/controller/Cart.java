package controller;

import entity.CartData;
import product.Product;
import user.User;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.*;

public class Cart implements Serializable {
    private String username;
    Map<Product, Integer> data = new HashMap<>();

    public Cart() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Cart(String username) {
        this.username = username;
        this.data = CartData.getCartForUser(username);
//        System.out.println(data.toString());
    }

    //xoa sp ra khoi cart
    public void removeProduct(String id) {
        if (data != null) {
            for (Product key : data.keySet()) {
                if (key.getId_product().equals(id)) {
                    data.remove(key);
                    System.out.println(CartData.removeProductInCart(this.username, id));
                    return;
                }
            }
        }
        System.out.println("aaa");
    }

    public boolean updateQuantityOfProduct(int delta, String id_product, boolean inOrDe) {
        for (Product p : getdata()) {
            int quantity;
            if (p.getId_product().equals(id_product)) {
                if(inOrDe==false) {
                    quantity = getQuantity(p) + delta;
                }
                else{
                    quantity = getQuantity(p) - delta;
                }
                if (quantity <= 0) return false;
                else {
                    data.put(p,quantity);
                    System.out.println(CartData.updateQuantitesProduct(p,this.username,quantity));
                    return true;
                }
            }

        }
        return false;

    }

    //load san pham len cart neu nguoi ta da dang nhap roi
//    public Map<Product, Integer> loadCart() {
//        System.out.println(CartData.getCartForUser(this.username));
//        this.data = CartData.getCartForUser(username);
//        return data;
//    }

    //them sp vao cart
    //neu username chua dang nhap thi khong cho them vao gio hang
    //neu username da dang nhap moi cho them vao gio hang
    public void put(Product newProduct) {
        if (newProduct == null) return;
        if (username == null) {
            return;
        } else {
            for (Product p : data.keySet()) {
                if (p.getId_product().equals(newProduct.getId_product())) {
                    System.out.println(data.get(p));
                    data.put(p, data.get(p) + 1);
                    CartData.updateQuantitesProduct(newProduct, username, data.get(p));
                    return;
                }
            }
            data.put(newProduct, 1);
            System.out.println(CartData.insertProductToCart(newProduct, username));
        }
    }

//    //ngang day co the se khong che so luong dat
//    public void update(String id_product, int quantity) {
//        if (quantity < 0) return;
//        data.get(id_product).setQuantityInCart(quantity);
//    }
//
//    //xoa sp ra khoi gio hang
//    public void remove(String id_product) {
//        data.remove(id_product);
//    }
//
//    //tong so tien cua gio hang hien tai
//    public double total() {
//        double sum = 0;
//        for (Product p : data.values()) {
//            sum += p.getPrice();
//        }
//        return sum;
//    }

    //neu nguoi dung dang nhap roi thi lay gio hang xu ly
    //neu  chua dang nhap thi gio hang null

    public static Cart getCart(HttpSession session) {
        User u = (User) session.getAttribute("user");
        if (u == null) {
            return null;
        } else if (u.getUsername() != null) {
            return session.getAttribute("cart") == null ? new Cart(u.getUsername()) : (Cart) session.getAttribute("cart");
        }
        return null;
    }

    public Collection<Product> getdata() {
        return data.keySet();
    }

    public void commit(HttpSession session) {
        session.setAttribute("cart", this);
    }

    public int getQuantity(Product p) {
//        System.out.println(data.toString());
        return data.get(p);
    }

    public double totalPriceProduct(Product p) {
        return p.getPrice() * getQuantity(p);
    }

    public String totalOfCart() {
        double sum = 0;
        for (Product p : data.keySet()) {
            sum += this.totalPriceProduct(p);
        }
        Product p = new Product();
        p.setPrice(sum);
        return p.getStringPrice();
    }

    public String totalStringPriceProduct(Product p) {
        double price = totalPriceProduct(p);
        String stringPrice = String.format("%.0f", price);
        String result = "";
        int length = stringPrice.length();
        while (length / 3 > 0) {
            result = stringPrice.substring(length - 3, length) + "." + result;
            stringPrice = stringPrice.substring(0, length - 3);
            length = stringPrice.length();
        }
        if (length > 0)
            result = stringPrice + "." + result;
        return result.substring(0, result.length() - 1) + " VND";
    }

}
