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
//		response.getWriter().println("<h1 style='text-align:center; margin-top:25px;'>Note Added Successfully</h1>");
//		response.getWriter().println(
//				"<h2 style='text-align:center; margin-top:25px;'><a href='all-notes.jsp'>Show All Notes</a></h2>");
			RequestDispatcher rd = request.getRequestDispatcher("add-success.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// doing nothing on exception
		}
	}
}
