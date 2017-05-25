<%--
  Created by IntelliJ IDEA.
  User: trina2
  Date: 5/24/17
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sitter Profile</title>
</head>
<body>
<h1>Welcome to Pet Sitters!</h1>
Please fill out the form below to register as a sitter.<br>
<form action="/sitterProfileSuccess" method="post">
    <%--Step 1: Type of animal willing to sit(checkbox)--%>
    1) I am willing to watch:<br>
    <input type="checkbox" name="petSize" value="Small dogs">Small dogs<br>
    <input type="checkbox" name="petSize" value="Medium-sized dogs">Medium-sized dogs<br>
    <input type="checkbox" name="petSize" value="Large dogs">Large dogs<br>
    <input type="checkbox" name="petSize" value="Cats">Cats<br>

    <%--Step 2: In/home sits? (will sitter take pet into their home?) (checkbox)--%>
    2) I am willing to watch your pet<br>
    at my home only:<br><input type="radio" name="myHome" value="1" checked>Yes<input type="radio" name="myHome" value="0">No</td><br>
    at your home only:<br><input type="radio" name="yourHome" value="1" checked>Yes<input type="radio" name="yourHome" value="0">No</td><br>

    <%--Step 3: animal temperament willing to watch (checkbox)//CHANGE TO RADIO BUTTON--%>
    3) I can watch:<br>
    <input type="checkbox" name="temper" value="easy going pets">easy going pets<br>
    <input type="checkbox" name="temper" value="high-maintenance pets">high-maintenance pets<br>
    <input type="checkbox" name="temper" value="Both">Both<br>

    <%--Step 4: Willing to feed/walk/play wild/meds etc (checkbox)--%>
    4) I am willing do the following:<br>
    <input type="checkbox" name="activities" value="Feeding">Feeding<br>
    <input type="checkbox" name="activities" value="Walking">Walking<br>
    <input type="checkbox" name="activities" value="Cuddling!">Cuddling!<br>

    <%--Step 5: Distance willing to travel (checkbox)--%>
    5) I am willing to travel:<br>
    <input type="checkbox" name="trav" value="0-5 miles">0-5 miles<br>
    <input type="checkbox" name="trav" value="6-10 miles">6-10 miles<br>
    <input type="checkbox" name="trav" value="I am not willing to travel.">I am not willing to travel.<br>

    <%--Step 6: Experience with sits 0-2, 3-5, 5-10, 10+ (radio)--%>
    6) I have watched pets ____ times:<br>
    <input type="radio" name="experience" value="0-5">0-5<br>
    <input type="radio" name="experience" value="6-10">6-10<br>
    <input type="radio" name="experience" value="10+">10+<br>


    <input type="submit">
</form>

</body>
</html>
