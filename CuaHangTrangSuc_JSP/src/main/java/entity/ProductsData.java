package entity;

import database.ConnectionDB;
import product.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductsData {
//    static HashMap<String, Product> productList = new HashMap<String, Product>();

    public  static HashMap<String, Product> getAllData(){
        return getDataQuery("Select * from product p join product_detail pd where p.id_product = pd.id_product");
    }
    public  static HashMap<String, Product> getDataByName(String name){
        if(name==null) return null;
        name = name.toLowerCase();
        return getDataQuery("Select * from product p join product_detail pd on  p.id_product = pd.id_product where lower(p.product_name) like '%"+ name + "%'");
    }
    public  static HashMap<String, Product> getDataQuery(String query){
        Statement s = null;
        HashMap<String, Product> productList = new HashMap<String, Product>();
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery(query);
            while(rs.next()){
                Product p = new Product();
                p.setId_product(rs.getString("p.id_product"));
                p.setProduct_name(rs.getString("product_name"));
                p.setPicture1(rs.getString("picture1"));
                p.setPicture2(rs.getString("picture2"));
                p.setPicture3(rs.getString("picture3"));
                p.setPrice(rs.getDouble("price"));
                p.setId_category(rs.getString("id_category"));
                p.setQuantity(rs.getInt("quantity"));
                p.setProductDetail(rs.getString("trademark"), rs.getString("gender"), rs.getString("description"),
                        rs.getInt("rate"), rs.getBoolean("is_diamond"), rs.getBoolean("is_gemstone"),
                        rs.getBoolean("is_ecz"),
                        rs.getBoolean("is_pearl"), rs.getBoolean("is_plain"), rs.getBoolean("is_child"));
                productList.put(p.getId_product(), p);
            }
            s.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException a) {
            a.printStackTrace();
        }

        return productList;
    }

    public static Product getProductByID(String id) {
        HashMap<String, Product> productList = getDataQuery("Select * from product p join product_detail pd where p.id_product = '" + id + "' and p.id_product = pd.id_product");
        return productList.get(id);
    }


    public  static int getDataSizeByName(String name){
        Statement s = null;
        int result = -1;
        String sql = "Select count(id_product) as cnt from product where lower(product_name) like '%"+ name + "%'";
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery(sql);
            rs.next();
            result = rs.getInt("cnt");
            s.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException a) {
            a.printStackTrace();
        }
        return result;
    }

    public static int getFilterSize(String name, String[] additionSql){
        String sqlFindName ="lower(p.product_name) like '%' ";
        StringBuilder addition = new StringBuilder("");
        if(name!=null) {
            name = name.toLowerCase();
           sqlFindName =  " lower(p.product_name) like '%"+ name + "%' ";
        }
        if(additionSql!=null) {
//            String[] expres = additionSql.split(",");
            for (int i = 0; i < additionSql.length; i++) {//to before price range
                if(additionSql[i]==null)
                    continue;
                String result = ProductsData.chooseExpess(i, additionSql[i]);
                if (result != null) {
                    addition.append(" and " +result);
                }
            }}
            String newQuery = "Select count(p.id_product) as cnt from product p join product_detail pd on  p.id_product = pd.id_product where " +
                    sqlFindName  + addition.toString();
            try {
                int size=-1;
                Statement s = ConnectionDB.connect();
                ResultSet rs = s.executeQuery(newQuery);
                rs.next();
                size =  rs.getInt("cnt");
                s.close();
                return size;

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException a) {
                a.printStackTrace();
            }
            return -1;
    }

    public static HashMap<String, Product> getDataByNameWithLimit(String name, int offset, int limit, String[] additionSql) { //parameter: String addition sql
        if(name == null && additionSql == null)
            return null;
        String sqlFindName ="lower(p.product_name) like '%' ";
        StringBuilder addition = new StringBuilder("");
        if(name!=null) {
            name = name.toLowerCase();
            sqlFindName =  "lower(p.product_name) like '%"+ name + "%' ";
        }
        if(additionSql!=null) {
            for (int i = 0; i < additionSql.length; i++) {//to before price range
                if(additionSql[i]==null)
                    continue;
                String result = ProductsData.chooseExpess(i, additionSql[i]);
                if (result != null) {
                    addition.append(" and " + result);
                }
            }
        }

            String newQuery = "Select * from product p join product_detail pd on  p.id_product = pd.id_product where " +
                    sqlFindName + addition.toString() + " limit " + (offset - 1) + ", " + limit;
            System.out.print("Query: " + newQuery );
            return getDataQuery(newQuery) ;
        }


    public static  String chooseExpess(int numberOfExpess, String expresstion){
        switch (numberOfExpess){
            case 0 : return filterByType(expresstion);
            case 1 : return filterByAttached(expresstion);
            case 2 : return filterByStage(expresstion);
            case 3 : return filterByGender(expresstion);
            case 4 : return filterByMinPrice(expresstion);
            case 5 : return filterByMaxPrice(expresstion);
            default: return null;
        }
    }

    public static String filterByType(String type){
        switch (type) {
            case "nhan" :
                return "id_category = '1'";
            case "bongTai" :
                return "id_category = '2'";
            case "dayChuyen" :
                return "id_category = '5'";
            case "dongHo" :
                return "id_category = '4'";
            case "lac" :
                return "id_category = '3'";
            default:
                return null;
        }
    }
    public static String filterByAttached(String attached){
        switch (attached) {
            case "non" :
                return "pd.is_plain = true";
            case "diamond" :
                return "pd.is_diamond = true";
            case "gemStone" :
                return "pd.is_gemstone = true";
            case "pearl" :
                return "pd.is_peart = true";
            case "ecz" :
                return "pd.is_ecz = true";
            default:
                return null;
        }
    }
    public static String filterByStage(String stage){
        switch (stage) {
            case "notchild" :
                return "pd.is_child = false";
            case "child" :
                return "pd.is_child = true";
            default:
                return null;
        }
    }
    public static String filterByGender(String gender){
        switch (gender) {
            case "nam" :
                return "pd.gender= 'Nam'";
            case "nu" :
                return "pd.gender = 'Nữ'";
            default:
                return null;
        }
    }
    public static String filterByMinPrice(String minPrice){
        if (minPrice.equals("") || minPrice ==null)
            return null;
        return "price >= " + minPrice;
    }
    public static String filterByMaxPrice(String maxPrice){
        if (maxPrice.equals("") || maxPrice ==null)
            return null;
        return "price <= " + maxPrice;
    }

    //    public static String filterByPrice(double start, double end) -> "and p.price >=" + start + " and p.price <=" + end;
    public static int insertProduct(Product p) {
        if (p.getId_product().equals("") || p.getProduct_name().equals("")
                || p.getPrice() == 0 || p.getPicture1().equals("") || p.getId_category().equals("") || p.getQuantity() == 0)
            return -2;
        if(ProductsData.getProductByID(p.getId_product())==null){
            try {
                PreparedStatement state1 = ConnectionDB.connect("insert into product(id_product, product_name, picture1, picture2, picture3, price, id_category, quantity)" +
                        " values(?, ?, ?, ?, ?, ?, ?, ?)");
                state1.setString(1, p.getId_product());
                state1.setString(3, p.getPicture1());
                state1.setString(4, p.getPicture2().equals("") ? null : p.getPicture2());
                state1.setString(5, p.getPicture3().equals("") ? null : p.getPicture3());
                state1.setString(2, p.getProduct_name());
                state1.setDouble(6, p.getPrice());
                state1.setString(7, p.getId_category());
                state1.setInt(8, p.getQuantity());

                state1.executeUpdate();
                state1.close();
                PreparedStatement state2 = ConnectionDB.connect("insert into " +
                        "product_detail(id_product, trademark, gender, description, rate, is_diamond, is_gemstone," +
                        " is_ecz, is_pearl, is_plain, is_child)" +
                        " values(?,?,?,?,?,?,?,?,?,?,?)");
                state2.setString(1, p.getId_product());
                state2.setString(2, p.getTrademark());
                state2.setString(3, p.getGender());
                state2.setString(4, p.getDescription());
                state2.setInt(5, p.getRate());
                state2.setBoolean(6,p.isDiamond());
                state2.setBoolean(7,p.isGemstone());
                state2.setBoolean(8,p.isECZ());
                state2.setBoolean(9,p.isPearl());
                state2.setBoolean(10,p.isPlain());
                state2.setBoolean(11,p.isChild());
                state2.executeUpdate();
                state2.close();
                ConnectionDB.closeConnection();
//// lấy connection bên connectionDb ra (c), gọi c.commit
                return 1;
            }
            catch (SQLException | ClassNotFoundException e){
//                gọi c.rollBack()
                System.out.println(e.getMessage());
                return  -3;
            }
        }
        return -1;
    }

    public static int editProduct(Product p) {
        if (p.getId_product().equals("") || p.getProduct_name().equals("")
                || p.getPrice() == 0 || p.getPicture1().equals("") || p.getId_category().equals("") || p.getQuantity() == 0)
            return -2;
        if(ProductsData.getProductByID(p.getId_product())!=null){
            try {
                PreparedStatement state1 = ConnectionDB.connect("UPDATE product SET  product_name = ? , picture1 = ?, picture2 = ?, picture3 = ?, price = ?, id_category = ?, quantity = ?)" +
                        "WHERE id_product = ?");
                state1.setString(1, p.getProduct_name());
                state1.setString(2, p.getPicture1());
                state1.setString(3, p.getPicture2().equals("") ? null : p.getPicture2());
                state1.setString(4, p.getPicture3().equals("") ? null : p.getPicture3());
                state1.setDouble(5, p.getPrice());
                state1.setString(6, p.getId_category());
                state1.setInt(7, p.getQuantity());
                state1.setString(8, p.getProduct_name());
                state1.executeUpdate();
                state1.close();
                PreparedStatement state2 = ConnectionDB.connect("UPDATE product_detail" +
                        "SET trademark = ?, gender = ?, description = ?, rate = ?, is_diamond = ?, is_gemstone = ?," +
                        " is_ecz = ?, is_pearl = ?, is_plain = ?, is_child = ?" +
                        "WHERE id_bill = ?");

                state2.setString(1, p.getTrademark());
                state2.setString(2, p.getGender());
                state2.setString(3, p.getDescription());
                state2.setInt(4, p.getRate());
                state2.setBoolean(5,p.isDiamond());
                state2.setBoolean(6,p.isGemstone());
                state2.setBoolean(7,p.isECZ());
                state2.setBoolean(8,p.isPearl());
                state2.setBoolean(9,p.isPlain());
                state2.setBoolean(10,p.isChild());
                state2.setString(11, p.getId_product());
                state2.executeUpdate();
                state2.close();
                ConnectionDB.closeConnection();
//// lấy connection bên connectionDb ra (c), gọi c.commit
                return 1;
            }
            catch (SQLException | ClassNotFoundException e){
//                gọi c.rollBack()
                return  -3;
            }
        }
        return -1;
    }


    public static void updateRate(String productID) {
        try {
            PreparedStatement state = ConnectionDB.connect("update product_detail set rate = ? where id_product = ?");
            int newRate = CommentsData.getAverageRate(productID);
            state.setInt(1, newRate);
            state.setString(2, productID);
            state.executeUpdate();
            state.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
    }
    public static boolean updateProductQuantity(Map<Product, Integer> data) {
        try {
            PreparedStatement pstate = ConnectionDB.connect("update product set quantity = ? where id_product = ?");
            for (Product p : data.keySet()) {
                pstate.setInt(1, p.getQuantity() - p.getQuantity() - data.get(p));
                pstate.setString(2, p.getId_product());
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
