<%--
  Created by IntelliJ IDEA.
  User: Pro
  Date: 5/23/17
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Create an Account for Howl Hugs Pet Sitter App</title>


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
            <a class="navbar-brand" href="/"><img src=<c:url value="/resources/images/logo.png"/> alt="logo"></a>
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
                <h2>Howl Hugs Member Registration</h2>
                <p>As a registered member, you may build a network of memeber-friends <br>
                    to schedule Pet Sittings with. You can register as a Pet Parent, or a Sitter, or Both.</p>
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
<div class="form-group center_div">
        <form name="userInfo" method="GET" action="/finishAccount" onsubmit="return validateForm();">
            <h2>Fill out form completely to join the <br>Howl Hugs Pet Sitter Web App</h2>
            <table>
                <div class="col-xs-6">
                    <tr>
                        <td>Email: <input type="text" name="email" required class="form-control"></td>
                    </tr>
                    <tr>
                        <td>First Name: <input type="text" name="firstName" required class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Last Name: <input type="text" name="lastName" required class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Address: <input type="text" name="address" required class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Apt: <input type="text" name="apt" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>City: <input type="text" name="city" required class="form-control"></td>
                    </tr>
                    <tr>
                        <td>State: <input type="text" name="state" required class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Zip: <input type="text" name="zip" required class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Password: <input type="password" name="password" required class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Repeat Password: <input type="password" name="repeatPassword" required class="form-control"></td>
                    </tr><br><br>
                    <tr>
                        <td>Are you a Parent: <input type="radio" name="parent" value="1" checked>Yes    <input type="radio" name="parent" value="0">No</td>
                    </tr><br><br>
                    <tr>
                        <td>Are you a Sitter: <input type="radio" name="sitter" value="1" checked>Yes     <input type="radio" name="sitter" value="0">No</td>
                    </tr><br><br>
                    <tr>
                        <td>
                            <input type="hidden" name="status" id="status" value="${googleID}"/>

                            <input id="authorize-button" type="submit" value="Submit" class="form-control" />

                            <%--<form action="/dashboard" method="post">--%>
                                <%--<input type="hidden" name="status" id="status" value="gapi.auth2.getAuthInstance().currentUser.get().getId()"/>--%>
                                <%--<input type="submit" value = "Dashboard">--%>
                            <%--</form>--%>

                        </td>
                    </tr>
                </div>
            </table>
        </form>
</div>

<%--<script>--%>
    <%--function validateForm() {--%>
        <%--var userEmail = document.forms["userInfo"]["email"].value;--%>

        <%--var password = document.forms["userInfo"]["password"].value;--%>
        <%--var repeatPassword = document.forms["userInfo"]["repeatPassword"].value;--%>
        <%--if (email === "" || firstName === "" || lastName === "" || address === "" || city === "" || state === "" || zip === "" || passWord === "" || repeatPassword === "" || parent === "" || sitter === "" ) {--%>
            <%--alert("Please complete all fields to join the Coffee Club!");--%>
            <%--return false;--%>
        <%--}--%>
        <%--if (!userEmail.includes("@")) {--%>
            <%--alert("Please enter a valid email!");--%>
            <%--return false;--%>
        <%--}--%>
        <%--if (!userEmail.includes(".")) {--%>
            <%--alert("Please enter a valid email!");--%>
            <%--return false;--%>
        <%--}--%>
        <%--if (password !== repeatPassword) {--%>
            <%--alert("The passwords entered do not match!");--%>
            <%--return false;--%>
        <%--}--%>
        <%--return true;--%>
    <%--}--%>
<%--</script>--%>


<!-- Google Login script -->
<script type="text/javascript">
    // Client ID and API key from the Developer Console
    var CLIENT_ID = '802805404885-h8ffds7tamadqlv1pqduuf4s7emn5c24.apps.googleusercontent.com';

    // Array of API discovery doc URLs for APIs used by the quickstart
    var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/calendar/v3/rest"];

    // Authorization scopes required by the API; multiple scopes can be
    // included, separated by spaces.
    var SCOPES = "https://www.googleapis.com/auth/calendar.readonly";

    var authorizeButton = document.getElementById('authorize-button');
    var signoutButton = document.getElementById('signout-button');

    /**
     *  On load, called to load the auth2 library and API client library.
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
            authorizeButton.onclick = handleAuthClick;
            signoutButton.onclick = handleSignoutClick;
        });
    }

    /**
     *  Called when the sned in status changes, to update the UI
     *  appropriately. After a sign-in, the API is called.
     */
    function updateSigninStatus(isSignedIn) {
        if (isSignedIn) {
            authorizeButton.style.display = 'none';
            signoutButton.style.display = 'block';
            console.log(gapi.auth2.getAuthInstance().currentUser.get().getId());
        } else {
            authorizeButton.style.display = 'block';
            signoutButton.style.display = 'none';
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

    /**
     * Append a pre element to the body containing the given message
     * as its text node. Used to display the results of the API call.
     *
     * @param {string} message Text to be placed in pre element.
     */
    function appendPre(message) {
        var pre = document.getElementById('content');
        var textContent = document.createTextNode(message + '\n');
        pre.appendChild(textContent);
    }

    /**
     * Print the summary and start datetime/date of the next ten events in
     * the authorized user's calendar. If no events are found an
     * appropriate message is printed.
     */
    function listUpcomingEvents() {
        gapi.client.calendar.events.list({
            'calendarId': 'primary',
            'timeMin': (new Date()).toISOString(),
            'showDeleted': false,
            'singleEvents': true,
            'maxResults': 10,
            'orderBy': 'startTime'
        }).then(function(response) {
            var events = response.result.items;
            appendPre('Upcoming events:');

            if (events.length > 0) {
                for (i = 0; i < events.length; i++) {
                    var event = events[i];
                    var when = event.start.dateTime;
                    if (!when) {
                        when = event.start.date;
                    }
                    appendPre(event.summary + ' (' + when + ')')
                }
            } else {
                appendPre('No upcoming events found.');
            }
        });
    }

</script>

<script async defer src="https://apis.google.com/js/api.js"
        onload="this.onload=function(){};handleClientLoad()"
        onreadystatechange="if (this.readyState === 'complete') this.onload()">
</script>

</body>
</html>
