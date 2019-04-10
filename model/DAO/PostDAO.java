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
                    ("INSERT INTO Posts (uid,caption,pic)  VALUES (?,?,?)");
            statement.setInt(1,post.getCustomerId());
            statement.setString(2,post.getPic());
            statement.setString(3,post.getCaption());
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

   public ArrayList<Post> getPosts(int uid){
        ArrayList<Post> posts=new ArrayList<Post>();
       try {
           PreparedStatement statement=connection.prepareStatement("SELECT * FROM posts WHERE uid=?");
           statement.setInt(1,uid);
           ResultSet set=statement.executeQuery();
           while (set.next()){
               Post post=new Post(uid);
               count++;
               post.setCaption(set.getString("caption"));
               post.setPic(set.getString("pic"));
               post.setDate("cdate");
               post.setPid(set.getInt("pid"));
               post.setLikes(getNumOfLikes(post.getPid()));
               //post.setComments(getComments(post.getPid()));
               posts.add(post);
           }
           System.out.println(count);
       } catch (SQLException e) {
           System.out.println("could not get posts");
       }
        return posts;
    }

    public int getNumOfPosts(int uid){
        int posts=0;
        try{
            PreparedStatement statement=connection.prepareStatement("select COUNT(uid) from post where uid=? GROUP BY uid");
            statement.setInt(1,uid);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                posts = set.getInt("count");
            }

        }catch (SQLException e){
            System.out.println("can't calculate");
        }
        return posts;
    }
    public int getNumOfLikes(int pid){
        int posts=0;
        try{
            PreparedStatement statement=connection.prepareStatement("select COUNT(pid) from likeP where pid=? GROUP BY pid");
            statement.setInt(1,pid);
            ResultSet set=statement.executeQuery();
            if (set.next()){
                posts = set.getInt("count");
            }

        }catch (SQLException e){
            System.out.println("can't calculate");
        }
        return posts;
    }
    public ArrayList<String> getComments(int pid){
        ArrayList<String> comments=new ArrayList<String>();
        return comments;
    }

}
