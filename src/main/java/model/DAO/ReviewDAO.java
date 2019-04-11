package model.DAO;

import model.DTO.Reservation;
import model.DTO.Review;

import java.sql.*;
import java.util.ArrayList;

/**
 * Created by nazanin on 4/8/2019.
 */
public class ReviewDAO {
    private Connection connection;
     private ArrayList<Review> records=new ArrayList<>();

    public ReviewDAO(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection= DriverManager.getConnection("jdbc:mysql://localhost/reservation?useUnicode=true&characterEncoding=UTF-8","root","");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertReview(Review review){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("INSERT INTO reviews (quality_level,price_level,occasion,comment,customer_id,cafe_id,date)  VALUES (?,?,?,?,?,?,?)");
            statement.setInt(1,review.getQualityLevel());
            statement.setString(2,review.getPriceLevel());
            statement.setString(3,review.getOccasion());
            statement.setString(4,review.getComment());
            statement.setInt(5,review.getCustomer_id());
            statement.setInt(6,review.getCafe_id());
            statement.setString(7,review.getDate());
            statement.execute();
        } catch (SQLException e) {
            System.out.println("not inserted");
            e.printStackTrace();
        }
    }

    public ArrayList<Review> getCafeReviews(int id) {
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT * FROM reviews WHERE cafe_id=?");
            statement.setInt(1,id);
            ResultSet set=statement.executeQuery();
            while (set.next()){
                Review review = new Review();
                review.setId(set.getInt("id"));
                review.setCustomer_id(set.getInt("customer_id"));
                review.setComment(set.getString("comment"));
                review.setDate(set.getString("date"));
                records.add(review);
            }

        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return records;
    }

    public int getRate(int id){
        int rate = 0;
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT AVG(quality_level) AS rate FROM reviews WHERE cafe_id=?");
            statement.setInt(1,id);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                rate = set.getInt("rate");
            }

        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return rate;
    }
}
