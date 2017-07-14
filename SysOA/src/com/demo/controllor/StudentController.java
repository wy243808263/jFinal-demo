package com.demo.controllor;

import java.util.List;

import com.demo.interceptor.StudentInterceptor;
import com.demo.model.Student;
import com.demo.validator.StudentValidator;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

public class StudentController extends Controller {
	@Before(StudentInterceptor.class)
	public void index() {
		List<Student> list = Student.dao.find("select * from student");
		setAttr("studentList", list);
		render("/index.html");
	}

	public void add() {
		render("/add.html");
	}

	public void delete() {
		// 获取表单域名为studentID的值
		// Student.dao.deleteById(getPara("studentID"));
		// 获取url请求中第一个值
		Student.dao.deleteById(getParaToInt());
		forwardAction("/student");
	}

	public void update() {
		Student student = getModel(Student.class);
		student.update();
		forwardAction("/student");
	}

	public void get() {
		Student student = Student.dao.findById(getParaToInt());
		setAttr("student", student);
		render("/index2.html");
	}

	@Before(StudentValidator.class)
	public void save() {
		Student student = getModel(Student.class);
		student.save();
		forwardAction("/student");
	}

}
