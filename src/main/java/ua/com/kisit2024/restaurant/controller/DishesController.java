package ua.com.kisit2024.restaurant.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import ua.com.kisit2024.restaurant.entity.Category;
import org.springframework.ui.Model;
import ua.com.kisit2024.restaurant.service.DishesService;

@Controller
@RequiredArgsConstructor
public class DishesController {

    private final DishesService dishesService;
    @GetMapping("/category/{id}")
    public String GetDishesByCategory(@PathVariable(name = "id") Category category, Model model){

        model.addAttribute("dishesByCategory", dishesService.getDishesByCategory(category) );
        return "dishes-by-category";
    }

}
