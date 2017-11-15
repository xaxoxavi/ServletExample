<%--
  Created by IntelliJ IDEA.
  User: xavi
  Date: 15/11/17
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>JSTL</title>
</head>
<body>
<%!
    Integer var = null;
%>

<c:out value="${null}" default="lloro"/>
<c:set var="text" scope="session" value="JSTL works!!"/>

<!-- EL expression  ${text} -->
<c:out value="${text}"/>

<c:url value="/index.jsp" var="myURL">
    <c:param name="trackingId" value="1234"/>
    <c:param name="reportType" value="summary"/>
</c:url>

<c:out value="${myURL}"/>

<fmt:setLocale value="es"/>
<fmt:setBundle basename="translate" var="bundle" />

<fmt:message key="chicken" bundle="${bundle}"/>



</body>
</html>
