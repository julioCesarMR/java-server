package aws.dummy;


import domain.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController()
@RequestMapping("/users")
public class user {

    

    @GetMapping
    public List<User> getUser() {

        List<User> users = new ArrayList<>();

        users.add(new User("1", "user1", "password1", "email1", "phone1", "address1"));
        users.add(new User("2", "user2", "password2", "email2", "phone2", "address2"));
        users.add(new User("3", "user3", "password3", "email3", "phone3", "address3"));
        users.add(new User("4", "user4", "password4", "email4", "phone4", "address4"));
        users.add(new User("5", "user5", "password5", "email5", "phone5", "address5"));

        return users;
    }
}
