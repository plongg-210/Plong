<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>403 - Access Denied</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

<div class="container min-vh-100 d-flex justify-content-center align-items-center">
    <div class="card shadow-lg border-0 text-center" style="max-width: 500px; width: 100%;">
        
        <div class="card-body p-5">

            <h1 class="display-4 text-danger fw-bold">403</h1>

            <h4 class="mb-3">Access Denied</h4>

            <p class="text-muted mb-4">
                You do not have permission to access this page.
            </p>

            <div class="d-grid gap-2">
                <a href="MainController?action=home"
                   class="btn btn-primary">
                    Go Back Home
                </a>

                <a href="MainController?action=logout"
                   class="btn btn-outline-danger">
                    Logout
                </a>
            </div>

        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>