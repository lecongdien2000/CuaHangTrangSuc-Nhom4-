package controller;

import product.Product;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.*;

public class Cart implements Serializable {
    Map<Product, Integer> data = new HashMap<>();
    public Cart() {
    }

    //them sp vao cart
    public void put(Product newProduct) {
        if (newProduct == null) return;
        for(Product p: data.keySet()){
            if (p.getId_product().equals(newProduct.getId_product())) {
                data.put(p, data.get(p) + 1);
                return;
            }
        }
        data.put(newProduct, 1);
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

    public static Cart getCart(HttpSession session) {
        return session.getAttribute("cart") == null ? new Cart() : (Cart) session.getAttribute("cart");
    }

    public Collection<Product> getdata() {
        return data.keySet();
    }

    public void commit(HttpSession session) {
        session.setAttribute("cart", this);
    }

    public int getQuantity(Product p){
        return data.get(p);
    }

    public double totalPriceProduct(Product p){
        return p.getPrice()*getQuantity(p);
    }

    public String totalStringPriceProduct(Product p){
        double price = totalPriceProduct(p);
        String stringPrice = String.format ("%.0f", price);
        String result ="";
        int length = stringPrice.length();
        while(length/3>0){
            result =  stringPrice.substring(length - 3, length)  + "." + result;
            stringPrice = stringPrice.substring(0, length - 3);
            length = stringPrice.length();
        }
        if(length>0)
            result = stringPrice + "." + result;
        return result.substring(0, result.length() - 1) + " VND";
    }

}
