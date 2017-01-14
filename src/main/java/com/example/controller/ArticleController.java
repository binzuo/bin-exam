package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.example.model.Article;
import com.example.service.ArticleService;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("article")
public class ArticleController extends BaseController {

    private final ArticleService articleService;

    @Autowired
    public ArticleController(ArticleService articleService) {
        this.articleService = articleService;
    }

    @RequestMapping("add")
    private String add(Article article) {
        articleService.add(article);
        return "redirect:/article/list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        articleService.remove(id);
        return "redirect:/article/list";
    }

    @RequestMapping("modify")
    private String modify(Article article) {
        articleService.modify(article);
        return "redirect:/article/list";
    }

    @RequestMapping("list/{page}")
    private String list(@PathVariable int page) {
        getSession().setAttribute("pagination", articleService.list(page));
        return "redirect:/article/list.jsp";
    }

    @RequestMapping("list")
    private String list() {
        return list(1);
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        getSession().setAttribute("article", articleService.search(id));
        return "redirect:/article/edit.jsp";
    }
    @RequestMapping("queryneirong/{id}")
    private String query(@PathVariable("id") Integer id) {
        getSession().setAttribute("article", articleService.queryAll("queryneirong",id));
        return "redirect:/article/content.jsp";
    }
    @RequestMapping("queryArticleByTitleOrContent")
    private String query(String title,String content) {
        if (title.trim().isEmpty()) {
            title = null;
        }
        if (content.trim().isEmpty()) {
            content = null;
        }
        System.out.println(title + ", " + content);
        Map<String, String> map = new HashMap<>();
        map.put("title", title);
        map.put("content", content);
        getSession().setAttribute("pagination", articleService.list(1));

        getSession().setAttribute("article", articleService.queryAll("queryArticleByTitleOrContent",map));
        return "redirect:/user.jsp";
    }
}