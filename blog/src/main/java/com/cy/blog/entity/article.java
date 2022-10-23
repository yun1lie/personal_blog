package com.cy.blog.entity;


import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class article {
    private int id;
    private String title;
    private String author;
    private Date time;
    private int view_num;
    private int likes;
    private int comment_num;
    private String induction;
    private String content;
    private String column;
}
