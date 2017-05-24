<%--
  Created by IntelliJ IDEA.
  User: Pro
  Date: 5/23/17
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create An Account</title>
</head>
<body>
<h2 >Customer Registration</h2>
            <form name="userInfo" method="GET" action="/finishAccount" onsubmit="return validateForm();">
                <p> Fill out form completely to join the PetSitter Web App </p>
                <table>
                    <tr>
                        <td>Email: <input type="text" name="email" required></td>

                    </tr>
                    <tr>
                        <td>First Name: <input type="text" name="firstName" required></td>
                    </tr>
                    <tr>
                        <td>Last Name: <input type="text" name="lastName" required></td>
                    </tr>
                    <tr>
                        <td>Address: <input type="text" name="address" required></td>
                    </tr>
                    <tr>
                        <td>Apt: <input type="text" name="apt" ></td>
                    </tr>
                    <tr>
                        <td>City: <input type="text" name="city" required></td>
                    </tr>
                    <tr>
                        <td>State: <input type="text" name="state" required></td>
                    </tr>
                    <tr>
                        <td>Zip: <input type="text" name="zip" required></td>

                    </tr>
                    <tr>
                        <td>Password: <input type="password" name="password" required></td>
                    </tr>
                    <tr>
                        <td>Repeat Password: <input type="password" name="repeatPassword" required></td>

                    </tr>
                    <tr>
                        <td>Are you a Parent: <input type="radio" name="parent" value="1" checked>Yes    <input type="radio" name="parent" value="0">No</td>

                     <tr>
                        <td>Are you a Sitter: <input type="radio" name="sitter" value="1" checked>Yes     <input type="radio" name="sitter" value="0">No</td>

                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Submit"/>
                        </td>
                    </tr>
                </table>
            </form>

<script>
    function validateForm() {
        var userEmail = document.forms["userInfo"]["email"].value;

        var password = document.forms["userInfo"]["password"].value;
        var repeatPassword = document.forms["userInfo"]["repeatPassword"].value;
        if (email === "" || firstName === "" || lastName === "" || address === "" || city === "" || state === "" || zip === "" || passWord === "" || repeatPassword === "" || parent === "" || sitter === "" ) {
            alert("Please complete all fields to join the Coffee Club!");
            return false;
        }
        if (!userEmail.includes("@")) {
            alert("Please enter a valid email!");
            return false;
        }
        if (!userEmail.includes(".")) {
            alert("Please enter a valid email!");
            return false;
        }
        if (password !== repeatPassword) {
            alert("The passwords entered do not match!");
            return false;
        }
        return true;
    }
</script>


</body>
</html>
