package ua.com.kisit2024.restaurant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.kisit2024.restaurant.entity.Menu;

public interface MenuRepository extends JpaRepository<Menu, Long> {
}
