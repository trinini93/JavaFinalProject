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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Welcome to Howl Hugs Pet Sitter App</title>


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

<%--<h1>${hello}</h1>--%>
<%--Welcome to PetSitters! Click below to register.--%>
    <%--<br><a href="createAccount">Register</a><br>--%>
<%--If you already have an account, login in below.--%>
<%--<body>--%>

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
            <a class="navbar-brand" href="index.html"><img src=<c:url value="/resources/images/logo.png"/> alt="logo"></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="/welcome">Home</a></li>
                <li><a href="about-us.html">About Howl Hugs</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dashboard <i class="icon-angle-down"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="/createAccount">Update Your Profile</a></li>
                        <li><a href="/createAccount">Update Your Network</a></li>
                        <li class="divider"></li>
                        <li><a href="/calendar">View Calendar</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</header><!--/header-->
<!-- Begin background slider image with headline and link to Registration and Login -->
<section id="main-slider" class="no-margin">
    <div class="carousel slide wet-asphalt">
        <ol class="carousel-indicators">
            <li data-target="#main-slider" data-slide-to="0" class="active"></li>
            <li data-target="#main-slider" data-slide-to="1"></li>
            <li data-target="#main-slider" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active" style="background-image: url('/resources/images/slider/bg1a.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <h1 class="carousel-content centered">
                                <h2 class="animation animated-item-1" style="color:#3c5899">Welcome to Howl Hugs Pet Sitter App! <br>
                                    Connecting Local Companions<br>
                                    for your pets while you are away.</h2>
                                <h1 class="animation animated-item-2" ><br><a href="createAccount" style="color:#3c5899">Register</a></h1><br><br>
                                <!-- NEED LINK TO LOGIN HERE  -->
                                <h3 style="color:#3c5899">Login here if you have a Google Account:</h3>
                                <div class="col-xs-2">
                                <button id="authorize-button" style="display: none;" class="form-control">Authorize</button>
                                <button id="signout-button" style="display: none;" class="form-control">Sign Out</button>
                                <pre id="content"></pre>
                                </div>
                                <br>
                                <br>
                                <br>

                                <h3 style="color:#3c5899">View the Pet Sitter <a href="calendar?parentName=msepa5@sdcglobal.net" style="color:#3c5899">Calendar</a> <br>
                                to see all the Pet Sitting App appointments.</h3>

                                <h3 style="color:#3c5899"><a href="calendar" style="color:#3c5899">Schedule an event</a></h3>

                                <!-- END GOOGLE LOGIN CODE-->
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.item-->


            <div class="item" style="background-image: url( '/resources/images/slider/bg2.jpg' )">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="carousel-content center centered">
                                <h2 class="boxed animation animated-item-1">Because your Cousin Loves your Pet like a Brother,</h2>
                                <p class="boxed animation animated-item-2">Howl Hugs helps you schedule a Pet Sitting visit that makes everyone happy.</p>
                                <br>
                                <a class="btn btn-md animation animated-item-3" href="createAccount">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.item-->
            <div class="item" style="background-image: url('/resources/images/slider/bg3.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="carousel-content centered">
                                <h2 class="animation animated-item-1">Scheduling Companions for your Pets</h2>
                                <p class="animation animated-item-2">will make spread the Howl Hugs.</p>
                                <a class="btn btn-md animation animated-item-3" href="createAccount">Learn More</a>
                            </div>
                        </div>
                        <div class="col-sm-6 hidden-xs animation animated-item-4">
                            <div class="centered">
                                <div class="embed-container">
                                    <!-- <iframe src="//player.vimeo.com/video/69421653?title=0&amp;byline=0&amp;portrait=0&amp;color=a22c2f" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.item-->
        </div><!--/.carousel-inner-->
    </div><!--/.carousel-->
    <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
        <i class="icon-angle-left"></i>
    </a>
    <a class="next hidden-xs" href="#main-slider" data-slide="next">
        <i class="icon-angle-right"></i>
    </a>
</section><!--/#main-slider-->

<section id="services" class="wet-asphalt">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <div class="media">
                    <div class="pull-left">
                        <i class="icon-twitter icon-md"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Twitter Marketing</h3>
                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae.</p>
                    </div>
                </div>
            </div><!--/.col-md-4-->
            <div class="col-md-4 col-sm-6">
                <div class="media">
                    <div class="pull-left">
                        <i class="icon-facebook icon-md"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Facebook Marketing</h3>
                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae.</p>
                    </div>
                </div>
            </div><!--/.col-md-4-->
            <div class="col-md-4 col-sm-6">
                <div class="media">
                    <div class="pull-left">
                        <i class="icon-google-plus icon-md"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Google Plus Marketing</h3>
                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae.</p>
                    </div>
                </div>
            </div><!--/.col-md-4-->
        </div>
    </div>
</section><!--/#services-->


<!-- Project Elevator Pitch section -->
<section id="testimonial" class="alizarin">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="center">
                    <h3>What - Who - Why</h3>
                    <p>The Howl Hugs Pet Sitter Web App fills the need to schedule <br>companionship for family pets while the owners are away </p>
                </div>
                <div class="gap"></div>
                <div class="row">
                    <div class="col-md-6">
                        <blockquote>
                            <p>Besides being a ‘feel-good’ app, this is a great project to showcase all the skills we now have in Java, MySQL, JDBC, SpringMVC, Hibernate, Javascript and API integration.  The Howl Hugs Pet Sitter Web App fills the need to schedule companionship for family pets while the owners are away – a positive alternative to kennel boarding, or leaving your ‘independent’ cat alone for the weekend. </p>
                            <small>Lydia Latocki, <cite title="Java Developer">Java Developer</cite></small>
                        </blockquote>
                        <blockquote>
                            <p>Users set up a Social Network of Sitters and Pet Parents to schedule Pet Sitting.  To begin, Users create accounts with profiles held in MySQL on Amazon Web Services that are validated through Spring MVC validation. Pets are included in Parent profiles. Type of pet are defined with the help of a drop down menu using the Purina Breed API that conveniently lists all dog and cat breeds. </p>
                            <small>Trina Chowdhury, <cite title="Java Developer">Java Developer</cite></small>
                        </blockquote>
                    </div>
                    <div class="col-md-6">
                        <blockquote>
                            <p>Parents invite friends to join the app and link to their shared Howl Hugs Network. Sitters profiles include type of animal Sitters are willing to companion. Users can be both Sitters and Parents, or update their profile at anytime if things change. Users can view their own Pet Network of friends to schedule Pet Sitting.</p>
                            <small>Jeremy Villa, <cite title="Java Developer">Java Developer</cite></small>
                        </blockquote>
                        <%--<blockquote>--%>
                            <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>--%>
                            <%--<small>Someone famous in <cite title="Source Title">Source Title</cite></small>--%>
                        <%--</blockquote>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!--/#testimonial-->

<!-- FOOTER -->
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

<!-- END BOOTSTRAP HTML -->
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

When you have logged into your Google Account, <br>
View the Pet Sitter<br>
<a href="calendar?parentName=msepa5@sdcglobal.net">Calendar</a> <br>
to see all the Pet Sitting App appointments.


<!-- <a href="calendar">Schedule an event</a> -->

</body>
</html>
