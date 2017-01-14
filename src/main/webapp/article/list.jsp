<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>article list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <c:import url="add.jsp"/>
        <hr/>
        <h1>LIST Article</h1>
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
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="article/${sessionScope.pagination.statement}"/>
        </c:import>
    </body>
</html>