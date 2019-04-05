package model.DAO;


import model.DTO.User;

import java.sql.*;
import java.util.ArrayList;


public class UserDAO {

    private int count=0;
    private Connection connection;
    private ArrayList<User> records=new ArrayList<User>();

    public UserDAO(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection= DriverManager.getConnection("jdbc:mysql://localhost/reservation","root","root");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insert(User users){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("INSERT INTO users (name,lastname,password,email)  VALUES (?,?,?,?,?)");
            statement.setString(1,users.getName());
            statement.setString(2,users.getLastname());
            statement.setString(3,users.getPassword());
            statement.setString(4,users.getEmail());
            statement.setString(5,users.getBio());
            statement.execute();
        } catch (SQLException e) {
            System.out.println("not inserted");
            e.printStackTrace();
        }
    }
    public void EditBio(int uid,User user){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("UPDATE users SET bio=user.bio  WHERE id=?");
            statement.setInt(1,uid);
            statement.execute();
        } catch (SQLException e) {
            System.out.println("something went wrong!");
            e.printStackTrace();
        }
    }
    public boolean loginCheck(String email,String password){

        try {
            PreparedStatement statement=connection.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
            statement.setString(1,email);
            statement.setString(2,password);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                return true;
            }
        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return false;
    }

    public void update(User user, int uid,String into){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("UPDATE users SET ? = ? WHERE uid = ?");
            statement.setString(1,into);
            statement.setString(2,user.getName());
            statement.setInt(3,uid);
            statement.execute();
        } catch (SQLException e) {
            System.out.println("couldn't update!!!");
            e.printStackTrace();
        }
    }


    public int getCustomerId(String email){
        int id=0;
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT ID FROM users WHERE email=?");
            statement.setString(1,email);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                id = set.getInt("ID");
            }
        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return id;
    }
    public ArrayList<User> getRecords(){
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT * FROM users");
            ResultSet set=statement.executeQuery();
            while (set.next()){
                User users=new User();
                count++;
                users.setName(set.getString("name"));
                users.setLastname(set.getString("lastname"));
                users.setEmail(set.getString("email"));
                records.add(users);
            }
            System.out.println(count);
        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return records;
    }
}