package model.DTO;

/**
 * Created by nazanin on 3/30/2019.
 */
public class Restaurant {
    private int id;
    private String name;
    private String address;
    private String email;
    private String description;

    public Restaurant(){

    }

    public Restaurant(int id, String name, String address, String email, String description) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.email = email;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
