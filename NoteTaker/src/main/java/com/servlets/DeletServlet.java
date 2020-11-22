package com.servlets;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entity.Note;
import com.helper.FactoryProvider;

@SuppressWarnings("serial")
@WebServlet("/delete-note")
public class DeletServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt((request.getParameter("note_id").trim()));

		Session session = FactoryProvider.getSessionFactory().openSession();
		session.beginTransaction();
		session.delete((Note)session.get(Note.class, id));
		session.getTransaction().commit();
		session.close();
		
		response.sendRedirect("all-notes.jsp");
		
	}
}
