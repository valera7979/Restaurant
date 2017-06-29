package web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.RestaurantService;

/**
 * Created by Валера on 10.05.2017.
 */
@Controller
public class VotingController {


    @Autowired
    RestaurantService service;

    @RequestMapping(value = "/restaurants", method = RequestMethod.GET)
    public String restaurants(Model model) {
        model.addAttribute("restaurants", service.getAll());
        return "restaurants";
    }

}
