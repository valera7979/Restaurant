package model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Валера on 19.04.2017.
 */
@NamedQueries({
         @NamedQuery(name = User.ALL_SORTED, query = "SELECT u FROM User u ORDER BY u.name, u.email"),
})


@Entity
@Table(name="restaurants")
public class Restaurant extends NamedEntity {

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "restaurant")
    @OrderBy("dateTime DESC")
    protected List<Vote> votes;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "restaurant")
    @OrderBy("dateTime DESC")
    protected List<Dish> dishes;

}
