package model.DAO;

import model.DTO.CafeImage;

import java.sql.*;
import java.util.ArrayList;

/**
 * Created by nazanin on 4/2/2019.
 */
public class CafeFileDAO {

    private Connection connection;
     private ArrayList<CafeImage> images = new ArrayList<CafeImage>();

    public CafeFileDAO(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection= DriverManager.getConnection("jdbc:mysql://localhost/reservation","root","");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertImg(int cafe_id,String path,String fileName){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("INSERT INTO images (path,filename,cafe_id)  VALUES (?,?,?)");
            statement.setString(1,path);
            statement.setString(2,fileName);
            statement.setInt(3,cafe_id);
            statement.execute();
        } catch (SQLException e) {
            System.out.println("not inserted");
            e.printStackTrace();
        }
    }

    public ArrayList<CafeImage> selectImages(int id){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("SELECT * FROM images WHERE cafe_id=?");
            statement.setInt(1,id);
            ResultSet set = statement.executeQuery();
            while (set.next()){
                CafeImage image = new CafeImage();
                image.setPath(set.getString("path"));
                image.setName(set.getString("filename"));
                images.add(image);
            }
        } catch (SQLException e) {
            System.out.println("not select");
            e.printStackTrace();
        }
        return images;
    }
}
