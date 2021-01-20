package controller;

import entity.CartData;
import product.Product;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.*;

public class Cart implements Serializable {
    private String username;
    Map<Product, Integer> data = new HashMap<>();

    public Cart() {
    }

    public Cart(String username) {
        this.username = username;
    }

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
                    data.put(p, data.get(p) + 1);
                    System.out.println(CartData.updateQuantitesProduct(newProduct, username, data.get(p)));
                    return;
                }
            }
            data.put(newProduct, 1);
            System.out.println(CartData.insertProductToCart(newProduct, username));
            System.out.println(data.keySet());
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
        String username = (String)session.getAttribute("uname");
        System.out.println(username);
        if(username!=null){
            return session.getAttribute("cart") == null ? new Cart(username) : (Cart) session.getAttribute("cart");
        }else{
            return new Cart(null);
        }
    }

    public Collection<Product> getdata() {
        return data.keySet();
    }

    public void commit(HttpSession session) {
        session.setAttribute("cart", this);
    }

    public int getQuantity(Product p) {
        return data.get(p);
    }

    public double totalPriceProduct(Product p) {
        return p.getPrice() * getQuantity(p);
    }
    public double totalOfCart(){
        double sum = 0;
       for(Product p : data.keySet()){
           sum+=p.getPrice() * data.get(p);
       }
       return sum;
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
