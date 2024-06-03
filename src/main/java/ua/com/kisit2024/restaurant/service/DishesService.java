package ua.com.kisit2024.restaurant.service;

import jakarta.persistence.Cacheable;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ua.com.kisit2024.restaurant.entity.Category;
import ua.com.kisit2024.restaurant.entity.Dishes;
import ua.com.kisit2024.restaurant.repository.DishesRepository;

import java.awt.print.Pageable;
import java.util.List;

@Service
@RequiredArgsConstructor
public class DishesService {

    private final DishesRepository dishesRepository;

    public List<Dishes> getDishesByCategory(Category category){
        return dishesRepository.findAllByCategories(category);
    }
//    public List<Dishes> getProducByName(String name){
//        return  dishesRepository.findAllByCategories(name);
//    }

}
