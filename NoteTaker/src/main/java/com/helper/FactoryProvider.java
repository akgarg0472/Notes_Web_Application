package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.entity.Note;

public class FactoryProvider {
	private static SessionFactory factory;

	public static SessionFactory getSessionFactory() {
		if (factory == null) {
			factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Note.class)
					.buildSessionFactory();
		}

		return factory;
	}

	public static void closeSessionFactory() {
		if (factory.isOpen()) {
			factory.close();
		}
	}
}
