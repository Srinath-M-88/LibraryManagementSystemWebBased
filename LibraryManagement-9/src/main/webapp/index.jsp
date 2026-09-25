<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Library Management System</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #0f172a, #1e3a8a);
            color: white;
            min-height: 100vh;
        }

        .container {
            text-align: center;
            padding-top: 150px;
        }

        h1 {
            font-size: 48px;
            margin-bottom: 15px;
        }

        p {
            font-size: 20px;
            color: #dbeafe;
            margin-bottom: 40px;
        }

        .login-button {
            display: inline-block;
            padding: 14px 40px;
            background-color: #2563eb;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
        }

        .login-button:hover {
            background-color: #3b82f6;
        }

        .footer {
            margin-top: 100px;
            color: #94a3b8;
            font-size: 14px;
        }
    </style>
</head>

<body>

    <div class="container">

        <h1>Library Management System</h1>

        <p>Manage books efficiently and easily</p>

        <a href="login.jsp" class="login-button">
            Login
        </a>

        <div class="footer">
            Java | JSP | Servlets | MySQL
        </div>

    </div>

</body>
</html>