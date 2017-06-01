<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: trina2
  Date: 5/8/17
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>

<html lang="en">
<head>
    <%--search engines look for meta info to categorize site. it also helps ipad/iphones understand how they should be viewed--%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Welcome to Fur Sitters!</title>

<%--These links are all CSS for styling of page, done via bootstrap and font-awesome --%>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/prettyPhoto.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="/resources/js/html5shiv.js"></script>
    <script src="/resources/js/respond.min.js"></script>

    <![endif]-->

    <link href="<c:url value="/resources/images/ico/favicon.ico"/>" rel="shortcut icon">
    <link sizes="144x144" href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png"/>" rel="apple-touch-icon-precomposed">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png"/>">
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png"/>">
</head>
<body>

<%--dictactes main nav at top of page--%>
<header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><img src=
                                                  <c:url value="/resources/images/fursitters1.png"/> alt="logo"></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="/">Home</a></li>

                <%--<form action="/getStatus" method="post" id="goToDashboard">--%>
                <%--<li class="hover"><input type="hidden" name="status" id="status"--%>
                    <%--value="gapi.auth2.getAuthInstance().currentUser.get().getId()"/>--%>
                    <%----%>
                    <%--<input type="submit" value = "Dashboard"></li>--%>
             <%--<input type="hidden" name="status" id="status"--%>
                       <%--value="gapi.auth2.getAuthInstance().currentUser.get().getId()"/>--%>
                </form>
            </ul>
        </div>
    </div>
</header><!--/header-->

<%--This has to do with big picture--%>
<!-- Begin background slider image with headline and link to Registration and Login -->
<section id="main-slider" class="no-margin">
    <div class="carousel slide wet-asphalt">

        <div class="carousel-inner">
            <div class="item active" style="background-image: url('/resources/images/slider/bg1a.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <h1 class="carousel-content centered"></h1>
                                <h2 class="animation animated-item-1" style="color:#3c5899">Welcome to Fur Sitters!<br>
                                    Connecting Local Companions<br>
                                    for your pets while you are away.</h2>
                                <h3 class="animation animated-item-2" style="color:#3c5899"><br>Click <strong><a href="#createA" style="color:#3c5899">Register</a></strong> to sign up with Fur Sitters!</h3>
                                <br>

                            <!-- this is the google login/authorization button to!-->
                                <h3 style="color:#3c5899">If you have a Fur Sitters account, <br>
                                    click <strong>'Authorize'</strong> to sign in with<br>
                                    your Google Account:</h3>
                                <div class="col-xs-2">
                                    <%--this ID button talks to script of bottom of page from google/google API--%>
                                    <button id="authorize-button" style="display: none;" class="form-control">
                                        Authorize</button>
                                    <button id="signout-button" style="display: none;" class="form-control" id="status2" action="getStatus">Sign Out</button>
                                    <%--<pre id="content"></pre>--%>

                                    <button id="authorize-button" style="display: none;" class="form-control" >Authorize</button>
                                    <button id="signout-button" style="display: none;" class="form-control">Sign Out</button>

                                </div>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br><a name="createA"></a><!-- from REGISTRATION word above, this link aligns page so user can see registration fields -->
                                <!-- END GOOGLE LOGIN CODE-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/.item-->
</section>
 <section id="services" class="clouds">

    <div class="container">
        <div class="form-group center_div">
            ${googleID} <br>
            <form name="userInfo" method="GET" action="/finishAccount" onsubmit="return validateForm();">
                <h2 style="color:#00">Fill out form completely to join the <br>Fur Sitters Pet Sitter Web App</h2>
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
                                <input type="hidden" name="status" id="status2" value="gapi.auth2.getAuthInstance().currentUser.get().getId()"/>

                                <input type="submit" value="Submit" class="form-control" />
                                <%--<input id="authorize-button" type="submit" value="Submit" class="form-control" />--%>

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
    </div>
</section>

<!-- Project Elevator Pitch section -->
<section id="testimonial" class="alizarin">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="center">
                    <h2>Who - What - Why</h2>
                    <p>The Fur Sitters web app fills the need to schedule <br>companionship for family pets
                        while the owners are away. </p>
                </div>
                <div class="gap"></div>
                <div class="row">
                    <div class="col-md-6">
                        <blockquote>
                            <p>Besides being a ‘feel-good’ app, this is a great project to showcase all the skills we
                            now have in Java, MySQL, JDBC, SpringMVC, Hibernate, Javascript and API integration. The
                            Fur Sitters Web App fills the need to schedule companionship for family pets
                            while the owners are away – a positive alternative to kennel boarding, or leaving your
                            "independent" cat alone for the weekend. </p>
                            <small>Lydia Latocki, <cite title="Java Developer">Java Developer</cite></small>
                        </blockquote>
                        <blockquote>
                            <p>Users set up a Social Network of Sitters and Pet Parents to schedule a Pet Sitting. To
                            begin, Users create accounts with profiles held in MySQL on Amazon Web Services that are
                            validated through Spring MVC validation. Pets are included in Parent profiles. Type of
                            pet are defined with the help of a drop down menu using the PetFinder Breed API that
                            conveniently lists all dog and cat breeds. </p>
                            <small>Trina Chowdhury, <cite title="Java Developer">Java Developer</cite></small>
                        </blockquote>
                    </div>
                    <div class="col-md-6">
                        <blockquote>
                            <p>Parents invite friends and family to join the app and link to their shared Fur Sitters network.
                            A Sitter's profile includes type of animal sitters are willing to companion. Users can be
                            both Sitters and Parents. Users can
                            view their own Sitter Network of friends to schedule Pet Sitting.</p>
                            <small>Jeremy Villa, <cite title="Java Developer">Java Developer</cite></small>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!--/#testimonial-->

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

<!-- END BOOTSTRAP HTML -->
<script type="text/javascript">

    // Client ID and API key from the Developer Console
    // credentials to sign into google
    var CLIENT_ID = '802805404885-h8ffds7tamadqlv1pqduuf4s7emn5c24.apps.googleusercontent.com';

    // Array of API discovery doc URLs for APIs used by the quickstart
    var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/calendar/v3/rest"];

    // Authorization scopes required by the API; multiple scopes can be
    // included, separated by spaces.
    //at the end, it allows you to read cal only
    var SCOPES = "https://www.googleapis.com/auth/calendar.readonly";

    var authorizeButton = document.getElementById('authorize-button');
    var signoutButton = document.getElementById('signout-button');

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
            //document.getElementById('status').value = gapi.auth2.getAuthInstance().currentUser.get().getId();
            document.getElementById('status2').value = gapi.auth2.getAuthInstance().currentUser.get().getId();
//            document.getElementById("goToDashboard").submit();
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

//    DELETE THIS NO LONGER NEEDED
    function listUpcomingEvents() {
        gapi.client.calendar.events.list({
            'calendarId': 'primary',
            'timeMin': (new Date()).toISOString(),
            'showDeleted': false,
            'singleEvents': true,
            'maxResults': 10,
            'orderBy': 'startTime'
        }).then(function (response) {
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

<%--this script is calling out google api--%>

<script async defer src="https://apis.google.com/js/api.js"
        onload="this.onload=function(){};handleClientLoad()"
        onreadystatechange="if (this.readyState === 'complete') this.onload()">
</script>

</body>
</html>