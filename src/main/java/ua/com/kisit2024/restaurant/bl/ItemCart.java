package ua.com.kisit2024.restaurant.bl;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import ua.com.kisit2024.restaurant.entity.Dishes;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

public class ItemCart {

    private Dishes dish;
    private int quantity;

}
