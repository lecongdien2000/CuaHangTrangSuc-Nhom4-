package entity;

import controller.Bill;
import database.ConnectionDB;
import product.Product;
import user.User;

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
    public static HashMap<String, Bill> getAllBillOfUser(String userName){
        return BillData.getDataQuery("SELECT * FROM bill WHERE id_user ='" + userName + "'");
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
    public static boolean saveBill(Bill bill) {
        //save bill
        try {
            PreparedStatement pstate = ConnectionDB.connect("insert into bill values(?,?,?,?,?,?,?)");
            pstate.setString(1, bill.getId_bill());
            pstate.setString(2, bill.getId_user());
            pstate.setString(3, bill.getState());
            pstate.setString(4, bill.getFull_name());
            pstate.setString(5, bill.getAddress());
            pstate.setString(6, bill.getPhone_number());
            pstate.setString(7, bill.getMessage());
            System.out.println(bill.getId_bill());
            System.out.println(bill.getId_user());
            System.out.println(bill.getState());
            System.out.println(bill.getFull_name());
            System.out.println(bill.getAddress());
            System.out.println(bill.getPhone_number());
            System.out.println(bill.getMessage());

            System.out.println(pstate.executeUpdate());
            pstate.close();
            ConnectionDB.closeConnection();
            System.out.println(saveDetailBill(bill));
            return true;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    //luu detail bill xuong CSDL
    public static boolean saveDetailBill(Bill bill) {
        try {
            PreparedStatement pstate = ConnectionDB.connect("insert into bill_detail values(?,?,?,?)");
            for (Product p : bill.getBill_detail().keySet()) {
                pstate.setString(1, bill.getId_bill());
                pstate.setString(2, p.getId_product());
                pstate.setInt(3, bill.getBill_detail().get(p));
                pstate.setBoolean(4, bill.getMapCommented().get(p));
                System.out.println(pstate.executeUpdate());
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
    //tao id bill theo so thu tu tang dan
    public static int createId_bill(){
        try {
            PreparedStatement  pstate = ConnectionDB.connect("select * from bill");
            ResultSet rs = pstate.executeQuery();
            rs.last();
            int id_billnext = Integer.parseInt(rs.getString("id_bill")) + 1;
            return id_billnext;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 1;
    }

    public static boolean canComment(User user, Product p){
        try {
            PreparedStatement pstate = ConnectionDB.connect("select * from bill join bill_detail where id_user = ? and id_product = ? and isCommented = ?");
            pstate.setString(1, user.getUsername());
            pstate.setString(2, p.getId_product());
            pstate.setBoolean(3,false);
            //tim ra khach hang mua san pham do chua comment va da nhan hang
            ResultSet rs = pstate.executeQuery();
            if(rs.next()) {
                if(rs.getString("state").equalsIgnoreCase("đã giao")) return true;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;

    }




}
