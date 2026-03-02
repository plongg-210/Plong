<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search University</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

<jsp:include page="welcome.jsp" />

<c:if test="${empty user}">
    <c:redirect url="login.jsp"/>
</c:if>

<div class="container my-4">

    <!-- Search Form -->
    <div class="card shadow-sm mb-4">
        <div class="card-body">
            <form action="MainController" method="post" 
                  class="row g-3 align-items-center">

                <input type="hidden" name="action" value="search"/>

                <div class="col-md-10">
                    <input type="text"
                           name="keywords"
                           value="${keywords}"
                           class="form-control"
                           placeholder="Enter university name...">
                </div>

                <div class="col-md-2 d-grid">
                    <button type="submit" class="btn btn-success">
                        Search
                    </button>
                </div>

            </form>
        </div>
    </div>

    <!-- Result -->
    <c:choose>

        <c:when test="${empty list}">
            <div class="alert alert-warning">
                No data matching the search criteria found!
            </div>
        </c:when>

        <c:otherwise>
            <div class="table-responsive">
                <table class="table table-bordered table-hover align-middle">

                    <thead class="table-dark text-center">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Short Name</th>
                            <th>City</th>
                            <th>Region</th>
                            <th>Type</th>
                            <th>Founded</th>
                            <th>Students</th>
                            <th>Faculties</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${list}" var="u">
                            <tr>
                                <td>${u.id}</td>
                                <td>${u.name}</td>
                                <td>${u.shortName}</td>
                                <td>${u.city}</td>
                                <td>${u.region}</td>
                                <td>${u.type}</td>
                                <td>${u.foundedYear}</td>
                                <td>${u.totalStudents}</td>
                                <td>${u.totalFaculties}</td>

                                <td class="text-center">

                                    <c:if test="${u.isDraft}">
                                        <a href="MainController?action=updateUniversity&id=${u.id}"
                                           class="btn btn-sm btn-warning mb-1">
                                            Update
                                        </a>
                                    </c:if>

                                    <form action="MainController" method="POST"
                                          class="d-inline"
                                          onsubmit="return confirm('Bạn có chắc chắn muốn xóa trường đại học này không?');">

                                        <input type="hidden" name="action" value="deleteUniversity"/>
                                        <input type="hidden" name="id" value="${u.id}"/>
                                        <input type="hidden" name="keywords" value="${keywords}"/>

                                        <button type="submit"
                                                class="btn btn-sm btn-danger">
                                            Delete
                                        </button>
                                    </form>

                                </td>

                            </tr>
                        </c:forEach>
                    </tbody>

                </table>
            </div>
        </c:otherwise>

    </c:choose>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>