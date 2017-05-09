package model;

import java.time.LocalDateTime;

/**
 * Created by Валера on 19.04.2017.
 */
public class Dish extends NamedEntity {

    private Integer price;

    private LocalDateTime created;

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

}
