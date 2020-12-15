<%--
  Created by IntelliJ IDEA.
  User: This PC
  Date: 11/11/2020
  Time: 10:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Person</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<br>
<div class="container" style="margin-bottom: 100px">

    <div class="row">
        <div class="col-sm-3">
            <a href="addForm">
                <button type="button" class="btn btn-primary">Add</button>
            </a>
        </div>
        <div class="col-sm-5">
            <form action="search" method="post">
                <div class="row">
                    <div class="col-sm-9">
                        <input class="form-control form-control" type="text" name="name"/>
                    </div>
                    <div class="col-sm-2">
                        <input type="Submit" value="Search" class="btn btn-primary"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <br>
    <div>
        <table class="table table-hover">
            <thead style="background-color: aquamarine">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Salary</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="p" items="${persons}">
                <tr>
                    <td>${p.id}</td>
                    <td><a href="edit?id=${p.id}">${p.name}</a></td>
                    <td>${p.email}</td>
                    <td>${p.address}</td>
                    <td>${p.salary}</td>
                    <td><a href="delete?id=${p.id}">
                        <button type="button" class="btn btn-danger">Delete</button>
                    </a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
