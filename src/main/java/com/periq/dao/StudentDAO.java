package com.periq.dao;

import java.util.List;

import com.periq.model.Student;

public interface StudentDAO {
	
	public void create(Student student);
	public void update(Student student);
	public Student edit(Long id);
	public void delete(Long id);
	public Student find(Long id);
	public List<Student> getAll();

}
