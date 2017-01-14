<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>article edit page</title>
    </head>
    <body>
        <h1>EDIT Article</h1>
        <form action="${ctx}/article/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.article.id}">
            TITLE: <input name="title" value="${sessionScope.article.title}"><br>
            ZHAIYAO: <input name="zhaiyao" value="${sessionScope.article.zhaiyao}"><br>
            CONTENT: <input name="content" value="${sessionScope.article.content}"><br>
            TIME: <input name="time" value="${sessionScope.article.time}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>