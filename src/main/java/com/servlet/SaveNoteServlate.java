package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.SessionFactory;
import org.hibernate.engine.spi.Resolution;

import com.entities.Note;
import com.helper.FactoryProvider;
import com.mysql.cj.Session;

import jakarta.transaction.Transaction;

/**
 * Servlet implementation class SaveNoteServlate
 */
public class SaveNoteServlate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SaveNoteServlate() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/jsp/addnotes.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String title = request.getParameter("title");
            String content = request.getParameter("content");

            // Create a new java.util.Date object with the current date and time
            java.util.Date currentDate = new java.util.Date();

            // Convert java.util.Date to java.sql.Date
            java.sql.Date sqlCurrentDate = new java.sql.Date(currentDate.getTime());

            Note note = new Note(title, content, sqlCurrentDate);

            org.hibernate.Session session = FactoryProvider.getFactory().openSession();
            session.beginTransaction();

            // Save the note object to the database
            session.save(note);

            session.getTransaction().commit();
            session.close();

            request.setAttribute("suc", "Note added successfully");
            request.getRequestDispatcher("/jsp/addnotes.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            // Handle exception
        }
    }


}
