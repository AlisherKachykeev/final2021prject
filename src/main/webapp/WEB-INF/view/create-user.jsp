<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Create New User</title>
</head>

<body class="my-login-page">
<jsp:include page="templates/header.jsp"/>
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-md-center h-100">
            <div class="card-wrapper">
                <div class="card fat">
                    <div class="card-body">
                        <h4 class="card-title">Create New User Form</h4>
                        <c:if test="${not empty param.error}">
                            <label id="error" class="alert alert-danger">${param.error}</label>
                        </c:if>
                        <form action="/register" method="POST">

                            <div class="form-group">
                                <label for="firstName">First Name</label>
                                <input id="firstName" type="text" class="form-control" name="firstName" required
                                       autofocus>
                            </div>

                            <div class="form-group">
                                <label for="lastName">Last   Name</label>
                                <input id="lastName" type="text" class="form-control" name="lastName" required>
                            </div>

                            <div class="form-group">
                                <label for="email">E-Mail Address</label>
                                <input id="email" type="email" class="form-control" name="email" required>
                            </div>

                            <div class="form-group">
                                <label for="password">Password</label>
                                <input id="password" type="password" class="form-control" name="password" required
                                       data-eye>
                            </div>
                            <div class="form-group">
                                <select id="criteriaId" name="roleName" class="custom-select form-control" required>
                                    <option value="ADMIN">Admin</option>
                                    <option value="USER">User</option>
                                </select>
                            </div>

                            <div class="form-group no-margin">
                                <button type="submit" class="btn btn-primary btn-block">
                                    Create User
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
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