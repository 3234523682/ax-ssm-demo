<%--
  Created by IntelliJ IDEA.
  User: Mr_lin
  Date: 2018/3/16
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
    <title>新建Act模型</title>
</head>
<body>
<form action="${ctx}/workflow/model/create" method="post">
    <div>
        <table>
            <tr>
                <td>名称：</td>
                <td><input name="name" type="text"/></td>
            </tr>
            <tr>
                <td>KEY：</td>
                <td><input name="key" type="text"/></td>
            </tr>
            <tr>
                <td>描述：</td>
                <td><input name="description" type="text"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="提交"></td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
