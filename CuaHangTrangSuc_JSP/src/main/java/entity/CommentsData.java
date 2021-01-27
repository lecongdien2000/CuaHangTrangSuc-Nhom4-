package entity;

import database.ConnectionDB;
import product.Comment;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CommentsData {
    public static void insertComment(Comment cmt) {
        String userID = cmt.getUserID();
        String productID = cmt.getProductID();
        String name = cmt.getName();
        String email = cmt.getEmail();
        String com = cmt.getComment();
        int rate = cmt.getRate();
        PreparedStatement comState = null;
        try {
            comState = ConnectionDB.connect("insert into comments(id_user, id_product, name, email, comment, rate)" +
                    " values(?, ?, ?, ?, ?, ?)");
            comState.setString(1, userID);
            comState.setString(2, productID);
            comState.setString(3, name);
            comState.setString(4, email);
            comState.setString(5, com);
            comState.setInt(6, rate);
            comState.executeUpdate();
            comState.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
    }

    public static int getAverageRate(String productID) {
        int rate = 0;
        PreparedStatement comState = null;
        try {
            comState = ConnectionDB.connect("select sum(rate)/count(*) as avgRate from comments where id_product = ?" );
            comState.setString(1, productID);
            ResultSet rs = comState.executeQuery();
            rs.next();
            rate = (int)rs.getDouble("avgRate");
            comState.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        }
        return rate;
    }

    public static List<Comment> getCommentsByProductID(String productID) {
        Statement s = null;
        List<Comment> cmtList = new ArrayList<Comment>();
        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from comments where id_product = '" + productID + "'");
            while(rs.next()){
                Comment cmt = new Comment(rs.getString("id_user"), rs.getString("id_product"), rs.getString("name"), rs.getString("email"), rs.getString("comment"), rs.getInt("rate"));
                cmtList.add(cmt);
            }
            s.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException a) {
            a.printStackTrace();
        }
        return cmtList;
    }
}
