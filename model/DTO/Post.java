package model.DTO;

import java.util.ArrayList;

public class Post {
    private int customerId;
    private String pic;
    private String caption;
    private int likes;
    private ArrayList<String> comments;
    //private ArrayList<String> tag;

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
}
