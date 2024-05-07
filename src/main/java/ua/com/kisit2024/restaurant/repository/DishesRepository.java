package ua.com.kisit2024.restaurant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.kisit2024.restaurant.entity.Category;
import ua.com.kisit2024.restaurant.entity.Dishes;

import java.util.List;

public interface DishesRepository extends JpaRepository<Dishes, Long> {


    List<Dishes> findAllByCategories(Category category);
}
