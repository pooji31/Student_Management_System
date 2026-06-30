<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Student</title>

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
display:flex;
justify-content:center;
align-items:center;

}

.container{

width:700px;
background:rgba(255,255,255,.15);
backdrop-filter:blur(15px);
padding:35px;
border-radius:20px;
box-shadow:0 10px 30px rgba(0,0,0,.4);

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

.button{

margin-top:25px;
display:flex;
justify-content:center;
gap:20px;

}

.button input{

width:180px;
padding:13px;
font-size:16px;
font-weight:bold;
border:none;
border-radius:10px;
cursor:pointer;
transition:.3s;

}

.save{

background:#16a34a;
color:white;

}

.save:hover{

background:#15803d;

}

.reset{

background:#dc2626;
color:white;

}

.reset:hover{

background:#b91c1c;

}

.back{

display:block;
margin-top:25px;
text-align:center;
text-decoration:none;
color:white;
font-weight:bold;

}

.back:hover{

color:#60a5fa;

}

</style>

</head>

<body>

<div class="container">

<h1>Student Registration</h1>

<form action="save">

<table>

<tr>
<td><label>Name</label></td>
<td><input type="text" name="name" required></td>
</tr>

<tr>
<td><label>Email</label></td>
<td><input type="email" name="email" required></td>
</tr>

<tr>
<td><label>Mobile</label></td>
<td><input type="text" name="mobile" required></td>
</tr>

<tr>
<td><label>Course</label></td>
<td>

<select name="course">

<option>Java Full Stack</option>
<option>Python Full Stack</option>
<option>AI & ML</option>
<option>Data Science</option>
<option>Cyber Security</option>

</select>

</td>
</tr>

<tr>
<td><label>Address</label></td>
<td>

<textarea rows="4" name="address"></textarea>

</td>
</tr>

<tr>
<td><label>Status</label></td>

<td>

<select name="status">

<option>Active</option>
<option>Inactive</option>

</select>

</td>

</tr>

</table>

<div class="button">

<input class="save" type="submit" value="Register">

<input class="reset" type="reset" value="Clear">

</div>

</form>

<a class="back" href="/">← Back to Dashboard</a>

</div>

</body>
</html>