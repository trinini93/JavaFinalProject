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

<h2>Thanks for registering your pet!</h2>

<h2>Where do you want to go now?</h2> <br>

<%--link--%>
<a href="/">Home</a>

Dashboard <%--link--%>


            </div>
        </div>
</section><!--/#title-->
</body>
</html>
