package controller;

import java.util.ArrayList;
import java.util.List;

public class ManagementBill {
    private String username;
    List<Bill> bills = new ArrayList<>();

    public ManagementBill(){

    }
    public ManagementBill(String username){
        this.username = username;
    }
}
