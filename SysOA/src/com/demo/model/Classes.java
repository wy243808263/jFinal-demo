package com.demo.model;
import java.util.List;
import com.jfinal.plugin.activerecord.Model;

public class Classes  extends Model<Classes>{
	private static final long serialVersionUID = 1L;
	public static final Classes dao = new Classes();
	
	//Ò»¶Ô¶à
	public List<Student> getStudents(){
		return Student.dao.find("select * from student where classesid=?", get("id"));
	}
}
