<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 13/11/17
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
</head>
<body>

<h1>Error</h1>
Exception is: <%= exception %>

<% session.getAttribute("");%>

</body>
</html>
