<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ include file="commons/inc.jsp" %>
<html>
<head>
    <title>user page</title>
</head>
<body>
<c:if test="${sessionScope.user eq null}">
    <c:redirect url="/"/>
</c:if>
<h1>user page</h1>
user: ${sessionScope.user.username}<br/>
<form action="${ctx}/article/queryArticleByTitleOrContent" method="post">
    标题关键字：<input name="title"> 内容关键字：<input name="content">
    <input type="submit" value="查询">
</form>

<hr/>
<table border="1">
    <tr>
        <th>INDEX</th>
        <th>TITLE</th>
        <th>TIME</th>
        <th colspan="2">OPERATION</th>
    </tr>
    <c:forEach var="article" items="${sessionScope.pagination.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td><a href="${ctx}/article/queryneirong/${article.id}">${article.title}</a></td>
            <td>${article.time}</td>
            <td><a href="${ctx}/article/search/${article.id}">EDIT</a></td>
            <td><a class="delete" href="${ctx }/article/remove/${article.id}" onclick="return del()">REMOVE</a></td>
        </tr>
    </c:forEach>
</table>
<hr>
查询记录
<hr/>
<table border="1">
    <tr>
        <th>INDEX</th>
        <th>TITLE</th>
        <th>TIME</th>
    </tr>
    <c:forEach var="article" items="${sessionScope.article}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td><a href="${ctx}/article/queryneirong/${article.id}">${article.title}</a></td>
            <td>${article.time}</td>
            </tr>
    </c:forEach>
</table>
<a href="${ctx}/user/logout">LOG OUT</a>
</body>
</html>
