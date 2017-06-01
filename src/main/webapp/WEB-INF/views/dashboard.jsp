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
                <li class="active"><a href="/dashboard">Dashboard</a></li>
                <li class="hover"><a href="/petProfile">Pet Profile</a></li>
                <li class="hover"><a href="/sitterProfile">Sitter Profile</a></li>
            </ul>
        </div>
    </div>
</header><!--/header-->

<div class="container">

 <br>

<h2>Your Fur Sitter Dashboard</h2>

${googleID}
    ${firstName}
    ${lastName}
    ${email}
    ${address}
${city}
${state}

    <br>
    <br>
    <br>
    <button type="button" class="btn btn-default"><a id="showSitters" href="addASitter">Show your Sitter Network</a></button>
    <br>
<p>Then, select an email from your Network of Sitters to request an appointment for sitting.</p> <br>
<c:forEach items="${sittersList}" var ="sEmail">
    <a href="mailto:${sEmail.sitterEmail}?subject=Hello,%20Can%20you%20sit%3F&body=Hello,%0D%0DCan%20you%20sit%20for%20my%20pet%20on:">${sEmail.sitterName}:  ${sEmail.sitterEmail}</a><br>
</c:forEach>
<br>
<br>
<br>
    <%--this form will add a sitter to parent network.--%>
    <p>Click below to add a sitter to your Network.</p>
    <form action="addASitter" method="post">
        Sitter name: <input type="text" name="sName"><br>
        Sitter email(must be a Gmail account): <input type="text" name="sEmail"><br>
        <input type="hidden" name="status" id="status"><br>
        <input type="submit" value="Submit">
    </form> <br>

    <p>Successfuly Added:</p>
    ${sitterAdded.sitterName}: ${sitterAdded.sitterEmail}
    <br>
    <br>
</div>
<!-- fullbleed image -->
<div class="item" style="background-image: url( '/resources/images/slider/bg2.jpg' )">
    <div class="container-bkgndImag">
        <div class="row">
            <div class="col-sm-12">
                <%--<div class="carousel-content center centered">--%>
                    <%--<div style="full-width-background background-color:wet-asphalt">--%>
                    <%--<h2 style="color:white">Because your BFF Loves your Pet like a Brother,</h2>--%>
                    <%--<p style="color:white">Fur Sitters helps you schedule a Pet Sitting visit that makes everyone happy.</p>--%>
                    <%--<br>--%>
                    <%--</div>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</div><!--/.item-->

<!-- FOOTER -->
<section id="bottom" class="wet-asphalt">
    <div class="container">
        <div>
            <div class="col-md-3 col-sm-6">
                <h4>About Us</h4>
                <p>This web app meets Final Project requirements for the Grand Circus Tech Java Intensive Bootcamp held
                    <br/>
                    April 10 through June 2, 2017.<br/>
                    Requirements include:<br/>
                    -Building a Web App in Java Development Language.<br/>
                    -Using Spring MVC Framework with Hibernate Extension.<br/>
                    -Using MySQL Database and JDBC Connectivity.<br/>
                    -Incorporating an API.<br/>
                    -Completing the working demo in two weeks.<br/>
                </p>
            </div><!--/.col-md-3-->

            <%--<pre id="content"></pre>--%>

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
                                <a href="http://www.javaworld.com/article/3198370/application-development/amazon-web-services-sets-a-lure-for-java-programmers.html"
                                   target="_blank">
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
                            <span class="media-heading"><a
                                    href="http://www.javaworld.com/article/3197992/cloud-computing/how-google-s-cloud-is-ushering-in-a-new-era-of-sql-databases.html"
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
                                <a href="https://careerfoundry.com/en/blog/web-development/8-web-development-trends-2017/"
                                   target="_blank">
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


<script>
//Google Login script from API instructions
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
            document.getElementById("showSitters").href="showSitterNetwork?status=" + gapi.auth2.getAuthInstance().currentUser.get().getId();
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
<%--<div><!-- Google Pet Sitter Calendar -->--%>
<%--<iframe src="--%>
<%--https://calendar.google.com/calendar/embed?src=ci0im9019ojt8m3dmkmlbc68qo@group.calendar.google.com" width="800" height="600" frameborder="0" scrolling="no"></iframe>--%>
<%--</div>--%>

<script async defer src="https://apis.google.com/js/api.js"
        onload="this.onload=function(){};handleClientLoad()"
        onreadystatechange="if (this.readyState === 'complete') this.onload()">
</script>

</body>
</html>
