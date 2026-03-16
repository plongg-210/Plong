<%-- 
    Document   : university-form
    Created on : Mar 17, 2026
    Author     : PHI LONG
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>University Form</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>

    <body class="bg-light">

        <div class="container mt-5">

            <div class="card shadow">

                <div class="card-body">

                    <h3 class="mb-4 text-center">

                        <c:choose>
                            <c:when test="${mode == 'update'}">
                                Update University
                            </c:when>
                            <c:otherwise>
                                Add University
                            </c:otherwise>
                        </c:choose>

                    </h3>

                    <form action="MainController" method="POST">

                        <input type="hidden" name="action"
                               value="${mode=='update'?'saveUpdateUniversity':'addUniversity'}"/>

                        <div class="row">

                            <div class="col-md-6 mb-3">
                                <label class="form-label">ID</label>
                                <input type="text"
                                       class="form-control"
                                       name="id"
                                       value="${u.id}"
                                       ${mode == 'update' ? 'readonly' : ''}>
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Name</label>
                                <input type="text"
                                       class="form-control"
                                       name="name"
                                       value="${u.name}">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Short Name</label>
                                <input type="text"
                                       class="form-control"
                                       name="shortName"
                                       value="${u.shortName}">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Founded Year</label>
                                <input type="number"
                                       class="form-control"
                                       name="foundedYear"
                                       step="1"
                                       min="0"
                                       value="${u.foundedYear}">
                            </div>

                            <div class="col-md-12 mb-3">
                                <label class="form-label">Description</label>
                                <input type="text"
                                       class="form-control"
                                       name="description"
                                       value="${u.description}">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Address</label>
                                <input type="text"
                                       class="form-control"
                                       name="address"
                                       value="${u.address}">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">City</label>
                                <input type="text"
                                       class="form-control"
                                       name="city"
                                       value="${u.city}">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Region</label>
                                <input type="text"
                                       class="form-control"
                                       name="region"
                                       value="${u.region}">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Type</label>
                                <input type="text"
                                       class="form-control"
                                       name="type"
                                       value="${u.type}">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Total Students</label>
                                <input type="number"
                                       class="form-control"
                                       name="totalStudents"
                                       step="1"
                                       min="0"
                                       value="${u.totalStudents}">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Total Faculties</label>
                                <input type="number"
                                       class="form-control"
                                       name="totalFaculties"
                                       step="1"
                                       min="0"
                                       value="${u.totalFaculties}">
                            </div>

                            <div class="col-md-12 mb-3">
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

                        <div class="d-grid gap-2">

                            <c:choose>
                                <c:when test="${mode == 'update'}">
                                    <button type="submit" class="btn btn-warning">
                                        Update
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-success">
                                        Add
                                    </button>
                                </c:otherwise>
                            </c:choose>

                            <a href="search.jsp" class="btn btn-secondary">
                                Back
                            </a>

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

    </body>
</html>