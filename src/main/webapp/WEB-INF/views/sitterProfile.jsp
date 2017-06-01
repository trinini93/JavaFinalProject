<%--
  Created by IntelliJ IDEA.
  User: trina2
  Date: 5/24/17
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Complete a Sitter Profile for your Howl Hugs Member Account</title>


    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" >
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet" >
    <link href="<c:url value="/resources/css/prettyPhoto.css" />"rel="stylesheet" >
    <link href="<c:url value="/resources/css/animate.css" />"rel="stylesheet" >
    <link href="<c:url value="/resources/css/main.css" />"rel="stylesheet" >
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

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
                <%--<li class="hover"><a href="/dashboard">Dashboard</a></li>--%>
                <li class="hover"><a href="/petProfile">Pet Profile</a></li>
            </ul>
        </div>
    </div>
</header><!--/header-->
<!-- BEGIN REGISTRATION FORM -->
<section id="title" class="emerald">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2>Welcome to Fur Sitters!</h2>

            </div>

        </div>
    </div>
</section><!--/#title-->

<div class="form-group center_div">
    <form action="/sitterProfileSuccess" method="post" onsubmit="return validateCheckbox()">
        <h3 class="form-heading">Please fill out the form below to register yourself as a Fur Sitter.</h3>

    <%--Step 1: Type of animal willing to sit(checkbox)--%>
    1) I am willing to watch:<br>
    <input type="checkbox" name="petSize" id="size1" value="Small dogs">Small dogs<br>
    <input type="checkbox" name="petSize" id="size2" value="Medium-sized dogs">Medium-sized dogs<br>
    <input type="checkbox" name="petSize" id="size3"  value="Large dogs">Large dogs<br>
    <input type="checkbox" name="petSize" id="size4" value="Cats">Cats<br><br>

    <%--Step 2: In/home sits? (will sitter take pet into their home?) (checkbox)--%>
    2) I am willing to watch your pet<br>
    at my home only:<br><input type="radio" name="myHome" value="1" checked>Yes<input type="radio" name="myHome" value="0">No</td><br>
    at your home only:<br><input type="radio" name="yourHome" value="1" checked>Yes<input type="radio" name="yourHome" value="0">No</td><br><br>

    <%--Step 3: animal temperament willing to watch (checkbox)//CHANGE TO RADIO BUTTON--%>
    3) I can watch:<br>
    <input type="checkbox" name="temper" id="temp1" value="easy going pets">easy going pets<br>
    <input type="checkbox" name="temper" id="temp2" value="high-maintenance pets">high-maintenance pets<br>
    <input type="checkbox" name="temper" id="temp3" value="Both">Both<br><br>

    <%--Step 4: Willing to feed/walk/play wild/meds etc (checkbox)--%>
    4) I am willing do the following:<br>
    <input type="checkbox" name="activities" id="act1" value="Feeding">Feeding<br>
    <input type="checkbox" name="activities" id="act2" value="Walking">Walking<br>
    <input type="checkbox" name="activities" id="act3" value="Cuddling!">Cuddling!<br><br>

    <%--Step 5: Distance willing to travel (checkbox)--%>
    5) I am willing to travel:<br>
    <input type="checkbox" name="trav" id="trav1" value="0-5 miles">0-5 miles<br>
    <input type="checkbox" name="trav" id="trav2" value="6-10 miles">6-10 miles<br>
    <input type="checkbox" name="trav" id="trav3" value="I am not willing to travel.">I am not willing to travel.<br><br>

    <%--Step 6: Experience with sits 0-2, 3-5, 5-10, 10+ (radio)--%>
    6) I have watched pets ____ times:<br>
    <input type="radio" name="experience" value="0-5">0-5<br>
    <input type="radio" name="experience" value="6-10">6-10<br>
    <input type="radio" name="experience" value="10+">10+<br><br>


    <input type="submit">
</form>
</div>

<script>
    function validateCheckbox() {
        var size1 = document.getElementById("size1").checked;
        var size2 = document.getElementById("size2").checked;
        var size3 = document.getElementById("size3").checked;
        var size4 = document.getElementById("size4").checked;

        if (!size1 && !size2 && !size3 && !size4) {
            alert("At least one value for pet size must be checked!")
            return false;
        }
        var temp1 = document.getElementById("temp1").checked;
        var temp2 = document.getElementById("temp2").checked;
        var temp3 = document.getElementById("temp3").checked;

        if (!temp1 && !temp2 && !temp3) {
            alert("At least one value for pet temper must be checked!")
            return false;
        }

        var act1 = document.getElementById("act1").checked;
        var act2 = document.getElementById("act2").checked;
        var act3 = document.getElementById("act3").checked;

        if (!act1 && !act2 && !act3) {
            alert("At least one value for pet activities must be checked!")
            return false;
        }
        var trav1 = document.getElementById("trav1").checked;
        var trav2 = document.getElementById("trav2").checked;
        var trav3 = document.getElementById("trav3").checked;

        if (!trav1 && !trav2 && !trav3) {
            alert("At least one value for travel preferences must be checked!")
            return false;
        }



    }

</script>
</body>
</html>
