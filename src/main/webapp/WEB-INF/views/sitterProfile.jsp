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

<%--Step 1: Type of animal willing to sit(checkbox)--%>
1) I am willing to watch:<br>
<input type="checkbox" name="sdog" value="sdog">Small dogs<br>
<input type="checkbox" name="mdog" value="mdog" checked>Medium-sized dogs<br>
<input type="checkbox" name="ldog" value="ldog" checked>Large dogs<br>
<input type="checkbox" name="cats" value="cats" checked>Cats<br>

<%--Step 2: In/home sits? (will sitter take pet into their home?) Skip questions 3&4 if YES. (checkbox)--%>
2) I am willing to watch your pet:<br>
<input type="checkbox" name="sdog1" value="choice1">At my home only (Skip questions 3 and 4)<br>
<input type="checkbox" name="mdog1" value="choice2" checked>At your home only<br>
<input type="checkbox" name="ldog1" value="choice3" checked>Both<br>

<%--Step 3: Do you have any other pets? y/n (radio)--%>
3) I have other pets:<br>
<input type="checkbox" name="yessss" value="yessss">Yes<br>
<input type="checkbox" name="nooo" value="nooo" checked>No (Skip question 4)<br>

<%--Step 4: What other pets do you have? cat/dog (checkbox)--%>
4) I have a:<br>
<input type="checkbox" name="sdog1" value="sdog1">Small dog(s)<br>
<input type="checkbox" name="mdog1" value="mdog1" checked>Medium-sized dog(s)<br>
<input type="checkbox" name="ldog1" value="ldog1" checked>Large dog(s)<br>
<input type="checkbox" name="cats1" value="cats1" checked>Cat(s)<br>

<%--Step 5: Willing to sit (easy going/high maintenance) (checkbox)--%>
5) I can watch:<br>
<input type="checkbox" name="easy" value="easy">easy going pets<br>
<input type="checkbox" name="high" value="high" checked>high-maintenance pets<br>
<input type="checkbox" name="both" value="both" checked>Both<br>

<%--Step 6: Willing to feed/walk/play wild/meds etc (checkbox)--%>
6) I am willing do the following:<br>
<input type="checkbox" name="feeed" value="feeed">Feeding<br>
<input type="checkbox" name="waalk" value="waalk" checked>Walking<br>
<input type="checkbox" name="playWiild" value="playWiild" checked>Rough playing<br>
<input type="checkbox" name="cuddless" value="cuddless" checked>Cuddling!<br>

<%--Step 7: Distance willing to travel (checkbox)--%>
7) I am willing to travel:<br>
<input type="checkbox" name="trav1" value="trav1">2-3 miles<br>
<input type="checkbox" name="trav2" value="trav2" checked>4-5 miles<br>
<input type="checkbox" name="trav3" value="trav3" checked>5-10 miles<br>
<input type="checkbox" name="trav4" value="trav4" checked>10+ miles<br>
<input type="checkbox" name="trav5" value="trav5">I am not willing to travel. <br>

<%--Step 8: Experience with sits 0-2, 3-5, 5-10, 10+ (radio)--%>
8) I have watched pets ____ times:<br>
<input type="radio" name="type" value="watch1" >0-6<br>
<input type="radio" name="type" value="watch2">7-20<br>
<input type="radio" name="type" value="watch3" >21-50<br>
<input type="radio" name="type" value="watch4">50+<br>

</body>
</html>
