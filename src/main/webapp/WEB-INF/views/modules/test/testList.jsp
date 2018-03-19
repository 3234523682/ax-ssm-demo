<%--
  Created by IntelliJ IDEA.
  User: Mr_lin
  Date: 2018/3/14
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<c:forEach var="itemData" items="${data}">
    <p>${itemData}</p>
</c:forEach>
</body>
</html>
