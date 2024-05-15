package ua.com.kisit2024.restaurant.bl;

import lombok.Getter;
import lombok.Setter;
import ua.com.kisit2024.restaurant.entity.Dishes;

import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
public class Cart {

    List<ItemCart> cart;
    private double totalValue;
    private int sumEl;

    public Cart() {
        this.cart = new ArrayList<>();
        this.totalValue = 0;
        this.sumEl = 0;
    }

    public synchronized void addNewItemToCart(Dishes dish, int quantity){
        boolean logic = true;
        for (ItemCart el:cart) {
            if (el.getDish().getId()==dish.getId()){
                logic = false;
                el.setQuantity(el.getQuantity()+quantity);
            }
        }

        if (logic) cart.add(new ItemCart(dish, quantity));
    }

    public synchronized void updateItemInCart(Dishes dish, int quantity){
        if(quantity<=0){
            for(ItemCart el: cart){
                if(el.getDish().getId()==dish.getId()){
                    cart.remove(el);
                    break;
                }
            }
        } else {
            for(ItemCart el: cart){
                if(el.getDish().getId()==dish.getId()){
                    el.setQuantity(quantity);
                }
            }
        }
    }

    public synchronized void deleteItemFromCart(Dishes dish){
        for (ItemCart el:cart) {
            if (el.getDish().getId()==dish.getId()){
                cart.remove(el);
                break;
            }
        }
    }

    public synchronized void deleteAllItemsFromCart(){
        cart.clear();
        totalValue = 0;
        sumEl = 0;
    }

    public synchronized double getTotalValue(){
        totalValue = 0;

        for(ItemCart el : cart){
            totalValue += el.getQuantity() * el.getDish().getPrice().doubleValue();
        }
        return totalValue;
    }

    public synchronized int getSumElInCart() {
        int a = cart.size();
        sumEl = a;
        return a;
    }



}
