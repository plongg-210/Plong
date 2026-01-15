<%-- 
    Document   : a
    Created on : Jan 8, 2026, 4:57:19 PM
    Author     : PHI LONG
--%>

<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UserDTO user = (UserDTO)request.getAttribute("user");
        %>
        
        Welcome <%=user.getFullName()%>,<br/>
        Bang dieu khien<br/>
        Ting nang 1<br/>
        Ting nang 2<br/>
        Ting nang 3<br/>
    </body>
</html>
