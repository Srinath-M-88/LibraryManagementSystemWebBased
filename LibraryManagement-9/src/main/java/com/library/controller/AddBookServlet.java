package com.library.controller;

import com.library.model.Book;
import com.library.service.LibraryService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/addBook")
public class AddBookServlet extends HttpServlet {

    private LibraryService libraryService;

    @Override
    public void init() throws ServletException {
        libraryService = new LibraryService();
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String title = request.getParameter("title");
        String author = request.getParameter("author");

        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setIssued(false);

        boolean success = libraryService.addBook(book);

        if (success) {
            response.sendRedirect("books");
        } else {
            response.sendRedirect("addBook.jsp?error=1");
        }
    }
}