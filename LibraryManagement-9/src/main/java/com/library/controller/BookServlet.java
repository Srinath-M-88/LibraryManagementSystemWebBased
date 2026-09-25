package com.library.controller;

import com.library.model.Book;
import com.library.service.LibraryService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/books")
public class BookServlet extends HttpServlet {

    private LibraryService libraryService;

    @Override
    public void init() throws ServletException {
        libraryService = new LibraryService();
    }

    @Override
    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        List<Book> books = libraryService.getAllBooks();

        request.setAttribute("books", books);

        request.getRequestDispatcher("books.jsp")
               .forward(request, response);
    }
}