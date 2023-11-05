package domain;

import lombok.Data;

@Data
public class Counter {
    private String id;
    private String name;
    private String counterType;

    public Counter(String id, String name, String counterType) {
        this.id = id;
        this.name = name;
        this.counterType = counterType;
    }
}
