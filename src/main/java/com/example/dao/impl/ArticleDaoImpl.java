package com.example.dao.impl;

import org.springframework.stereotype.Repository;

import com.example.dao.ArticleDao;
import com.example.model.Article;

@Repository
public class ArticleDaoImpl extends GenericDaoImpl<Article, Integer> implements ArticleDao {}