<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI,sans-serif;
}

body{

background:linear-gradient(rgba(15,23,42,.75),rgba(15,23,42,.75)),
url("https://images.unsplash.com/photo-1523050854058-8df90110c9f1?auto=format&fit=crop&w=1600&q=80");

background-size:cover;
background-position:center;
min-height:100vh;
padding:30px;

}

.container{

width:95%;
margin:auto;
background:rgba(255,255,255,.12);
backdrop-filter:blur(15px);
padding:30px;
border-radius:20px;
box-shadow:0 10px 25px rgba(0,0,0,.35);

}

h1{

color:white;
text-align:center;
margin-bottom:25px;

}

.top{

display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:20px;
flex-wrap:wrap;
gap:15px;

}

.search{

display:flex;
gap:10px;

}

.search input{

padding:12px;
width:280px;
border:none;
border-radius:8px;
outline:none;

}

.search button{

padding:12px 20px;
background:#2563eb;
color:white;
border:none;
border-radius:8px;
cursor:pointer;
font-weight:bold;

}

.search button:hover{

background:#1d4ed8;

}

.buttons a{

text-decoration:none;
padding:12px 18px;
border-radius:8px;
font-weight:bold;
color:white;
margin-left:10px;

}

.add{

background:#16a34a;

}

.home{

background:#7c3aed;

}

table{

width:100%;
border-collapse:collapse;
background:white;
border-radius:12px;
overflow:hidden;

}

th{

background:#1e293b;
color:white;
padding:15px;

}

td{

padding:15px;
text-align:center;
border-bottom:1px solid #ddd;

}

tr:hover{

background:#f1f5f9;

}

.active{

color:green;
font-weight:bold;

}

.inactive{

color:red;
font-weight:bold;

}

.action a{

text-decoration:none;
padding:8px 12px;
border-radius:6px;
color:white;
margin:2px;
display:inline-block;

}

.view{

background:#2563eb;

}

.edit{

background:#f59e0b;

}

.delete{

background:#dc2626;

}

.action a:hover{

opacity:.85;

}

.empty{

text-align:center;
padding:30px;
font-size:18px;
font-weight:bold;

}

</style>

</head>

<body>

<div class="container">

<h1>Student Management</h1>

<div class="top">

<form class="search" action="search">

<input type="text"
name="keyword"
placeholder="Search Student Name">

<button>Search</button>

</form>

<div class="buttons">

<a class="add" href="register">
Register Student
</a>

<a class="home" href="/">
Dashboard
</a>

</div>

</div>

<table>

<tr>

<th>ID</th>

<th>Name</th>

<th>Email</th>

<th>Mobile</th>

<th>Course</th>

<th>Status</th>

<th>Actions</th>

</tr>

<c:if test="${empty students}">

<tr>

<td colspan="7" class="empty">

No Students Found

</td>

</tr>

</c:if>

<c:forEach items="${students}" var="s">

<tr>

<td>${s.id}</td>

<td>${s.name}</td>

<td>${s.email}</td>

<td>${s.mobile}</td>

<td>${s.course}</td>

<td>

<c:choose>

<c:when test="${s.status=='Active'}">

<span class="active">Active</span>

</c:when>

<c:otherwise>

<span class="inactive">Inactive</span>

</c:otherwise>

</c:choose>

</td>

<td class="action">

<a class="view"
href="view?id=${s.id}">
View
</a>

<a class="edit"
href="edit?id=${s.id}">
Edit
</a>

<a class="delete"
href="delete?id=${s.id}"
onclick="return confirm('Delete this student?')">
Delete
</a>

</td>

</tr>

</c:forEach>

</table>

</div>

</body>
</html>