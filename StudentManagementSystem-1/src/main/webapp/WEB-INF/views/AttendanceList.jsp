<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance List</title>
    <style>
        body{font-family:"Segoe UI",sans-serif;background:linear-gradient(rgba(15,23,42,0.85),rgba(15,23,42,0.85)),url('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?auto=format&fit=crop&w=1600&q=80');background-size:cover;color:#fff;margin:0;padding:20px;}
        .card{background:rgba(255,255,255,0.95);color:#1e293b;border-radius:18px;padding:24px;box-shadow:0 10px 28px rgba(0,0,0,0.25);}
        h2{color:#1e1b4b;margin-bottom:16px;}
        table{width:100%;border-collapse:collapse;margin-top:12px;}
        thead{background:#f1f5f9;}
        thead th{padding:14px;text-align:left;color:#334155;}
        tbody td{padding:14px;border-bottom:1px solid #e2e8f0;color:#334155;}
        tbody tr:hover{background:#f8fafc;}
        .badge{padding:6px 12px;border-radius:999px;font-size:13px;font-weight:700;}
        .badge-active{background:#dcfce7;color:#15803d;}
        .badge-inactive{background:#fee2e2;color:#dc2626;}
    </style>
</head>
<body>
<div class="card">
    <h2>Student Attendance</h2>
    <table>
        <thead>
            <tr><th>Student ID</th><th>Name</th><th>Date</th><th>Status</th></tr>
        </thead>
        <tbody>
            <c:forEach var="att" items="${attendance}">
                <tr>
                    <td>${att.studentId}</td><td>${att.studentName}</td><td>${att.date}</td>
                    <td><span class="${att.status == 'Absent' ? 'badge badge-inactive' : 'badge badge-active'}">${att.status}</span></td>
                </tr>
            </c:forEach>
            <c:if test="${empty attendance}">
                <tr><td colspan="4" style="text-align:center;">No attendance records</td></tr>
            </c:if>
        </tbody>
    </table>
</div>
</body>
</html>
