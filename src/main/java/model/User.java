package model;

import java.util.Date;

/**
 * Created by Валера on 19.04.2017.
 */
public class User extends NamedEntity {

    private String email;

    private String password;

    private boolean enabled = true;

    private Date registered = new Date();

    private Role role;
}
