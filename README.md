# Library Management System

A web-based Library Management System developed using Java, JSP, Servlets, JDBC, MySQL, Maven, and Apache Tomcat.

## Overview

This project is designed to manage basic library operations digitally. The system allows users to log in, view books, add new books, issue books, return books, and log out.

## Features

- User Login and Logout
- View All Books
- Add New Books
- Issue Books
- Return Books
- Book Availability Status
- MySQL Database Integration
- Session Management

## Technologies Used

- Java 17
- JSP
- Servlets
- JDBC
- MySQL
- HTML
- CSS
- Maven
- Apache Tomcat 10.1

## Architecture

The project follows a simple layered MVC-style architecture:


Browser
   ↓
JSP (View)
   ↓
Servlet (Controller)
   ↓
Service Layer
   ↓
DAO Layer
   ↓
JDBC
   ↓
MySQL 

Project Structure:

src/main/java/com/library
│
├── controller
│   ├── LoginServlet.java
│   ├── LogoutServlet.java
│   ├── BookServlet.java
│   ├── AddBookServlet.java
│   └── IssueReturnServlet.java
│
├── dao
│   ├── BookDAO.java
│   └── UserDAO.java
│
├── model
│   ├── Book.java
│   └── User.java
│
├── service
│   └── LibraryService.java
│
└── util
    └── DBConnection.java

src/main/webapp
│
├── index.jsp
├── login.jsp
├── dashboard.jsp
├── books.jsp
├── addBook.jsp
├── issueBook.jsp
└── WEB-INF
    └── web.xml


Main Modules
Login

Users enter their username and password. The credentials are verified against the MySQL database and a session is created after successful login.

Book Management

Users can:

View available books
Add new books
Issue books
Return books
Database

MySQL is used to store user and book information.

Main tables:

users
books
Application Flow
Login

login.jsp
   ↓
LoginServlet
   ↓
LibraryService
   ↓
UserDAO
   ↓
MySQL
   ↓
HttpSession
   ↓
dashboard.jsp

Add Book

addBook.jsp
   ↓
AddBookServlet
   ↓
LibraryService
   ↓
BookDAO
   ↓
JDBC
   ↓
MySQL

Issue / Return

issueBook.jsp
   ↓
IssueReturnServlet
   ↓
LibraryService
   ↓
BookDAO
   ↓
MySQL


JDBC

JDBC is used to connect the Java application with MySQL.

The project uses:

Connection
PreparedStatement
ResultSet
executeQuery()
executeUpdate()

Parameterized queries are used through PreparedStatement.

Requirements
JDK 17
MySQL
Apache Tomcat 10.1
Maven
Eclipse IDE
Database Configuration

Create a MySQL database named:

librarydb

Update the database credentials in:

DBConnection.java

Example:

private static final String URL =
        "jdbc:mysql://localhost:3306/librarydb";

private static final String USERNAME = "root";
private static final String PASSWORD = "YOUR_MYSQL_PASSWORD";
Running the Project

Build the project using Maven:

mvn clean package

Deploy the generated WAR file to Apache Tomcat.

Then open:

http://localhost:8080/LibraryManagement-9/
Default Login
Username: admin
Password: admin123
Learning Outcomes

This project helped in understanding:

Java OOP
JSP and Servlets
JDBC
SQL and MySQL
DAO pattern
Service layer
MVC concepts
HTTP request/response
Session management
CRUD operations
Maven
Tomcat
Project Type

Academic Group Project

**Before pushing:** replace `YOUR_MYSQL_PASSWORD` with a placeholder, not your real password.
