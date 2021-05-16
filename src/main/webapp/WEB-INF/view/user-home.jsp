<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Users</title>
</head>

<body class="my-login-page">
<jsp:include page="templates/userHeader.jsp"/>
<section class="">
    <div class="container ">
        <div class="row justify-content-md-center">
            <div class="card">
                <div class="card-header">
                    <h4 class="text-center">Only Admins can Perform operations</h4>
                </div>
                <div class="card card-body table-responsive">
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