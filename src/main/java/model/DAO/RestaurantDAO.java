package model.DAO;

import model.DTO.Restaurant;

import java.sql.*;
import java.util.ArrayList;

/**
 * Created by nazanin on 3/30/2019.
 */
public class RestaurantDAO {

    private Connection connection;
    private ArrayList<Restaurant> records=new ArrayList<Restaurant>();

    public RestaurantDAO(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection= DriverManager.getConnection("jdbc:mysql://localhost/reservation","root","");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertRestaurant(Restaurant restaurant){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("INSERT INTO restaurants (name,address,email,description)  VALUES (?,?,?,?)");
            statement.setString(1,restaurant.getName());
            statement.setString(2,restaurant.getAddress());
            statement.setString(3,restaurant.getEmail());
            statement.setString(4,restaurant.getDescription());
            statement.execute();
        } catch (SQLException e) {
            System.out.println("not inserted");
            e.printStackTrace();
        }
    }

    public Restaurant selectRestaurantsById(int id){
        Restaurant restaurant = new Restaurant();
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT * FROM restaurants WHERE ID=?");
            statement.setInt(1,id);
            ResultSet set=statement.executeQuery();
            if(set.next()){
                restaurant.setName(set.getString("name"));
                restaurant.setAddress(set.getString("address"));
                restaurant.setEmail(set.getString("email"));
                restaurant.setDescription(set.getString("description"));
            }
        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return restaurant;
    }

    public ArrayList<Restaurant> selectRestaurants(){
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT * FROM restaurants");
            ResultSet set=statement.executeQuery();
            while (set.next()){
                Restaurant restaurant = new Restaurant();
           //     count++;
                restaurant.setName(set.getString("name"));
                restaurant.setAddress(set.getString("address"));
                restaurant.setEmail(set.getString("email"));
                restaurant.setDescription(set.getString("description"));
                records.add(restaurant);
            }
           // System.out.println(count);
        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return records;
    }

    public void updateRestaurant(){

    }
}
