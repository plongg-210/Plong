<%-- 
    Document   : login
    Created on : Jan 8, 2026, 4:19:09 PM
    Author     : PHI LONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Login</title>

        <!-- Bootstrap CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body class="bg-light">

        <div class="container vh-100 d-flex justify-content-center align-items-center">

            <div class="card shadow" style="width: 400px;">
                <div class="card-body">

                    <h3 class="text-center mb-4">Login</h3>

                    <form action="MainController" method="post">

                        <input type="hidden" name="action" value="login"/>

                        <div class="mb-3">
                            <label class="form-label">Username</label>
                            <input type="text" class="form-control" name="txtUsername" required="required"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="txtPassword" required="required"/>
                        </div>

                        <div class="d-grid">
                            <input type="submit" class="btn btn-primary" value="Login"/>
                        </div>

                    </form>

                    <c:if test="${not empty message}">
                        <div class="alert alert-danger mt-3 text-center">
                            ${message}
                        </div>
                    </c:if>

                </div>
            </div>

        </div>

    </body>
</html>