package com.cy.blog.mapper;

import com.cy.blog.entity.AboutMe;
import com.cy.blog.entity.article;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
    @Select("SELECT * FROM `blog`.`about_me`")
    List<AboutMe> aboutme();

    @Select("SELECT * FROM `blog`.`article` LIMIT 5")
    List<article>article();

    @Select("SELECT * FROM `blog`.`article` WHERE `column` = 'sleep' LIMIT 3")
    List<article>articleSleep();

    @Select("SELECT * FROM `blog`.`article` WHERE `column` = 'diet' LIMIT 3")
    List<article>articleDiet();

    @Select("SELECT * FROM `blog`.`article` WHERE `column` = 'sport' LIMIT 3")
    List<article>articleSport();

    @Select("SELECT * FROM `blog`.`article`  ORDER BY RAND() LIMIT 5")
    List<article>articleRecommend();
}
