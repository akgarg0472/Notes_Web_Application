package com.servlets;

import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entity.Note;
import com.helper.FactoryProvider;

@SuppressWarnings("serial")
@WebServlet("/save-note")
public class SaveNoteServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		String title;
		String description;

		title = request.getParameter("title");
		description = request.getParameter("description");

		Note note = new Note(title, description, new Date());

		try {
			Session session = FactoryProvider.getSessionFactory().openSession();
			session.beginTransaction();
			session.save(note);
			session.getTransaction().commit();
			RequestDispatcher rd = request.getRequestDispatcher("add-success.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// doing nothing on exception
		}
	}
}
