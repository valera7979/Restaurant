package repository;

import model.Restaurant;

import java.util.List;

/**
 * Created by Валера on 28.06.2017.
 */
public interface RestaurantRepository {

    List<Restaurant> getAll();

}
