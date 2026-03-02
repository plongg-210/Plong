<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add University</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

<div class="container my-5">
    <div class="card shadow-lg border-0">
        <div class="card-body p-4">

            <h3 class="mb-4 text-primary">Add University</h3>

            <form action="MainController" method="post">
                <input type="hidden" name="action" value="addUniversity"/>

                <div class="row g-3">

                    <div class="col-md-6">
                        <label class="form-label">ID</label>
                        <input type="text" class="form-control"
                               name="id" value="${u.id}">
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Name</label>
                        <input type="text" class="form-control"
                               name="name" value="${u.name}">
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Short Name</label>
                        <input type="text" class="form-control"
                               name="shortName" value="${u.shortName}">
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Description</label>
                        <input type="text" class="form-control"
                               name="description" value="${u.description}">
                    </div>

                    <div class="col-md-4">
                        <label class="form-label">Founded Year</label>
                        <input type="number" step="1" min="0"
                               class="form-control"
                               name="foundedYear"
                               value="${u.foundedYear}">
                    </div>

                    <div class="col-md-4">
                        <label class="form-label">City</label>
                        <input type="text" class="form-control"
                               name="city" value="${u.city}">
                    </div>

                    <div class="col-md-4">
                        <label class="form-label">Region</label>
                        <input type="text" class="form-control"
                               name="region" value="${u.region}">
                    </div>

                    <div class="col-12">
                        <label class="form-label">Address</label>
                        <input type="text" class="form-control"
                               name="address" value="${u.address}">
                    </div>

                    <div class="col-md-4">
                        <label class="form-label">Type</label>
                        <input type="text" class="form-control"
                               name="type" value="${u.type}">
                    </div>

                    <div class="col-md-4">
                        <label class="form-label">Total Students</label>
                        <input type="number" step="1" min="0"
                               class="form-control"
                               name="totalStudents"
                               value="${u.totalStudents}">
                    </div>

                    <div class="col-md-4">
                        <label class="form-label">Total Faculties</label>
                        <input type="number" step="1" min="0"
                               class="form-control"
                               name="totalFaculties"
                               value="${u.totalFaculties}">
                    </div>

                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input"
                                   type="checkbox"
                                   name="isDraft"
                                   ${u.isDraft ? 'checked' : ''}>
                            <label class="form-check-label">
                                Draft
                            </label>
                        </div>
                    </div>

                </div>

                <div class="mt-4">
                    <button type="submit" class="btn btn-primary btn-lg">
                        Add
                    </button>
                </div>

            </form>

            <c:if test="${not empty msg}">
                <div class="alert alert-success mt-3">
                    ${msg}
                </div>
            </c:if>

            <c:if test="${not empty error}">
                <div class="alert alert-danger mt-3">
                    ${error}
                </div>
            </c:if>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>