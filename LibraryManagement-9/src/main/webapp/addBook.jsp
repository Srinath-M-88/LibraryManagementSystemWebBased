<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>

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

        .card {
            background: white;
            width: 420px;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
        }

        h1 {
            text-align: center;
            color: #0f172a;
            margin-bottom: 8px;
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
            margin-top: 20px;
            background-color: #059669;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background-color: #047857;
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

    <div class="card">

        <h1>Add Book</h1>

        <p class="subtitle">
            Add a new book to the library
        </p>

        <%
            String error = request.getParameter("error");

            if ("1".equals(error)) {
        %>

            <div class="error">
                Failed to add book!
            </div>

        <%
            }
        %>

        <form action="addBook" method="post">

            <label>Book Title</label>

            <input type="text"
                   name="title"
                   placeholder="Enter book title"
                   required>

            <br><br>

            <label>Author</label>

            <input type="text"
                   name="author"
                   placeholder="Enter author name"
                   required>

            <button type="submit">
                Add Book
            </button>

        </form>

        <div class="back">
            <a href="dashboard.jsp">Back to Dashboard</a>
        </div>

    </div>

</body>
</html>