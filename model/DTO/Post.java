package model.DTO;

import java.util.ArrayList;

public class Post {
    private int pid;
    private int customerId;
    private String pic;
    private String caption;
    private int likes;
    private ArrayList<String> comments;
    String date;
    //private ArrayList<String> tag;

    public Post(int customerId) {
        this.customerId=customerId;
        this.comments=new ArrayList<String>();
        this.likes = 0;
    }
    public Post(String pic, String caption, int customerId) {
        this.customerId=customerId;
        this.pic = pic;
        this.caption = caption;
        this.comments=new ArrayList<String>();
        this.likes = 0;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public ArrayList<String> getComments() {
        return comments;
    }

    public void setComments(ArrayList<String> comments) {
        this.comments = comments;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getDate() {return date;}

    public void setDate(String date) {this.date = date;}

    public int getPid() {return pid;}

    public void setPid(int pid) {this.pid = pid;}
}
