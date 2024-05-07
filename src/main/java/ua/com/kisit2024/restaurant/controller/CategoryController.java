package ua.com.kisit2024.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import ua.com.kisit2024.restaurant.entity.Category;
import ua.com.kisit2024.restaurant.service.CategoryService;


@Controller
public class CategoryController {

    private final CategoryService categoryService;

    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping("/category")
    public String getPageAllCategory(Model model) {

        model.addAttribute( "categories", categoryService.findAllCategories());

        return "category";
    }


}
