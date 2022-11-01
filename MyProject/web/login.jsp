<%-- 
    Document   : login
    Created on : 01-11-2022, 23:03:13
    Author     : Trường Xuân
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="POST">
            Username: <input type="text" name="username" /> <br/>
            Password: <input type="password" name="password" /> <br/>
            <input type="submit" value="Login"/>
        </form>
        <c:if test="${requestScope.error!=null}">
            ${requestScope.error}
        </c:if>
    </body>
</html>
