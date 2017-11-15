<%@ page errorPage="error.jsp" %>

<%! String name = "Xavi"; int day=1; Object object = null;%>


<html>
<body>
<h2>Hello World!</h2>

<jsp:forward page="lloro.jsp" />

<h1><%
   object.toString();
out.println("Your IP address is " + name);
%></h1>

<%=name%>
<br/>
<%=1+1%>

<% if (day == 1 | day == 7) { %>
    <p> Today is weekend</p>
<% } else { %>
    <p> Today is not weekend</p>
<% } %>

</body>
</html>
