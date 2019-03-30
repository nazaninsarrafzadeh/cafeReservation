package model.DTO;

/**
 * Created by HP on 1/31/2019.
 */
public class User {
    private String name;
    private String lastname;
    private String password;
    private String email;

    public User(){

    }
    public User(String name, String lastname, String password, String email) {
        this.name = name;
        this.lastname = lastname;
        this.password = password;
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
