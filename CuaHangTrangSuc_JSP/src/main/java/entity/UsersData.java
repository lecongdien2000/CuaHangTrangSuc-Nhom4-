package entity;

import database.ConnectionDB;
import product.Product;
import user.Date;
import user.User;

import javax.xml.transform.Result;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class UsersData {

    public static User getUsers(String uname){
        List<String> values = new ArrayList<>();
        values.add(uname);
        return getPreparedDataQuery("SELECT * FROM user WHERE username like ?", values).get(uname);
    }

    public static User getUsers(String uname, String pass){
        List<String> values = new ArrayList<>();
        values.add(uname);
        values.add(pass);
        return getPreparedDataQuery("SELECT * FROM user WHERE username like ? and password like ?", values).get(uname);

    }

    public static HashMap<String, User> getPreparedDataQuery(String query, List<String> values){
        HashMap<String, User> userResultList = new HashMap<>();
        try {
        PreparedStatement preStat = null;
        preStat = ConnectionDB.connect(query);
        for(int i = 0; i < values.size(); i++){
                preStat.setString(i+1, values.get(i));
        }
        ResultSet rs = preStat.executeQuery();
        while(rs.next()){
            User user = new User();
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setEmail(rs.getString("email"));
            user.setGender(rs.getString("gender"));
            user.setBirthday(Date.convertSqlStringToDate(rs.getDate("birthday").toString())); //return sql type///"/.;'./'
            user.setDescription(rs.getString("description"));
            user.setAccountName(rs.getString("accountName"));
            user.setAdmin(rs.getBoolean("admin"));
            userResultList.put(user.getUsername(), user);
        }

        rs.close();
        preStat.close();
        } catch (ClassNotFoundException|SQLException e) {
            e.printStackTrace();
        }
        return userResultList;
    }
    //chinh lai id user xuat hien
    public static void insertUser(User user) {
        try {
            PreparedStatement state1 = ConnectionDB.connect("insert into user(id_user, username, password, email, gender, birthday, description, accountName, admin)" +
                    " values(?, ?, ?, ?, ?, ?, ?, ?, ?)");
            user.setAccountName("[UNAME_" + user.getUsername()+"]");
            state1.setString(1, user.getUsername()); //insert user id
            state1.setString(2, user.getUsername());
            state1.setString(3, user.getPassword());
            state1.setString(4, user.getEmail());
            state1.setString(5, user.getGender());
            state1.setDate(6, java.sql.Date.valueOf(user.getBirthday().convertDateToSqlString()));
            state1.setString(7, user.getDescription());
            state1.setString(8, user.getAccountName());
            state1.setBoolean(9, user.isAdmin());
            state1.executeUpdate();
            state1.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
    }

    public static void updateUser(User user) {
        try {
            PreparedStatement state1 = ConnectionDB.connect("update user set email = ?, gender = ?, birthday = ?, description = ?, accountName = ? where username = ?");
            state1.setString(1, user.getEmail());
            state1.setString(2, user.getGender());
            state1.setDate(3, java.sql.Date.valueOf(user.getBirthday().convertDateToSqlString()));
            state1.setString(4, user.getDescription());
            state1.setString(5, user.getAccountName());
            state1.setString(6, user.getUsername());
            state1.executeUpdate();
            state1.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
    }
}
