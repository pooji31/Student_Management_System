<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Employee Management System</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: Arial, sans-serif; }
        body {
            background-image:url('https://images.pexels.com/photos/3184460/pexels-photo-3184460.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 70vh;
            padding-top: 330px;
        }
        .welcome-bar { position: fixed; top: 0; width: 100%; text-align: center; padding: 15px; font-size: 24px; font-weight: bold; color: white; }
        nav { position: fixed; top: 55px; width: 100%; display: flex; justify-content: center; gap: 30px; }
        nav a { color: white; text-decoration: none; font-weight: bold; font-size: 18px; }
        nav a:hover { text-decoration: underline; color: bisque; }
        .container { max-width: 500px; margin: 30px auto; background: rgba(255,255,255,0.6); padding: 30px; border-radius: 25px; text-align: center; }
    </style>
</head>

<body>
    <div class="welcome-bar">
        <h3>WELCOME TO EMPLOYEE MANAGEMENT SYSTEM</h3>
    </div>

    <nav>
        <a href="admin">Home</a>
        <a href="findAll">View Employees</a>
        <a href="search">Search Employee</a>
        <a href="emplogout">Logout</a>
    </nav>

    <div id="home" class="container">
        <c:choose>
            <c:when test="${not empty sessionScope.employee}">
                <h2>Welcome to ${sessionScope.employee.name}</h2>
            </c:when>
            <c:when test="${not empty sessionScope.email}">
                <h2>Welcome to ${sessionScope.email}</h2>
            </c:when>
            <c:otherwise>
                <h2>Welcome</h2>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
