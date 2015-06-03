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
		studentList.add(new Student(1,"����","�Ͼ�����ѧ","1106840319","�������","13770729053","1511069517@qq.com","�Ͼ� �Ϻ�"));
		studentList.add(new Student(2,"����","�Ͼ���ѧ","1106840317","�������","13770729088","1511069887@qq.com","�Ϸ� ����"));
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
