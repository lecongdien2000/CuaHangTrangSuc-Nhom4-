package entity;

import controller.Bill;
import database.ConnectionDB;
import product.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.sql.PreparedStatement;

public class BillData {

    public  static HashMap<String, Bill> getDataQuery(String query){
        Statement s = null;
        HashMap<String, Bill> billList = new HashMap<String, Bill>();
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery(query);
            while(rs.next()){
                Bill bill = new Bill();
                bill.setId_bill(rs.getString("id_bill"));
                bill.setId_user(rs.getString("id_user"));
                bill.setState(rs.getString("state"));
                bill.setFull_name(rs.getString("full_name"));
                bill.setAddress(rs.getString("address"));
                bill.setPhone_number(rs.getString("phone_number"));
                bill.setBill_detail(getBillDetailsOfBill(bill.getId_bill()));
                billList.put(bill.getId_bill(), bill);


            }
            s.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException a) {
            a.printStackTrace();
        }

        return billList;
    }

    public static HashMap<String, Bill> getAllBill(){
        return BillData.getDataQuery("SELECT * FROM bill" );
    }

    public static HashMap<Product, Integer> getBillDetailsOfBill(String id_bill){
        Statement s = null;
        HashMap<Product, Integer> billDetailList = new HashMap<Product, Integer>();
        try {
            s = ConnectionDB.connect();

            ResultSet rs = s.executeQuery("Select * from bill_detail where id_bill = '" + id_bill + "'");
            while(rs.next()){
                Product p = ProductsData.getProductByID(rs.getString("id_product"));
                if(p!= null)
                    billDetailList.put(p, rs.getInt("quantity"));

            }
            s.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException a) {
            a.printStackTrace();
        }

        return billDetailList;
    }

    public static Bill getBillWithId(String idBill){
        Statement s = null;
        Bill bill = null;
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("SELECT * FROM bill WHERE id_bill = '" + idBill + "'");

            while(rs.next()){
                bill = new Bill();
                bill.setId_bill(rs.getString("id_bill"));
                bill.setId_user(rs.getString("id_user"));
                bill.setState(rs.getString("state"));
                bill.setFull_name(rs.getString("full_name"));
                bill.setAddress(rs.getString("address"));
                bill.setPhone_number(rs.getString("phone_number"));
                bill.setBill_detail(getBillDetailsOfBill(bill.getId_bill()));
            }
            s.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException a) {
            a.printStackTrace();
        }

        return bill;

    }

    public static boolean setStateForBill(String id_bill, String action){
        if(action == null)
        return  false;
        String query = "";
        switch (action){
            case "confirm" :
                query+= "UPDATE bill SET state = 'Đang giao' WHERE id_bill = '" + id_bill + "'";
                break;
            case "cancel" :
                query+= "UPDATE bill SET state = 'Đã hủy' WHERE id_bill = '" + id_bill + "'";
                break;
            default:
                return false;
        }
        Statement s = null;
        try {
            s = ConnectionDB.connect();
            boolean isSuccess = s.execute(query);
            return isSuccess;
            } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return  false;
    }
    //luu bill xuong CSDL
    //xoa trong CSDL card--clearCart
    public static void saveBill(Bill bill) {
        System.out.println("//1"+CartData.clearCart(bill.getId_user()));
        //giam so luong trong kho
        System.out.println("//2"+ProductsData.updateProductQuantity(bill.getBill_detail()));
        //save bill
        try {
            PreparedStatement pstate = ConnectionDB.connect("insert into bill(id_bill, id_user, state, full_name, address, phone_number) values(?,?,?,?,?,?)");
            pstate.setString(1, bill.getId_bill());
            pstate.setString(2, bill.getId_user());
            pstate.setString(3, bill.getState());
            pstate.setString(4, bill.getFull_name());
            pstate.setString(5, bill.getAddress());
            pstate.setString(6, bill.getPhone_number());
            pstate.executeUpdate();
            pstate.close();
            ConnectionDB.closeConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        System.out.println("//3"+saveDetailBill(bill));
    }

    //luu detail bill xuong CSDL
    public static boolean saveDetailBill(Bill bill) {
        try {
            PreparedStatement pstate = ConnectionDB.connect("insert into bill_detail(id_bill, id_product, quantity) values(?,?,?)");
            for (Product p : bill.getBill_detail().keySet()) {
                pstate.setString(1, bill.getId_bill());
                pstate.setString(2, p.getId_product());
                pstate.setInt(3, bill.getBill_detail().get(p));
                pstate.executeUpdate();
            }
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
