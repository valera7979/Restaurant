package repository;

import model.Restaurant;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * Created by Валера on 28.06.2017.
 */
@Repository
public class RestaurantRepositoryImpl implements RestaurantRepository {

    @PersistenceContext
    EntityManager em;

    @Override
    public List<Restaurant> getAll() {
        return em.createNamedQuery(Restaurant.ALL_SORTED, Restaurant.class).getResultList();
    }
}
