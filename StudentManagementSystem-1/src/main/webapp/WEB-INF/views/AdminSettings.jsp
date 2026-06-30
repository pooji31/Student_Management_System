<!DOCTYPE html>
<html>
<head>
    <title>Admin Settings</title>
    <style>
        body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(rgba(15,23,42,0.85), rgba(15,23,42,0.85)),
                        url('https://images.unsplash.com/photo-1523050854058-8df90110c9f1?auto=format&fit=crop&w=1600&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #fff;
            margin: 0;
            padding: 20px;
        }

        .card {
            background: rgba(255,255,255,0.95);
            color: #1e293b;
            border-radius: 18px;
            padding: 28px;
            box-shadow: 0 10px 28px rgba(0,0,0,0.25);
            max-width: 600px;
            margin: 40px auto;
        }

        h2 {
            color: #1e1b4b;
            margin-bottom: 20px;
            font-size: 28px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
            color: #334155;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border: 1px solid #cbd5e1;
            border-radius: 10px;
            font-size: 15px;
        }

        .btn {
            text-decoration: none;
            padding: 12px 20px;
            border-radius: 10px;
            font-weight: 700;
            background: linear-gradient(135deg,#4f46e5,#7c3aed);
            color: #fff;
            transition: 0.3s;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 14px rgba(0,0,0,0.25);
        }
    </style>
</head>
<body>
<div class="card">
    <h2>Admin Settings</h2>
    <form action="/admin/updateSettings" method="post">
        <label for="name">Admin Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter admin name">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter email address">

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter new password">

        <button type="submit" class="btn">Update Settings</button>
    </form>
</div>
</body>
</html>
