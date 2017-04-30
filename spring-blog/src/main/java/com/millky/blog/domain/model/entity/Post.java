package com.millky.blog.domain.model.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Post {
    @Id
    @GeneratedValue
    int id;
    
    String userId;
    String name;

    @NotNull
    @Size(min = 1, max = 255)
    @Column(nullable = false)
    String title;

    @Size(max = 255)
    String subtitle;

    @NotNull
    @Size(min = 1, max = 100000000)
    @Column(length = 100000000, nullable = false)
    String content;
    
    String _csrf;
    
    LocalDateTime regDate;
}