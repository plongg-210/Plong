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
        <title>Welcome</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body class="bg-light">

        <c:choose>

            <c:when test="${not empty user}">

                <div class="container vh-100 d-flex justify-content-center align-items-center">

                    <div class="card shadow text-center" style="width:450px">

                        <div class="card-body">

                            <h2 class="mb-4">
                                Welcome, ${user.fullName}
                            </h2>

                            <div class="d-grid gap-3">

                                <a href="search.jsp" class="btn btn-primary">
                                    Search User
                                </a>

                                <a href="MainController?action=logout" class="btn btn-danger">
                                    Logout
                                </a>

                            </div>

                        </div>

                    </div>

                </div>

            </c:when>

            <c:otherwise>
                <c:redirect url="login.jsp"/>
            </c:otherwise>

        </c:choose>

    </body>
</html>