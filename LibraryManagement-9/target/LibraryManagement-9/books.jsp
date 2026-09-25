<%@ page import="java.util.List" %>
<%@ page import="com.library.model.Book" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Books</title>

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

        .container {
            max-width: 1100px;
            margin: 50px auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #64748b;
            margin-bottom: 35px;
        }

        .table-card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background: #1e3a8a;
            color: white;
            padding: 14px;
            text-align: center;
        }

        td {
            padding: 14px;
            text-align: center;
            border-bottom: 1px solid #e2e8f0;
        }

        tr:hover {
            background: #f8fafc;
        }

        .available {
            color: #047857;
            background: #d1fae5;
            padding: 6px 12px;
            border-radius: 20px;
            font-weight: bold;
        }

        .issued {
            color: #b91c1c;
            background: #fee2e2;
            padding: 6px 12px;
            border-radius: 20px;
            font-weight: bold;
        }

        .actions {
            text-align: center;
            margin-top: 30px;
        }

        .button {
            display: inline-block;
            padding: 11px 22px;
            margin: 5px;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
            background: #2563eb;
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
    </style>
</head>

<body>

<div class="navbar">

    <div class="brand">
        Library Management System
    </div>

    <a href="logout"
       style="color:white; text-decoration:none;">
        Logout
    </a>

</div>

<div class="container">

    <h1>Library Books</h1>

    <p class="subtitle">
        View all books and their current status
    </p>

    <div class="table-card">

        <table>

            <tr>
                <th>Book ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Status</th>
            </tr>

            <%
                List<Book> books =
                    (List<Book>) request.getAttribute("books");

                if (books != null && !books.isEmpty()) {

                    for (Book book : books) {
            %>

            <tr>

                <td>
                    <%= book.getBookId() %>
                </td>

                <td>
                    <%= book.getTitle() %>
                </td>

                <td>
                    <%= book.getAuthor() %>
                </td>

                <td>

                    <%
                        if (book.isIssued()) {
                    %>

                        <span class="issued">
                            Issued
                        </span>

                    <%
                        } else {
                    %>

                        <span class="available">
                            Available
                        </span>

                    <%
                        }
                    %>

                </td>

            </tr>

            <%
                    }

                } else {
            %>

            <tr>
                <td colspan="4">
                    No books found.
                </td>
            </tr>

            <%
                }
            %>

        </table>

    </div>

    <div class="actions">

        <a href="dashboard.jsp" class="button">
            Back to Dashboard
        </a>

        <a href="addBook.jsp" class="button add">
            Add Book
        </a>

    </div>

</div>

</body>
</html>