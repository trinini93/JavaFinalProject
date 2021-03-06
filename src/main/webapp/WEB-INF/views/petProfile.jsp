<%--
  Created by IntelliJ IDEA.
  User: trina2
  Date: 5/23/17
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Please fill out your pet information here!</title>


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
                <!-- <li><a href="about-us.html">About Howl Hugs</a></li> -->
                <%--<li class="hover"><a href="/dashboard">Dashboard</a></li>--%>
                <li class="hover"><a href="/sitterProfile">Sitter Profile</a></li>
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

<%--ACTION is empty until we figure out which page this is going to--%>
<div class="form-group center_div">
    <div class="col-sm-6">
    <form action="/dogBreedList">
        <h3 class="form-heading">Please fill out the form below to register your pet with Fur Sitters.</h3>

<%--Step 1: Pet type dog/cat (radio button)--%>
    I have a:<br>

    <input type="radio" name="pettype" value="dog" checked> Dog


    <input type="radio" name="pettype" value="cat"> Cat

        <br>
<input type="submit"> <br>
        Please click <strong>'Submit'</strong> prior to continuing with this questionnaire.<br><br>
</form>
<%--Step 2: Pet's name (text form)--%>
    <form action = "/petProfileSuccess" method ="post" onsubmit="return validateCheckbox()" >
    My pet's name is:<br>
    <input type="text" name="petName" required><br><br>

<%--Step 3: Pet's breed (dropdown frotm JSON data/PetFinder API)--%>
    My pet is a:<br>

        <select name="testBreeds" required>
                <c:forEach varStatus="b" items ="${breeds}">
                    <!--data we want to pass in-->
                    <option value = "${b.current}">${b.current}</option>
                </c:forEach>
        </select> <br><br>

<%--Step 4: Pet's med's y/n (radio button) IF/ELSE STATEMENT NEEDED--%>
    My pet:<br>

    <input type="radio" name="medType" value="yes" checked required> WILL need medication<br>
    <input type="radio" name="medType" value="no"> Will NOT need medication<br><br>

<%--Step 5: In home sits (can sitter come to parent's house? y/n (radio button)--%>
    I prefer to:<br>
    <input type="radio" name="petWatch" value="have my pet watched at my place" required>have my pet watched at my place<br>
    <input type="radio" name="petWatch" value="have my pet watched at the sitter's place">have my pet watched at the sitter's place<br><br>

<%--Step 6: Pet needs feed/walk/play wild/visit/petting? (checkbox)--%>
    My pet will require:<br>
    <input type="checkbox" name="activity" id= "Feeding" value="Feeding" checked>Feeding<br>
    <input type="checkbox" name="activity" id= "Walking" value="Walking">Walking<br>
    <input type="checkbox" name="activity" id= "Cuddling" value="Cuddling">Cuddling!<br><br>

<input type ="submit">
</form>
</div>
</div>

<script>
    function validateCheckbox() {
        var feed = document.getElementById("Feeding").checked;
        var walk = document.getElementById("Walking").checked;
        var cuddle = document.getElementById("Cuddling").checked;

         if (!feed && !walk && !cuddle) {
             alert("At least one value must be checked!")
             return false;
         }
    }

</script>


</body>
</html>
