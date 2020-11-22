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
@WebServlet("/update-note")
public class UpdateServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String description = request.getParameter("description");

		Session s = FactoryProvider.getSessionFactory().openSession();
		Note note = (Note) s.get(Note.class, id);
		s.beginTransaction();
		note.setTitle(title);
		note.setContent(description);
		s.getTransaction().commit();
		response.sendRedirect("all-notes.jsp");
	}
}
