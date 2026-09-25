package com.library.service;

import com.library.dao.BookDAO;
import com.library.dao.UserDAO;
import com.library.model.Book;
import com.library.model.User;

import java.util.List;

public class LibraryService {

    private BookDAO bookDAO;
    private UserDAO userDAO;

    public LibraryService() {
        bookDAO = new BookDAO();
        userDAO = new UserDAO();
    }

    // Get all books
    public List<Book> getAllBooks() {
        return bookDAO.getAllBooks();
    }

    // Login
    public User login(String username, String password) {
        return userDAO.login(username, password);
    }

    // Add book
    public boolean addBook(Book book) {
        return bookDAO.addBook(book);
    }

    // Issue book
    public boolean issueBook(int bookId) {
        return bookDAO.issueBook(bookId);
    }

    // Return book
    public boolean returnBook(int bookId) {
        return bookDAO.returnBook(bookId);
    }
}