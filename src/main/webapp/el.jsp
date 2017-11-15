<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lib2" %>
<%@ taglib prefix="mo" tagdir="/WEB-INF/tags/lib1" %>
<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 15/11/17
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>EL Examples</title>
</head>
<body>

    <c:set var="object" value="5"/>

    <c:if test="${object.length() < 5}">
        Es menor que 5
    </c:if>

    <my:myTag op1="7" op2="6" />
    <mo:myTag/>


</body>
</html>
