<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

<div class="container min-vh-100 d-flex justify-content-center align-items-center">
    <div class="card shadow-lg border-0" style="max-width: 400px; width: 100%;">
        <div class="card-body p-4">

            <h3 class="text-center mb-4 fw-semibold">Login</h3>

            <form action="MainController" method="post">
                <input type="hidden" name="action" value="login"/>

                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input type="text"
                           name="txtUsername"
                           class="form-control"
                           required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input type="password"
                           name="txtPassword"
                           class="form-control"
                           required>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary btn-lg">
                        Login
                    </button>
                </div>
            </form>

            <c:if test="${not empty message}">
                <div class="alert alert-danger mt-3 mb-0 text-center">
                    ${message}
                </div>
            </c:if>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>