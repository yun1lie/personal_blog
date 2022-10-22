package com.cy.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class hello {
    // canshu model cun fang shujv
    @RequestMapping("/")
    public String hello(Model model) {

        model.addAttribute("name", "hello world");

        return "index";

    }

    @RequestMapping("/about_me")
    public String about_me(Model model){
        return "about_me";
    }
}
