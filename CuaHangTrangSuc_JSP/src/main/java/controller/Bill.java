package controller;

import product.Product;

import java.util.HashMap;
import java.util.Map;

public class Bill {
    private String id_bill;
    private String id_user;
    private String state;
    private String full_name;
    private String address;
    private String phone_number;
    private Map<Product, Integer> bill_detail = new HashMap<>();
    public Bill(){

    }

    public String getId_bill() {
        return id_bill;
    }

    public void setId_bill(String id_bill) {
        this.id_bill = id_bill;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public Map<Product, Integer> getBill_detail() {
        return bill_detail;
    }

    public void addBill_detail(Product p, int quantity) {
        bill_detail.put(p, quantity);
    }
}
