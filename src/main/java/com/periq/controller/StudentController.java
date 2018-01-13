package com.periq.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.periq.model.Student;
import com.periq.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	StudentService studentService;

	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(Map<String, Object> map) {
		map.put("student", new Student());
		return "student/register";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String create(Student student, Map<String, Object> map) {
		studentService.create(student);
		return "redirect:/student/details/" + student.getId();
	}
	
	@RequestMapping(value="/details/{id}", method=RequestMethod.GET)
	public String details(@PathVariable("id") Long id, Map<String, Object> map) {
		
		Student student = studentService.find(id);
		
		map.put("Name", student.getName());
		map.put("Age", student.getAge());
		map.put("EMail", student.getEmail());
		return "student/details";
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Map<String, Object> map) {
		map.put("studentList", studentService.getAll());
		return "student/list";
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String edit(@PathVariable("id") Long id, Map<String, Object> map) {
		Student student = studentService.find(id);
		map.put("student", student);
		return "student/edit";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(Student student, Map<String, Object> map) {
		studentService.update(student);
		return "redirect:/student/details/" + student.getId();
	}
	
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable("id") Long id, Map<String, Object> map) {
		studentService.delete(id);
		return "redirect:/student/list";
	}
}
