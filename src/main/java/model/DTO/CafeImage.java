package model.DTO;

/**
 * Created by nazanin on 4/2/2019.
 */
public class CafeImage {
    private int id;
    private int cafe_id;
    private String path;
    private String name;

    public CafeImage(){

    }

    public CafeImage(int id, int cafe_id, String path, String name) {
        this.id = id;
        this.cafe_id = cafe_id;
        this.path = path;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCafe_id() {
        return cafe_id;
    }

    public void setCafe_id(int cafe_id) {
        this.cafe_id = cafe_id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
