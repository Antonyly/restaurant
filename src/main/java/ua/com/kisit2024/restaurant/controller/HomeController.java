package ua.com.kisit2024.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {


    @GetMapping("/")
    public String getHomePage(Model model){
        model.addAttribute("hello", "Welcome to our online restaurant");
        return "index";
//        return "redirect:/index";
    }
    @GetMapping("/payment")
    public  String getPaymentPage() {
        return "payment";
    }

    @GetMapping("/delivery")
    public String getDeliveryPage(){
        return "delivery";
    }

}
