package domain;

import lombok.Data;

@Data
public class User {
    private String id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private String address;

    public User(String id, String username, String password, String email, String phone, String address) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.address = address;
    }
}
