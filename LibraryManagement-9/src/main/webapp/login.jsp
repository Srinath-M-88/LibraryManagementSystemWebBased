<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Library Login</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #0f172a, #1e3a8a);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-card {
            background: white;
            width: 380px;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
        }

        h1 {
            text-align: center;
            color: #0f172a;
            margin-bottom: 5px;
        }

        .subtitle {
            text-align: center;
            color: #64748b;
            margin-bottom: 30px;
        }

        label {
            font-weight: bold;
            color: #334155;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            border: 1px solid #cbd5e1;
            border-radius: 6px;
            font-size: 15px;
        }

        input:focus {
            outline: none;
            border-color: #2563eb;
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            background-color: #2563eb;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background-color: #1d4ed8;
        }

        .error {
            background-color: #fee2e2;
            color: #b91c1c;
            padding: 10px;
            border-radius: 6px;
            text-align: center;
            margin-bottom: 20px;
        }

        .back {
            text-align: center;
            margin-top: 20px;
        }

        .back a {
            color: #2563eb;
            text-decoration: none;
        }
    </style>
</head>

<body>

    <div class="login-card">

        <h1>Library Management System</h1>

        <p class="subtitle">
            Login to your account
        </p>

        <%
            String error = request.getParameter("error");

            if ("1".equals(error)) {
        %>

            <div class="error">
                Invalid username or password!
            </div>

        <%
            }
        %>

        <form action="login" method="post">

            <label>Username</label>

            <input type="text"
                   name="username"
                   placeholder="Enter username"
                   required>

            <br><br>

            <label>Password</label>

            <input type="password"
                   name="password"
                   placeholder="Enter password"
                   required>

            <button type="submit">
                Login
            </button>

        </form>

        <div class="back">
            <a href="index.jsp">Back to Home</a>
        </div>

    </div>

</body>
</html>