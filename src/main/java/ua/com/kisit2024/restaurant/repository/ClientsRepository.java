package ua.com.kisit2024.restaurant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.kisit2024.restaurant.entity.Clients;

public interface ClientsRepository extends JpaRepository<Clients, Long> {
}
