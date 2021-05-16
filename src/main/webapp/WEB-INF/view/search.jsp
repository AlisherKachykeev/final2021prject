<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Search Page</title>
</head>
<body class="my-login-page">
<jsp:include page="templates/header.jsp"/>
<section>
    <div class="container">
        <div class="row justify-content-md-center">
            <form action="/searchSubmit" method="POST">
                <h4 class="text-center">Advanced Search Page</h4>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr>
                            <th>Search Keyword</th>
                            <th>Select Search By</th>
                            <th>Action</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" class="form-control" name="searchKeyword"
                                       placeholder="type keyword here...">
                            </td>
                            <td>
                                <select id="criteriaId" name="criteria" class="form-control">
                                    <option value="firstName">First Name</option>
                                    <option value="lastName">Last Name</option>
                                    <option value="email">Email</option>
                                </select>
                            </td>
                            <td>
                                <input class="btn btn-outline-primary my-2 my-sm-0" name="searchButton"
                                       value="Search Now!"
                                       type="submit">
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</section>
<c:if test="${not empty result}">
    <section class="">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="card">
                    <div class="card-header">
                        <h4 class="float-left">Matched Users</h4>
                    </div>
                    <div class="card card-body table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>User Id</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th colspan="2">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="user" items="${result}">
                                <tr>
                                    <td>
                                        <label>${user.getId()}</label>
                                    </td>
                                    <td>
                                        <label id="fname_${user.getId()}">
                                                ${user.getFirstName()}
                                        </label>
                                        <input required type="text" name="firstName" class="form-control"
                                               value="${user.getFirstName()}"
                                               style="display: none;"
                                               id="text_fname_${user.getId()}">
                                    </td>
                                    <td>
                                        <label id="lname_${user.getId()}">
                                                ${user.getLastName()}
                                        </label>
                                        <input required class="form-control" type="text" name="firstName"
                                               value="${user.getLastName()}"
                                               style="display: none;"
                                               id="text_lname_${user.getId()}">
                                    </td>
                                    <td>
                                        <label>
                                                ${user.getEmail()}
                                        </label>
                                    </td>
                                    <td>
                                        <a href="/update" id="update_${user.getId()}" class="updateData"
                                           onclick="event.preventDefault();"><i class="fa fa-edit"></i></a>
                                        <a href="/save" id="save_${user.getId()}" class="saveData"
                                           onclick="event.preventDefault();saveData(${user.getId()});"
                                           style="display: none;"><i class="fa fa-save"></i></a>
                                    </td>
                                    <td><a href="/delete/${user.getId()}" class="deleteData"><i class="fa fa-trash"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:if>
<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <h5>About</h5>
                <p>AdminConsole - is the web-application which can help you to manage users, create, delete and change. It is just first demo version.</p>
            </div>

            <div class="col-xs-6 col-md-3">
                <h5>Support</h5>
                <ul class="footer-links">
                    <li><a href=#>alisher.kachykeev@iaau.edu.kg</a></li>
                    <li><a href=#>zhanbolot.bakytbekuulu</a></li>
                    <li><a href=#>+996773844239</a></li>
                    <li><a href=#>+996708470542</a></li>
                </ul>
            </div>

            <div class="col-xs-6 col-md-3">
                <h5>Contact us</h5>
                <ul class="footer-links">
                    <li>
                        <a href="https://www.facebook.com/profile.php?id=100014595396350">FaceBook</a>
                    </li>
                    <li>
                        <a href="https://github.com/AlisherKachykeev">GitHub</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</body>
</html>