
<%--
  Created by IntelliJ IDEA.
  User: Pro
  Date: 5/23/17
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="test/html;charset=ISO-8859-1">
    <title>Pet Sitter Network</title>
</head>
<body>
<table border=1> <c:forEach var="myvar" items="${cList}">
    <tr>
        <td> ${myvar.firstName}</td>
        <td> ${myvar.lastName}</td>
    </tr>
    </c:forEach>
</body>
</html>
