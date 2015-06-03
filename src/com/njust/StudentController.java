package com.njust;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.njust.model.Student;

@Controller
@RequestMapping("/student")
public class StudentController {

	private static List<Student> studentList=new ArrayList<Student>();

	
	static{
		studentList.add(new Student(1,"张三","南京理工大学","1106840319","软件工程","13770729053","1511069517@qq.com","南京 上海"));
		studentList.add(new Student(2,"王五","南京大学","1106840317","软件工程","13770729088","1511069887@qq.com","合肥 广州"));
	}
	
	@RequestMapping("/my")
	public ModelAndView list(@RequestParam("id")  int id){
		ModelAndView mav=new ModelAndView();
		mav.addObject("student", studentList.get(id-1));
		mav.setViewName("templates/my");
		return mav;
	}
	
	@RequestMapping("/preSave2")
	public ModelAndView preSave(@RequestParam(value="id",required=false) String id){
		ModelAndView mav=new ModelAndView();
		if(id!=null){
			mav.addObject("student", studentList.get(Integer.parseInt(id)-1));
			mav.setViewName("student/update");
		}else{
			mav.setViewName("student/add");			
		}
		return mav;
	}
}
