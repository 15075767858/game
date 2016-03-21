package cn.lzc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.lzc.model.User;


@Controller
public class GoodsController {
	@Autowired
	private  HttpServletRequest request;
	
	
	
	
	
	@RequestMapping(value="/index.html",method=RequestMethod.GET)
	public String show1(Model model){
		User user = new User();
		model.addAttribute("user", user);
		
		return "index";
	}
	
	@RequestMapping(value="/demo",method=RequestMethod.GET)
	public String show(Model model){
		User user = new User();
		System.out.println(request);
		
		request.setAttribute("Login", "true");
		
		model.addAttribute("user", user);
		
		return "demo";
	}
	
	@RequestMapping(value="/demo1",method=RequestMethod.GET)
	public String show3(Model model){
		User user = new User();
		model.addAttribute("user", user);
		return "show1";
	}
	@RequestMapping(value="/demo2",method=RequestMethod.GET)
	public String show2(Model model){
		User user = new User();
		model.addAttribute("user", user);
		return "show2";
	}
	
	
}