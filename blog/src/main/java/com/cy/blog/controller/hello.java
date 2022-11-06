package com.cy.blog.controller;

import com.cy.blog.entity.AboutMe;
import com.cy.blog.entity.Article;
import com.cy.blog.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class hello {
    @Autowired
    private Mapper mapper;

    // canshu model cun fang shujv
    @RequestMapping("/")
    public String hello(Model model) {

        List<Article> articleList = mapper.article();
        model.addAttribute("articleList", articleList);

        List<Article> articleList1 = mapper.articleSleep();
        model.addAttribute("articleList1", articleList1);

        List<Article> articleList2 = mapper.articleDiet();
        model.addAttribute("articleList2", articleList2);

        List<Article> articleList3 = mapper.articleSport();
        model.addAttribute("articleList3", articleList3);

        List<Article> articleList4 = mapper.articleRecommend();
        model.addAttribute("articleList4", articleList4);

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
        List<Article> articleList = mapper.article();
        model.addAttribute("articleList", articleList);
        return "list";
    }

    @RequestMapping("/article")
    public String article(@RequestParam Integer articleId, Model model) {
        Article article = new Article();
        article.setId(articleId);
        try {
            List<Article> articleList = mapper.getArticle(article);
            Article newArticle = articleList.get(0);
            model.addAttribute("newArticle", newArticle);
        } catch (Exception e) {

        }

        return "article";
    }


}
