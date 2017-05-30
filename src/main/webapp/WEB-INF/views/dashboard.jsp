<%--
  Created by IntelliJ IDEA.
  User: Pro
  Date: 5/30/17
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Dashboard</title>


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
            <a class="navbar-brand" href="/"><img src=<c:url value="/resources/images/logo.png"/> alt="logo"></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="hover"><a href="/">Home</a></li>
                <!-- <li><a href="about-us.html">About Howl Hugs</a></li> -->
                <li class="active"><a href="/dashboard">Dashboard</a></li>
            </ul>
        </div>
    </div>
</header><!--/header-->
<h2>Your Howl Hug Dashboard</h2>
<br>
<p>Select an email from your Network of Sitters to request an appointment for sitting.</p><br>
<c:forEach items="${sitterEmail}" var ="sEmail"> <br>

    <p>If you would like to add a Sitter to your network, please fill out the form below.</p>


    <a href="mailto:${sEmail.sitterEmail}?subject=Hello,%20Can%20you%20sit%3F&body=Hello,%0D%0DCan%20you%20sit%20for%20my%20pet%20on:">${sEmail.sitterEmail}</a><br>
</c:forEach>

<br>
<br>
<%--this form will add a sitter to parent network.--%>

<p>Click below to add a sitter to your Network.</p>
<form action="addASitter" method="post">
    Sitter name: <input type="text" name="sName"><br>
    Sitter email: <input type="text" name="sEmail"><br>
    <input type="submit" value="Submit">
</form> <br>

<iframe src="
https://calendar.google.com/calendar/embed?src=ci0im9019ojt8m3dmkmlbc68qo@group.calendar.google.com" width="800" height="600" frameborder="0" scrolling="no"></iframe>

</body>
</html>
