package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.transaction.Transaction;

/**
 * Servlet implementation class UpadateServlet
 */
public class UpadateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpadateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			 String title = request.getParameter("title");
	            String content = request.getParameter("content");
int noteId = Integer.parseInt(request.getParameter("noteId".trim()));
		
	            Session s = FactoryProvider.getFactory().openSession();
	            org.hibernate.Transaction tx = s.beginTransaction();
	            
	            
	            Note note=s.get(Note.class, noteId);
	            
	            note.setTitle(title);
	            note.setContent(content);
	           note.setAddedDate(new Date());
	            
	            s.save(tx);
	            tx.commit();
	            s.close();
			
		} catch (Exception e) {
e.printStackTrace()	;	}
	}

}
