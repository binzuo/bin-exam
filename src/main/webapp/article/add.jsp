<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>article add page</title>
    </head>
    <body>
        <h1>发布新文章</h1>
        <form action="${ctx}/article/add" method="post">
            <input name="title" placeholder="TITLE"><br>
            <input name="zhaiyao" placeholder="ZHAIYAO"><br>
            <textarea name="content" placeholder="CONTENT"></textarea><br>
            <input name="time" placeholder="TIME"><br>
            <input type="submit" value="发布">
        </form>
    </body>
</html>