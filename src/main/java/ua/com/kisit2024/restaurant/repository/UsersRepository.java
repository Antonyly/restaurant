package ua.com.kisit2024.restaurant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.kisit2024.restaurant.entity.Users;

public interface UsersRepository extends JpaRepository<Users, Long> {
}
