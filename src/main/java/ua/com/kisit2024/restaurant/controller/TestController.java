package ua.com.kisit2024.restaurant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.swing.*;

@Controller
public class TestController {


    @GetMapping("/")
    public String getHomePage(Model model){
        model.addAttribute("hello", "Hi BROOOOOOO");
        return "index";
    }

}
