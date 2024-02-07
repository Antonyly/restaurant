package ua.com.kisit2024.restaurant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.kisit2024.restaurant.entity.DishHasOrder;

public interface DishHasOrderRepository extends JpaRepository<DishHasOrder, Long> {
}
