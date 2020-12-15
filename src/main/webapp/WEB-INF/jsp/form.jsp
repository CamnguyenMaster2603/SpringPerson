<%--
  Created by IntelliJ IDEA.
  User: This PC
  Date: 11/11/2020
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Form</title>
    <style>
        <%@include file="/WEB-INF/css/form.css"%>
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<form:form modelAttribute="person" action="add" method="post">
    <div class="form-group">
        <c:if test="${type.equals('update')}">
            <h3 class="heading">Edit Book</h3>
        </c:if>
        <c:if test="${!type.equals('update')}">
            <h3>Add Book</h3>
        </c:if>
        <c:if test="${type.equals('update')}">
            <label>ID:</label><br>
            <form:input path="id" readonly="true"/><br><br>
        </c:if>
        <label>Name:</label><br>
        <form:input path="name" required="true"/><br><br>

        <label>Email:</label><br>
        <form:input path="email" required="true"/><br><br>

        <label>Address:</label><br>
        <form:input path="address" required="true"/><br><br>

        <label>Salary:</label><br>
        <form:input path="salary"  required="true"/><br><br>

        <input type="submit" value="Submit" class="btn btn-primary">
    </div>
</form:form>
</body>
</html>
