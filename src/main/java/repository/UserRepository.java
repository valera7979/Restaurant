package repository;

import model.User;

import java.util.List;

/**
 * Created by Валера on 09.05.2017.
 */
public interface UserRepository {

    List<User> getAll();

}
