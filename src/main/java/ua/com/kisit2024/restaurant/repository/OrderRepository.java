package ua.com.kisit2024.restaurant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.kisit2024.restaurant.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
}
