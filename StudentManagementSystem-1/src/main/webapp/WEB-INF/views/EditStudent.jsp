<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Student</title>

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

.container{

width:700px;
background:rgba(255,255,255,.15);
backdrop-filter:blur(15px);
padding:35px;
border-radius:20px;
box-shadow:0 10px 30px rgba(0,0,0,.35);

}

h1{

text-align:center;
color:white;
margin-bottom:25px;

}

table{

width:100%;

}

td{

padding:12px;

}

label{

color:white;
font-weight:bold;

}

input,select,textarea{

width:100%;
padding:12px;
border:none;
outline:none;
border-radius:10px;
font-size:15px;

}

textarea{

resize:none;

}

.buttons{

display:flex;
justify-content:center;
gap:20px;
margin-top:25px;

}

.buttons input{

padding:12px 20px;
width:180px;
border:none;
border-radius:8px;
font-size:16px;
cursor:pointer;
font-weight:bold;

}

.update{

background:#2563eb;
color:white;

}

.clear{

background:#dc2626;
color:white;

}

.buttons input:hover{

opacity:.9;

}

.back{

display:block;
text-align:center;
margin-top:25px;
color:white;
text-decoration:none;
font-weight:bold;

}

.back:hover{

color:#60a5fa;

}

</style>

</head>

<body>

<div class="container">

<h1>Edit Student</h1>

<form action="update">

<input type="hidden" name="id" value="${student.id}">

<table>

<tr>

<td><label>Name</label></td>

<td>

<input
type="text"
name="name"
value="${student.name}"
required>

</td>

</tr>

<tr>

<td><label>Email</label></td>

<td>

<input
type="email"
name="email"
value="${student.email}"
required>

</td>

</tr>

<tr>

<td><label>Mobile</label></td>

<td>

<input
type="text"
name="mobile"
value="${student.mobile}"
required>

</td>

</tr>

<tr>

<td><label>Course</label></td>

<td>

<select name="course">

<option ${student.course=='Java Full Stack'?'selected':''}>Java Full Stack</option>

<option ${student.course=='Python Full Stack'?'selected':''}>Python Full Stack</option>

<option ${student.course=='AI & ML'?'selected':''}>AI & ML</option>

<option ${student.course=='Data Science'?'selected':''}>Data Science</option>

<option ${student.course=='Cyber Security'?'selected':''}>Cyber Security</option>

</select>

</td>

</tr>

<tr>

<td><label>Address</label></td>

<td>

<textarea rows="4"
name="address">${student.address}</textarea>

</td>

</tr>

<tr>

<td><label>Status</label></td>

<td>

<select name="status">

<option ${student.status=='Active'?'selected':''}>Active</option>

<option ${student.status=='Inactive'?'selected':''}>Inactive</option>

</select>

</td>

</tr>

</table>

<div class="buttons">

<input
class="update"
type="submit"
value="Update Student">

<input
class="clear"
type="reset"
value="Reset">

</div>

</form>

<a class="back" href="list">← Back to Student List</a>

</div>

</body>
</html>