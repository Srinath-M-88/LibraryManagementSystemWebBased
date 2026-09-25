<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Issue or Return Book</title>

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
            text-align: center;
        }

        h1 {
            color: #0f172a;
            margin-bottom: 8px;
        }

        .subtitle {
            color: #64748b;
            margin-bottom: 30px;
        }

        label {
            display: block;
            text-align: left;
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

        .buttons {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        button {
            flex: 1;
            padding: 12px;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
        }

        .issue {
            background-color: #7c3aed;
        }

        .issue:hover {
            background-color: #6d28d9;
        }

        .return {
            background-color: #2563eb;
        }

        .return:hover {
            background-color: #1d4ed8;
        }

        .error {
            background-color: #fee2e2;
            color: #b91c1c;
            padding: 10px;
            border-radius: 6px;
            margin-bottom: 20px;
        }

        .links {
            margin-top: 25px;
        }

        .links a {
            display: block;
            margin: 8px;
            color: #2563eb;
            text-decoration: none;
        }
    </style>
</head>

<body>

    <div class="card">

        <h1>Issue or Return Book</h1>

        <p class="subtitle">
            Manage book issue and return operations
        </p>

        <%
            String error = request.getParameter("error");

            if ("1".equals(error)) {
        %>

            <div class="error">
                Operation failed. Check the Book ID or book status.
            </div>

        <%
            }
        %>

        <form action="issueReturn" method="post">

            <label>Book ID</label>

            <input type="number"
                   name="bookId"
                   placeholder="Enter Book ID"
                   required>

            <div class="buttons">

                <button type="submit"
                        name="action"
                        value="issue"
                        class="issue">
                    Issue Book
                </button>

                <button type="submit"
                        name="action"
                        value="return"
                        class="return">
                    Return Book
                </button>

            </div>

        </form>

        <div class="links">
            <a href="books">View Books</a>
            <a href="dashboard.jsp">Back to Dashboard</a>
        </div>

    </div>

</body>
</html>