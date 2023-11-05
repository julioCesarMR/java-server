package aws.dummy;


import domain.Counter;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController("/counters")
public class counter {

    

    @GetMapping
    public List<Counter> getUser() {

        List<Counter> users = new ArrayList<>();

        users.add(new Counter("1", "P1", "PLATAFORMA"));
        users.add(new Counter("2", "P2", "PLATAFORMA"));
        users.add(new Counter("3", "P3", "PLATAFORMA"));
        users.add(new Counter("4", "V1", "VENTANILLA"));
        users.add(new Counter("5", "V2", "VENTANILLA"));

        return users;
    }
}
