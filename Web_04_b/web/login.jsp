<%-- 
    Document   : login
    Created on : Jan 8, 2026, 4:19:09 PM
    Author     : PHI LONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="get">
            Username: <input type="text" name="txtUsername"/><br/>
            Password: <input type="password" name="txtPassword"/><br/>
            <input type="submit" value="Login"/>
        </form>
        <%
            String message = session.getAttribute("message")+"";
            message = (message.equals("null"))? "" :message; 
        %>
        
        <span style="color:red"><%=message%></span>
    </body>
</html>
