package ua.com.kisit2024.restaurant.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ua.com.kisit2024.restaurant.bl.Cart;
import ua.com.kisit2024.restaurant.entity.Users;

@Service
@RequiredArgsConstructor
public class CartService {
    private final UserService userService;
    private Cart cart;

    public Cart getCartForUser(Users user) {
        if (cart == null) {
            cart = new Cart();
            // Логіка для ініціалізації кошика користувача, якщо це потрібно
        }
        return cart;
    }
}
