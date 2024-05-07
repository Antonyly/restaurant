package ua.com.kisit2024.restaurant.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ua.com.kisit2024.restaurant.entity.Category;
import ua.com.kisit2024.restaurant.entity.Dishes;
import ua.com.kisit2024.restaurant.repository.DishesRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DishesService {

    private final DishesRepository dishesRepository;

    public List<Dishes> getDishesByCategory(Category category){
        return dishesRepository.findAllByCategories(category);
    }

}
