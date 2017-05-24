<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: trina2
  Date: 5/23/17
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pet Profile</title>
</head>
<body>
<h1>Welcome to Pet Sitters!</h1>

Please fill out the form below to register your pet  with Pet Sitters.

<%--ACTION is empty until we figure out which page this is going to--%>
<form action="/dogBreedList">

<%--Step 1: Pet type dog/cat (radio button)--%>
    I have a:<br>
    <input type="radio" name="pettype" value="dog" checked> Dog<br>
    <input type="radio" name="pettype" value="cat"> Cat<br>
<input type="submit"> <br>
</form>
<%--Step 2: Pet's name (text form)--%>
    <form action = "/success" method ="post">
    My pet's name is:<br>
    <input type="text" name="petName"><br>

<%--Step 3: Pet's breed (dropdown frotm JSON data/PetFinder API)--%>
    My pet is a:<br>

        <select name="testBreeds">
                <c:forEach varStatus="b" items ="${breeds}">
                    <!--data we want to pass in-->
                    <option value = "${b.current}">${b.current}</option>
                </c:forEach>
        </select> <br>

<%--Step 4: Pet's med's y/n (radio button) IF/ELSE STATEMENT NEEDED--%>
    My pet:<br>
    <input type="radio" name="medtype" value="yes" checked> WILL need medication<br>
    <input type="radio" name="medtype" value="no"> Will NOT need medication<br>


<%--Step 5: In home sits (can sitter come to parent's house? y/n (radio button)--%>
    I prefer to:<br>
    <input type="radio" name="petwatch" value="prefer" >have my pet watched at my place<br>
    <input type="radio" name="petwatch" value="preferp">have my pet watched at the sitter's place.<br>

<%--Step 6: Pet needs feed/walk/play wild/visit/petting? (checkbox)--%>
    My pet will require:<br>
    <input type="checkbox" name="stuff" value="feed2">Feeding<br>
    <input type="checkbox" name="stuff" value="walk2" checked>Walking<br>
    <input type="checkbox" name="stuff" value="playWild2" checked>Rough playing<br>
    <input type="checkbox" name="stuff" value="cuddles2" checked>Cuddling!<br>

<input type ="submit">
</form>

</body>
</html>
