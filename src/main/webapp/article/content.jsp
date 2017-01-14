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
<hr/>
<table border="1">
    <tr>
        <th>摘要</th>
        <th>内容</th>
    </tr>
    <c:forEach var="article" items="${sessionScope.article}" varStatus="vs">
        <tr>
            <td>${article.zhaiyao}</td>
            <td><textarea cols="30" rows="10">${article.content}</textarea></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>