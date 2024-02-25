package ua.com.kisit2024.restaurant.service;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ua.com.kisit2024.restaurant.entity.Category;
import ua.com.kisit2024.restaurant.repository.CategoryRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CategoryService {

    private final CategoryRepository categoryRepository;

    public List<Category> findAllCategories(){

//        List<Category> categories = new ArrayList<>();
        return categoryRepository.findAll();


    };

}
