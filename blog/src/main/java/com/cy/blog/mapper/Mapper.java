package com.cy.blog.mapper;

import com.cy.blog.entity.AboutMe;
import com.cy.blog.entity.Article;
import com.cy.blog.entity.Comment;
import lombok.Data;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {
    @Select("SELECT * FROM `blog`.`about_me`")
    List<AboutMe> aboutme();

    @Select("SELECT * FROM `blog`.`article` LIMIT 6")
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

    @Select("INSERT INTO `blog`.`article`" +
            "(`title`, `author`, `time`, `view_num`, `likes`, `comment_num`, `induction`, `content`, `column`) " +
            "VALUES (#{title}, #{author} , #{time}, #{view_num}, #{likes}, #{comment_num}, #{induction}, #{content}, #{column})")
    List<Article> addArticle(Article article);

    @Select("select * from article where article.`column` = #{column}")
    List<Article> getArticleColumn(Article article);

    @Select("select * from article where id = (select MAX(id) from article where id < #{id})")
    List<Article> getPreviousArticle(Article article);

    @Select("select * from article where id = (select MIN(id) from article where id > #{id})")
    List<Article> getNextArticles(Article article);


    @Update("UPDATE `blog`.`article` SET `title` = #{title}, `induction` = #{induction}, `content` = #{content}, `column` = #{column} WHERE `id` = #{id}")
    int editArticles(Article article);

    @Delete("DELETE FROM `blog`.`article` WHERE `id` = #{id}")
    int deleteArticles(Article article);

    @Select("select * from comment where comment.id in (select id from article_comment where article_comment.article_id = #{id})")
    List<Comment> selectComment(Article article);



}
