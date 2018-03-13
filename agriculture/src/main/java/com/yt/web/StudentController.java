package com.yt.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yt.entity.Student;
import com.yt.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService studentService;

	@Resource
	private HttpServletRequest request;

	@RequestMapping("forStudent.do")
	public String forStudent() {
		System.out.println(11);
		Student stu = new Student();
		stu = studentService.getById(1);
		request.setAttribute("stu", stu);
		return "register";
	}

}
