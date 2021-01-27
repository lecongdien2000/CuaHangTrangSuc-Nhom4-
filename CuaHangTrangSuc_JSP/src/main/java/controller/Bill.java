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
    private String message;
    private Map<Product, Integer> bill_detail = new HashMap<>();
    private Map<Product, Boolean> mapCommented = new HashMap<>();
    public Bill(){

    }

    public Map<Product, Boolean> getMapCommented() {
        return mapCommented;
    }

    public void setMapCommented(Map<Product, Boolean> mapCommented) {
        this.mapCommented = mapCommented;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
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

    public void setBill_detail(Map<Product, Integer> bill_details){
        this.bill_detail = bill_details;
    }



    public double computeSumPrice(){
        if(bill_detail == null)
            return 0;
        double result = 0;
        for(Product p : bill_detail.keySet()){
            result+=p.getPrice()*bill_detail.get(p);
        }
        return result;

    }
    public String toStringPrice(){
        String stringPrice = String.format ("%.0f", computeSumPrice());
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
