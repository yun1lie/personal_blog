package com.cy.blog.controller;

import com.cy.blog.entity.AboutMe;
import com.cy.blog.entity.article;
import com.cy.blog.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class hello {
    @Autowired
    private Mapper mapper;

    // canshu model cun fang shujv
    @RequestMapping("/")
    public String hello(Model model) {

        List<article> articleList = mapper.article();
        model.addAttribute("articleList", articleList);

        List<article> articleList1 = mapper.articlesleep();
        model.addAttribute("articleList1", articleList1);
        return "index";

    }

    @RequestMapping("/about_me")
    public String about_me(Model model) {
        List<AboutMe> aboutMeList = mapper.aboutme();
        model.addAttribute("about", aboutMeList.get(0));
        return "about_me";
    }

    @RequestMapping("/list")
    public String list(Model model) {
        return "list";
    }


}
