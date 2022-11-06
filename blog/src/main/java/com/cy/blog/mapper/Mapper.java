package com.cy.blog.mapper;

import com.cy.blog.entity.AboutMe;
import com.cy.blog.entity.Article;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
    @Select("SELECT * FROM `blog`.`about_me`")
    List<AboutMe> aboutme();

    @Select("SELECT * FROM `blog`.`article`  LIMIT 5")
    List<Article> article();

    @Select("SELECT * FROM `blog`.`article` WHERE `column` = 'sleep' LIMIT 3")
    List<Article> articleSleep();

    @Select("SELECT * FROM `blog`.`article` WHERE `column` = 'diet' LIMIT 3")
    List<Article> articleDiet();

    @Select("SELECT * FROM `blog`.`article` WHERE `column` = 'sport' LIMIT 3")
    List<Article> articleSport();

    @Select("SELECT * FROM `blog`.`article`  ORDER BY RAND() LIMIT 5")
    List<Article> articleRecommend();

    @Select("select * from article where id = #{id}")
    List<Article> getArticle(Article article);

    @Select("select * from article where article.`column` = #{column}")
    List<Article> getArticleColumn(Article article);
}
