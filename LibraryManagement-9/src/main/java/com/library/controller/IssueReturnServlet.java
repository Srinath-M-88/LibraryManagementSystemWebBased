package com.library.controller;

import com.library.service.LibraryService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/issueReturn")
public class IssueReturnServlet extends HttpServlet {

    private LibraryService libraryService;

    @Override
    public void init() throws ServletException {
        libraryService = new LibraryService();
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int bookId = Integer.parseInt(request.getParameter("bookId"));
        String action = request.getParameter("action");

        boolean success = false;

        if ("issue".equals(action)) {
            success = libraryService.issueBook(bookId);
        } 
        else if ("return".equals(action)) {
            success = libraryService.returnBook(bookId);
        }

        if (success) {
            response.sendRedirect("books");
        } else {
            response.sendRedirect("issueBook.jsp?error=1");
        }
    }
}