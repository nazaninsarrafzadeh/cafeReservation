package model.DAO;

import model.DTO.Post;
import java.sql.*;
import java.util.ArrayList;

public class PostDAO {
    private int count=0;
    private Connection connection;
    private ArrayList<Post> records=new ArrayList<Post>();

    public PostDAO(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/reservation", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void insert(Post post){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("INSERT INTO Posts (uid,pic,caption,likes)  VALUES (?,?,?,?)");
            statement.setInt(1,post.getCustomerId());
            statement.setString(1,post.getPic());
            statement.setString(2,post.getCaption());
            statement.setInt(3,post.getLikes());
            statement.execute();
        } catch (SQLException e) {
            System.out.println("not inserted");
            e.printStackTrace();
        }

            for (int i = 0; i < post.getComments().size(); i++) {
                try {
                    PreparedStatement statement=connection.prepareStatement
                            ("INSERT INTO postComments (uid,post)  VALUES (?,?)");
                    statement.setInt(1,post.getCustomerId());
                    statement.setString(2,post.getComments().get(i));
                    statement.execute();
                } catch (SQLException e) {
                    System.out.println("not inserted");
                    e.printStackTrace();
                }
            }
    }
}
