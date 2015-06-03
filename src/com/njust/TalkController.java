package com.njust;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.njust.model.Talk;
@Controller
@RequestMapping("/njust")

public class TalkController {

private static List<Talk> talktList=new ArrayList<Talk>();
	/**
	 * author:douya 
	 * school:njust
	 * */
	static{
		talktList.add(new Talk(1,"�ٶȹ�˾","��ѧ¥A102","python��ҳ���� ��׿ʵϰ"));
		talktList.add(new Talk(2,"���ǹ�˾","��ѧ¥A101","��ҳǰ�� ���"));
		talktList.add(new Talk(3,"�ٶȹ�˾","��ѧ¥B102","���� ���� ����"));
		talktList.add(new Talk(4,"��Ѷ��˾","��ѧ¥C404","���� ������"));
		talktList.add(new Talk(5,"ţţ���ز���˾","��ѧ¥A103","���ز� Ͷ�� ���� "));
	}
	
	@RequestMapping("/jobStu")
	public ModelAndView list(){
		ModelAndView mav=new ModelAndView();
		mav.addObject("talktList", talktList);
		mav.setViewName("templates/jobStu");
		return mav;
	}
	
	@RequestMapping("/detail")
	public ModelAndView detail(@RequestParam("id")  int id){
		ModelAndView mav=new ModelAndView();
		mav.addObject("talk", talktList.get(id-1));
		mav.setViewName("templates/detail");
		return mav;
	}
	
	
	
	@RequestMapping("/preSave")
	public ModelAndView preSave(@RequestParam(value="id",required=false) String id){
		ModelAndView mav=new ModelAndView();
		if(id!=null){
			mav.addObject("Talk", talktList.get(Integer.parseInt(id)-1));
			mav.setViewName("Talk/update");
		}else{
			mav.setViewName("Talk/add");			
		}
		return mav;
	}
}
