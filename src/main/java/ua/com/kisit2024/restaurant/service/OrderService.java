package ua.com.kisit2024.restaurant.service;

import org.springframework.stereotype.Service;
import ua.com.kisit2024.restaurant.entity.Order;
import ua.com.kisit2024.restaurant.repository.OrderRepository;

@Service
public class OrderService {

    private final OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public Order saveNewOrderForClient(Order order){
        return orderRepository.save(order);
    }



}
