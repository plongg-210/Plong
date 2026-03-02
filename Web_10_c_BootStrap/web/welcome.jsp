<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Bootstrap 5 (chỉ cần include 1 lần ở page chính nếu đã có thì bỏ dòng này) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">

<c:choose>
    <c:when test="${not empty user}">

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
            <div class="container">

                <span class="navbar-brand">
                    Welcome, ${user.fullName}
                </span>

                <div class="ms-auto d-flex gap-2">

                    <a href="search.jsp"
                       class="btn btn-outline-light btn-sm">
                        Search
                    </a>

                    <a href="university-form.jsp"
                       class="btn btn-success btn-sm">
                        Add
                    </a>

                    <a href="MainController?action=logout"
                       class="btn btn-danger btn-sm">
                        Logout
                    </a>

                </div>

            </div>
        </nav>

    </c:when>

    <c:otherwise>
        <c:redirect url="login.jsp"/>
    </c:otherwise>
</c:choose>