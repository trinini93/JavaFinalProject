<%--
  Created by IntelliJ IDEA.
  User: Pro
  Date: 5/24/17
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>New Howl Hug Members</title>


    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" >
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet" >
    <link href="<c:url value="/resources/css/prettyPhoto.css" />"rel="stylesheet" >
    <link href="<c:url value="/resources/css/animate.css" />"rel="stylesheet" >
    <link href="<c:url value="/resources/css/main.css" />"rel="stylesheet" >

    <!--[if lt IE 9]>
    <script src="/resources/js/html5shiv.js"></script>
    <script src="/resources/js/respond.min.js"></script>

    <![endif]-->

    <link href="<c:url value="/resources/images/ico/favicon.ico"/>" rel="shortcut icon" >
    <link sizes="144x144" href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png"/>" rel="apple-touch-icon-precomposed" >
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png"/>" >
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png"/>" >
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png"/>" >
</head>
<body>
<!-- top main nav -->
<header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><img src=<c:url value="/resources/images/fursitters1.png"/> alt="logo"></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="hover"><a href="/">Home</a></li>
                <!-- <li><a href="about-us.html">About Howl Hugs</a></li> -->
                <li class="hover"><a href="/dashboard">Dashboard</a></li>
            </ul>
        </div>
    </div>
</header><!--/header-->
<!-- BEGIN REGISTRATION FORM -->
<section id="title" class="emerald">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2>Thank you for joining Fur Sitters,<br> ${addUser}!</h2><br>

                <p>If you are a Pet Parent needing to schedule a sitter, fill out your Pet Profile <a href="/petProfile">here.</a></p><br>
                <br>
                <p>If you would like to register as a Fur Sitter, start <a href="sitterProfile">here.</a></p>
                <br>
            </div>
            <!-- REDUNDANT NAVIGATION -->
            <%--<div class="col-sm-6">--%>
            <%--<ul class="breadcrumb pull-right">--%>
            <%--<li><a href="index.html">Home</a></li>--%>
            <%--<li><a href="#">Pages</a></li>--%>
            <%--<li class="active">Registration</li>--%>
            <%--</ul>--%>
            <%--</div>--%>
        </div>
    </div>
</section><!--/#title-->
<section id="bottom" class="wet-asphalt">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <h4>About Us</h4>
                <p>This web app meets Final Project requirements for the Grand Circus Tech Java Intensive Bootcamp held <br />
                    April 10 through June 2, 2017.<br />
                    Requirements include:<br />
                    Building a Web App in Java Development Language.<br />
                    Use Spring MVC Framework with Hibernate Extension.<br />
                    Use MySQL Database and JDBC Connectivity.<br />
                    Incorporate an API.<br />
                    Complete the working demo in two weeks.<br />
                </p>
            </div><!--/.col-md-3-->

            <div class="col-md-3 col-sm-6">
                <h4>Company</h4>
                <div>
                    <ul class="arrow">
                        <li><a href="#">Company Overview</a></li>
                        <li><a href="#">Meet The Team</a></li>
                        <li><a href="#">Our Awesome Partners</a></li>
                        <li><a href="#">Our Services</a></li>
                        <li><a href="#">Frequently Asked Questions</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Use</a></li>
                        <li><a href="#">Copyright</a></li>
                    </ul>
                </div>
            </div><!--/.col-md-3-->

            <div class="col-md-3 col-sm-6">
                <h4>Latest News</h4>
                <div>
                    <div class="media">
                        <div class="pull-left">
                            <img src="resources/images/blog/thumb1.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <span class="media-heading">
                                <a href="http://www.javaworld.com/article/3198370/application-development/amazon-web-services-sets-a-lure-for-java-programmers.html" target="_blank">
                                    Amazon Web Services sets a lure for Java programmers. <br>
                                    James Gosling, the father of Java, is joining AWS</a></span>
                            <small class="muted">Posted 23 May 2017</small>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img src="resources/images/blog/thumb2.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <span class="media-heading"><a href="http://www.javaworld.com/article/3197992/cloud-computing/how-google-s-cloud-is-ushering-in-a-new-era-of-sql-databases.html"
                                                           target="_blank">How Google’s cloud is ushering in a new era of SQL databases.<br>
                                Google Spanner is a NewSQL database</a></span>
                            <small class="muted">Posted 22 May 2017</small>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <img src="resources/images/blog/thumb3.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <span class="media-heading">
                                <a href="https://careerfoundry.com/en/blog/web-development/8-web-development-trends-2017/" target="_blank">
                                    8 Web Development Trends To Look Out For In 2017.<br></a></span>
                            <small class="muted">Posted 19 May 2017</small>
                        </div>
                    </div>
                </div>
            </div><!--/.col-md-3-->

            <div class="col-md-3 col-sm-6">
                <h4>Contact Developers:</h4>
                <address>
                    <strong>Trina Chowdhury</strong><br>
                    <a href="https://www.linkedin.com/in/trinachowdhury/">LinkedIn.com/in/trinachowdhury</a> <br>
                    <a href="mailto:trina.ch93@gmail.com">trina.ch93@gmail.com</a><br>
                </address>

                <address>
                    <strong>Lydia Latocki</strong><br>
                    <a href="https://www.linkedin.com/in/lydialatocki/">LinkedIn.com/in/lydialatocki</a> <br>
                    <a href="mailto:lydia@lydialatocki.com">lydia@lydialatocki.com</a><br>
                </address>

                <address>
                    <strong>Jeremy Villa</strong><br>
                    <a href="https://www.linkedin.com/in/jvilla1991/">LinkedIn.com/in/jvilla1991</a> <br>
                    <a href="mailto:villajeremy1991@gmail.com">villajeremy1991@gmail.com</a><br>
                </address>

            </div> <!--/.col-md-3-->
        </div>
    </div>
</section><!--/#bottom-->

</body>
</html>
