<%-- 
    Document   : e403
    Created on : Jan 26, 2026
    Author     : PHI LONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>403 - Access Denied</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>

    <body class="bg-light">

        <div class="container vh-100 d-flex justify-content-center align-items-center">

            <div class="card shadow text-center" style="width:450px">

                <div class="card-body">

                    <h1 class="display-4 text-danger">
                        403
                    </h1>

                    <h4 class="mb-3">
                        Access Denied
                    </h4>

                    <p class="text-muted">
                        You do not have permission to access this page.
                    </p>

                    <div class="d-grid gap-2 mt-4">

                        <a href="welcome.jsp" class="btn btn-primary">
                            Go to Home
                        </a>

                        <a href="login.jsp" class="btn btn-secondary">
                            Login Again
                        </a>

                    </div>

                </div>

            </div>

        </div>

    </body>
</html>