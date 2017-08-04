<%--
  Created by IntelliJ IDEA.
  User: liujun10
  Date: 2017/8/4
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="false" %>
<html>
<body>
<h1>标题: ${title}</h1>

<h1>消息 : ${message}</h1>

Dear <strong>${user}</strong>, Welcome to Admin Page.
<a href="<c:url value="/logout" />">Logout</a>


<div>
    <sec:authorize access="hasRole('ADMIN')">
        <label><a href="#">Start backup</a> | This part is visible only to one who is both ADMIN</label>
    </sec:authorize>
</div>
</body>
</html>