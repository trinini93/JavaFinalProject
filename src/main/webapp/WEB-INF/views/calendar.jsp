<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/25/2017
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Calendar</title>
</head>
<body>
<h1>This appointment calendar show <br>all pet sitting appointments members have made.</h1>
<br>
<p>Select an email from your Network of Sitters to request an appointment for sitting.</p><br>

<c:forEach items="${sitterEmail}" var ="sEmail">

    <a href="mailto:${sEmail.sitterEmail}?subject=Hello,%20Can%20you%20sit%3F&body=Hello,%0D%0DCan%20you%20sit%20for%20my%20pet%20on:">${sEmail.sitterEmail}</a><br>
</c:forEach>

<br>
<br>


<iframe src="
https://calendar.google.com/calendar/embed?src=ci0im9019ojt8m3dmkmlbc68qo@group.calendar.google.com" width="800" height="600" frameborder="0" scrolling="no"></iframe>

</body>
</html>
