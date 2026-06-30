<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course List</title>
    <style>
        body {font-family:"Segoe UI",sans-serif;background:linear-gradient(rgba(15,23,42,0.85),rgba(15,23,42,0.85)),url('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?auto=format&fit=crop&w=1600&q=80');background-size:cover;color:#fff;margin:0;padding:20px;}
        .card{background:rgba(255,255,255,0.95);color:#1e293b;border-radius:18px;padding:24px;box-shadow:0 10px 28px rgba(0,0,0,0.25);}
        h2{color:#1e1b4b;margin-bottom:16px;}
        table{width:100%;border-collapse:collapse;margin-top:12px;}
        thead{background:#f1f5f9;}
        thead th{padding:14px;text-align:left;color:#334155;}
        tbody td{padding:14px;border-bottom:1px solid #e2e8f0;color:#334155;}
        tbody tr:hover{background:#f8fafc;}
    </style>
</head>
<body>
<div class="card">
    <h2>Available Courses</h2>
    <table>
        <thead>
            <tr><th>Course ID</th><th>Name</th><th>Duration</th><th>Trainer</th></tr>
        </thead>
        <tbody>
            <c:forEach var="course" items="${courses}">
                <tr>
                    <td>${course.id}</td><td>${course.name}</td><td>${course.duration}</td><td>${course.trainer}</td>
                </tr>
            </c:forEach>
            <c:if test="${empty courses}">
                <tr><td colspan="4" style="text-align:center;">No courses available</td></tr>
            </c:if>
        </tbody>
    </table>
</div>
</body>
</html>
