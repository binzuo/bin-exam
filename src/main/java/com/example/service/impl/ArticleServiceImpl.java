package com.example.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.example.dao.GenericDao;
import com.example.model.Article;
import com.example.service.ArticleService;

@Service
public class ArticleServiceImpl extends GenericServiceImpl<Article, Integer> implements ArticleService {

    @Override
    @Autowired
    @Qualifier("articleDaoImpl")
    public void setGenericDao(GenericDao<Article, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}