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
            <a class="navbar-brand" href="/"><img src=<c:url value="/resources/images/fursitters1.png"/> alt="logo"></a>
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

<div class="container">
<h2>Your Fur Sitter Dashboard</h2>
<h2>Welcome!</h2>

${googleID}

as

${something}
<br>
<p>Select an email from your Network of Sitters to request an appointment for sitting.</p><br>
<%--<c:forEach items="${sitterEmail}" var ="sEmail"> <br>--%>

    <%--<p>If you would like to add a Sitter to your network, please fill out the form below.</p>--%>


    <%--<a href="mailto:${sEmail.sitterEmail}?subject=Hello,%20Can%20you%20sit%3F&body=Hello,%0D%0DCan%20you%20sit%20for%20my%20pet%20on:">${sEmail.sitterEmail}</a><br>--%>
<%--</c:forEach>--%>

    ${sitterAdded.sitterName}
    ${sitterAdded.sitterEmail}

<br>
<br>

    <p>Click below to add a sitter to your Network.</p>
    <form action="addASitter" method="post">
        Sitter name: <input type="text" name="sName"><br>
        Sitter email: <input type="text" name="sEmail"><br>
        <input type="hidden" name="status" id="status"><br>
        <input type="submit" value="Submit">
    </form> <br>

<%--this form will add a sitter to parent network.--%>
<script>

    // Client ID and API key from the Developer Console
    // credentials to sign into google
    var CLIENT_ID = '802805404885-h8ffds7tamadqlv1pqduuf4s7emn5c24.apps.googleusercontent.com';

    // Array of API discovery doc URLs for APIs used by the quickstart
    var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/calendar/v3/rest"];

    // Authorization scopes required by the API; multiple scopes can be
    // included, separated by spaces.
    //at the end, it allows you to read cal only
    var SCOPES = "https://www.googleapis.com/auth/calendar.readonly";

    /**
     *  On load, called to load the auth2 library and API client library. (combines)
     */
    function handleClientLoad() {
        gapi.load('client:auth2', initClient);
    }

    /**
     *  Initializes the API client library and sets up sign-in state
     *  listeners.
     */
    function initClient() {
        gapi.client.init({
            discoveryDocs: DISCOVERY_DOCS,
            clientId: CLIENT_ID,
            scope: SCOPES
        }).then(function () {
            // Listen for signin state changes.
            gapi.auth2.getAuthInstance().isSignedIn.listen(updateSigninStatus);

            // Handle the initial sign-in state.
            updateSigninStatus(gapi.auth2.getAuthInstance().isSignedIn.get());
//            authorizeButton.onclick = handleAuthClick;
//            signoutButton.onclick = handleSignoutClick;
        });
    }

    /**
     *  Called when the sned in status changes, to update the UI
     *  appropriately. After a sign-in, the API is called.
     */
    function updateSigninStatus(isSignedIn) {
        if (isSignedIn) {
//            authorizeButton.style.display = 'none';
//            signoutButton.style.display = 'block';
            console.log(gapi.auth2.getAuthInstance().currentUser.get().getId());
            document.getElementById('status').value = gapi.auth2.getAuthInstance().currentUser.get().getId();
        } else {
//            authorizeButton.style.display = 'block';
//            signoutButton.style.display = 'none';
        }
    }

    /**
     *  Sign in the user upon button click.
     */
    function handleAuthClick(event) {
        gapi.auth2.getAuthInstance().signIn();
    }

    /**
     *  Sign out the user upon button click.
     */
    function handleSignoutClick(event) {
        gapi.auth2.getAuthInstance().signOut();
    }


</script>

<iframe src="
https://calendar.google.com/calendar/embed?src=ci0im9019ojt8m3dmkmlbc68qo@group.calendar.google.com" width="800" height="600" frameborder="0" scrolling="no"></iframe>

</div>

<script async defer src="https://apis.google.com/js/api.js"
        onload="this.onload=function(){};handleClientLoad()"
        onreadystatechange="if (this.readyState === 'complete') this.onload()">
</script>

</body>
</html>
