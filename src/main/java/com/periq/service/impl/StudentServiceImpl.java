package com.periq.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.periq.dao.StudentDAO;
import com.periq.model.Student;
import com.periq.service.StudentService;


@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentDAO studentDAO;
	
	public void create(Student student) {
		studentDAO.create(student);		
	}

	public void update(Student student) {
		studentDAO.update(student);
	}

	public Student edit(Long id) {
		return studentDAO.edit(id);
	}

	public void delete(Long id) {
		
		studentDAO.delete(id);
	}

	public Student find(Long id) {
		return studentDAO.find(id);
	}

	public List<Student> getAll() {
		return studentDAO.getAll();
	}
}
