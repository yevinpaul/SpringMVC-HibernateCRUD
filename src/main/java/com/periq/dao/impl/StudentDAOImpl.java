package com.periq.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.periq.dao.StudentDAO;
import com.periq.model.Student;

@Repository("studentDAO")
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	SessionFactory sessionFactory; 
	
	public Session currentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public void create(Student student) {
		currentSession().save(student);
		
	}

	public void update(Student student) {
		currentSession().update(student);
		
	}

	public Student edit(Long id) {
		return find(id);
	}

	public void delete(Long id) {
		Student student = find(id);
		currentSession().delete(student);
		
	}

	public Student find(Long id) {
		return (Student) currentSession().get(Student.class, id);
	}

	public List<Student> getAll() {
		return currentSession().createCriteria(Student.class).list();
	}
}
