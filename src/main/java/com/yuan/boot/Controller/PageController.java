package com.yuan.boot.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/page")
public class PageController {
	
	@RequestMapping("/teacherIndex.do")
	public String teacherIndex(){
		return "teacher/index";
	}
	@RequestMapping("/teacherLogin.do")
	public String teacherLogin(){
		return "teacher/login";
	}
	
	
}
