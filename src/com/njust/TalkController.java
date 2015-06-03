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
		talktList.add(new Talk(1,"百度公司","教学楼A102","python网页搜索 安卓实习"));
		talktList.add(new Talk(2,"金智公司","教学楼A101","网页前端 设计"));
		talktList.add(new Talk(3,"百度公司","教学楼B102","测试 分析 交互"));
		talktList.add(new Talk(4,"腾讯公司","教学楼C404","金融 互联网"));
		talktList.add(new Talk(5,"牛牛房地产公司","教学楼A103","房地产 投资 管理 "));
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
