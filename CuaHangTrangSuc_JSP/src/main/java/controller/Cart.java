package controller;

import product.Product;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    Map<String, Product> data = new HashMap<>();

    public Cart() {
    }

    //them sp vao card
    public void put(Product p) {
        if (p == null) return;
        if (data.containsKey(p.getId_product())) {
            data.get(p.getId_product()).add();
            return;
        }
        p.setQuantityInCart(1);
        data.put(p.getId_product(), p);
    }

    //ngang day co the se khong che so luong dat
    public void update(String id_product, int quantity) {
        if (quantity < 0) return;
        data.get(id_product).setQuantityInCart(quantity);
    }

    //xoa sp ra khoi gio hang
    public void remove(String id_product) {
        data.remove(id_product);
    }

    //tong so tien cua gio hang hien tai
    public double total() {
        double sum = 0;
        for (Product p : data.values()) {
            sum += p.getPrice();
        }
        return sum;
    }

    public static Cart getCart(HttpSession session) {
        return session.getAttribute("cart") == null ? new Cart() : (Cart) session.getAttribute("cart");
    }

    public Collection<Product> getdata() {
        return data.values();
    }

    public void commit(HttpSession session) {
        session.setAttribute("cart", this);
    }
}
