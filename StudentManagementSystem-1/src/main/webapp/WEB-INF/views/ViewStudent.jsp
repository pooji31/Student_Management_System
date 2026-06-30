<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Student</title>

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
display:flex;
justify-content:center;
align-items:center;
min-height:100vh;

}

.card{

width:650px;
background:rgba(255,255,255,.15);
backdrop-filter:blur(15px);
padding:35px;
border-radius:20px;
box-shadow:0 10px 30px rgba(0,0,0,.4);

}

h1{

text-align:center;
color:white;
margin-bottom:30px;

}

.profile{

text-align:center;
margin-bottom:25px;

}

.profile img{

width:120px;
height:120px;
border-radius:50%;
border:5px solid white;
margin-bottom:15px;

}

.profile h2{

color:white;

}

table{

width:100%;

}

td{

padding:14px;

}

.title{

font-weight:bold;
color:white;
width:180px;

}

.value{

background:white;
padding:10px;
border-radius:8px;
color:#1e293b;
font-weight:600;

}

.active{

color:green;
font-weight:bold;

}

.inactive{

color:red;
font-weight:bold;

}

.buttons{

display:flex;
justify-content:center;
gap:20px;
margin-top:30px;

}

.buttons a{

text-decoration:none;
padding:12px 20px;
border-radius:8px;
color:white;
font-weight:bold;
transition:.3s;

}

.edit{

background:#f59e0b;

}

.delete{

background:#dc2626;

}

.back{

background:#2563eb;

}

.buttons a:hover{

opacity:.85;

}

</style>

</head>

<body>

<div class="card">

<h1>Student Profile</h1>

<div class="profile">

<img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png">

<h2>${student.name}</h2>

</div>

<table>

<tr>

<td class="title">Student ID</td>

<td class="value">${student.id}</td>

</tr>

<tr>

<td class="title">Name</td>

<td class="value">${student.name}</td>

</tr>

<tr>

<td class="title">Email</td>

<td class="value">${student.email}</td>

</tr>

<tr>

<td class="title">Mobile</td>

<td class="value">${student.mobile}</td>

</tr>

<tr>

<td class="title">Course</td>

<td class="value">${student.course}</td>

</tr>

<tr>

<td class="title">Address</td>

<td class="value">${student.address}</td>

</tr>

<tr>

<td class="title">Status</td>

<td class="value">

<span class="${student.status=='Active'?'active':'inactive'}">

${student.status}

</span>

</td>

</tr>

</table>

<div class="buttons">

<a class="edit"
href="edit?id=${student.id}">
Edit
</a>

<a class="delete"
href="delete?id=${student.id}"
onclick="return confirm('Delete this Student?')">
Delete
</a>

<a class="back"
href="list">
Back
</a>

</div>

</div>

</body>
</html>