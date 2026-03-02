    <%-- 
    Document   : welcome.jsp
    Created on : Jan 26, 2026, 1:34:05 PM
    Author     : PHI LONG
--%>

<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty user}">
                <h1>
                    Welcome, ${user.fullName}
                </h1>
                <a href="MainController?action=logout">Logout</a><br/>
                <a href="search.jsp">Search</a>
                <a href="university-form.jsp">Add</a><br/>
                
            </c:when>
            <c:otherwise>
                <c:redirect url="login.jsp"/>
            </c:otherwise>
        </c:choose>
        <%--
        code cu trc khi doi
            UserDTO u = (UserDTO)session.getAttribute("user");
            if (u!=null){       
        %>
                <h1>Welcome, <%=u.getFullName()%> </h1>
                <a href="MainController?action=logout&">Logout</a><br/>
                <a href="search.jsp">Seach</a>
        <%  } else {
                response.sendRedirect("login.jsp");
            }
        --%>
        
        
    </body>
</html>