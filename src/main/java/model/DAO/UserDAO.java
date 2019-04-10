package model.DAO;


//import controller.security.PasswordUtils;
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
                    ("INSERT INTO users (name,lastname,email,password,salt)  VALUES (?,?,?,?,?)");
            statement.setString(1,users.getName());
            statement.setString(2,users.getLastname());
            statement.setString(3,users.getEmail());
            statement.setString(4,users.getPassword());
            statement.setString(5,users.getSalt());
            statement.execute();
        } catch (SQLException e) {
            System.out.println("not inserted");
            e.printStackTrace();
        }
    }
//    public void EditBio(int uid,User user){
//        try {
//            PreparedStatement statement=connection.prepareStatement
//                    ("UPDATE users SET bio=user.bio  WHERE id=?");
//            statement.setInt(1,uid);
//            statement.execute();
//        } catch (SQLException e) {
//            System.out.println("something went wrong!");
//            e.printStackTrace();
//        }
//    }


    public void update(User user){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("UPDATE users SET name=?,lastname=?,email=?,image_path=?,filename=?,bio=? WHERE id = ?");
            statement.setString(1,user.getName());
            statement.setString(2,user.getLastname());
            statement.setString(3,user.getEmail());
            statement.setString(4,user.getImagePath());
            statement.setString(5,user.getImageName());
            statement.setInt(6,user.getId());
            statement.setString(7,user.getBio());
            statement.execute();
        } catch (SQLException e) {
            System.out.println("couldn't update!!!");
            e.printStackTrace();
        }
    }


    public boolean emailExists(String email){
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT * FROM users WHERE email=?");
            statement.setString(1,email);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                return true;
            }
        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return false;
    }

    public boolean loginCheck(String email,String userPass){
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT * FROM users WHERE email=?");
            statement.setString(1,email);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                String password = set.getString("password");
                String salt = set.getString("salt");
//                boolean passwordMatch = PasswordUtils.verifyUserPassword(userPass, password, salt);
//
//                if(passwordMatch)
//                {
//                    return true;
//                }
            }
        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return false;
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

    public User getUserById(int id){
        User users=new User();
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT * FROM users WHERE ID=?");
            statement.setInt(1,id);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                users.setName(set.getString("name"));
                users.setLastname(set.getString("lastname"));
                users.setEmail(set.getString("email"));
                users.setImageName(set.getString("filename"));
            }
            System.out.println(count);
        } catch (SQLException e) {
            System.out.println("could not select");
        }
        return users;
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
    public int calculateFollowers(int uid){
        int followers=0;
        try{
        PreparedStatement statement=connection.prepareStatement("select COUNT(uid2) from followU where uid2=? GROUP BY uid2 ");
            statement.setInt(1,uid);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                followers = set.getInt("count");
            }

        }catch (SQLException e){
            System.out.println("can't calculate");
        }
        return 0;
    }
    public int calculateFollowing(int uid){
        int following=0;
        try{
            PreparedStatement statement=connection.prepareStatement("select COUNT(uid1) from followU where uid1=? GROUP BY uid1");
            statement.setInt(1,uid);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                following = set.getInt("count");
            }

        }catch (SQLException e){
            System.out.println("can't calculate");
        }
        return 0;
    }
}