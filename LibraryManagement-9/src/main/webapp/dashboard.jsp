<%@ page import="com.library.model.User" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Library Dashboard</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            color: #0f172a;
        }

        .navbar {
            background: #0f172a;
            color: white;
            padding: 18px 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .brand {
            font-size: 22px;
            font-weight: bold;
        }

        .user-info {
            font-size: 14px;
        }

        .logout {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            padding: 8px 15px;
            background: #dc2626;
            border-radius: 5px;
        }

        .container {
            max-width: 1100px;
            margin: 60px auto;
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        .subtitle {
            color: #64748b;
            margin-bottom: 45px;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .card {
            background: white;
            width: 300px;
            padding: 35px 25px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h2 {
            margin-bottom: 10px;
        }

        .card p {
            color: #64748b;
            min-height: 40px;
        }

        .button {
            display: inline-block;
            margin-top: 15px;
            padding: 11px 25px;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            background: #2563eb;
            font-weight: bold;
        }

        .button:hover {
            background: #1d4ed8;
        }

        .add {
            background: #059669;
        }

        .add:hover {
            background: #047857;
        }

        .issue {
            background: #7c3aed;
        }

        .issue:hover {
            background: #6d28d9;
        }
    </style>
</head>

<body>

<%
    User user = (User) session.getAttribute("user");

    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<div class="navbar">

    <div class="brand">
        Library Management System
    </div>

    <div class="user-info">
        Welcome, <%= user.getUsername() %>

        <a href="logout" class="logout">
            Logout
        </a>
    </div>

</div>

<div class="container">

    <h1>Dashboard</h1>

    <p class="subtitle">
        Manage your library books efficiently
    </p>

    <div class="cards">

        <div class="card">

            <h2>View Books</h2>

            <p>
                View all available and issued books.
            </p>

            <a href="books" class="button">
                View Books
            </a>

        </div>

        <div class="card">

            <h2>Add Book</h2>

            <p>
                Add a new book to the library.
            </p>

            <a href="addBook.jsp" class="button add">
                Add Book
            </a>

        </div>

        <div class="card">

            <h2>Issue / Return</h2>

            <p>
                Issue or return a library book.
            </p>

            <a href="issueBook.jsp" class="button issue">
                Issue / Return
            </a>

        </div>

    </div>

</div>

</body>
</html>