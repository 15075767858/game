package cn.lzc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.lzc.DaoImpl.UserDaoImpl;
import cn.lzc.model.User;


@Controller
public class GameController {
	@Autowired
	private  HttpServletRequest request;
	
	
	@RequestMapping(value="/login.html",method=RequestMethod.GET)
	public String login(Model model){
		//User user = new User();
		//model.addAttribute("user", user);
		
		return "login";
	}
	
	@RequestMapping(value="/register.html",method=RequestMethod.GET)
	public String register(Model model){
		//User user = new User();
		//model.addAttribute("user", user);
		return "register";
	}
	@RequestMapping(value="/change.html",method=RequestMethod.GET)
	public String change(Model model){
		try {
			int id =(Integer) request.getSession().getAttribute("userid");
			User user =new UserDaoImpl().findUserByUserId(id);
		} catch (Exception e) {
			// TODO: handle exception
		}
		//User user = new User();
		//model.addAttribute("user", user);
		return "change";
	}
	@RequestMapping(value="/manage.html",method=RequestMethod.GET)
	public String manage(Model model){
		//User user = new User();
		//model.addAttribute("user", user);
		
		return "manage";
	}
	@RequestMapping(value="/home.html",method=RequestMethod.GET)
	public String home(Model model){
		String caizhong=request.getParameter("caizhong");
		System.out.println(caizhong);
		/**
		 * 请根据彩种返回彩种的开奖信息
		 * 业务逻辑部分 
		 * l集合 用来展示页面上的10期 开奖结果  必须是一个字符串数组 数组的[0]是开奖期数[1]是开奖号码
		 * s字符串数组  数组的索引0指定下一期开奖日期及期数  数组的索引1是本期开奖时间及期数，后面是本期开奖结果
		 */
		
		List l=new ArrayList(); 
		l.add(new String[]{"0111090","02345"});
		l.add(new String[]{"0111091","12345"});
		l.add(new String[]{"0111092","22345"});
		l.add(new String[]{"0111093","32345"});
		l.add(new String[]{"0111094","42345"});
		l.add(new String[]{"0111095","52345"});
		l.add(new String[]{"0111096","62345"});
		l.add(new String[]{"0111097","72345"});
		l.add(new String[]{"0111098","82345"});
		l.add(new String[]{"0111099","92345"});
		
		model.addAttribute("kaijianglist",l);
		String [] s ={"20160606-53","20160606-052","3","5","8","9","2"};
		model.addAttribute("kaijiangjieguo",s);
		return "home";
	}

	@RequestMapping(value="/fenbu.html",method=RequestMethod.GET)
	public String fenbu(Model model){
		String caizhong=request.getParameter("caizhong");
		System.out.println(caizhong);
		/**
		 * 请根据彩种返回彩种的开奖信息
		 * 业务逻辑部分 
		 * l集合 用来展示页面上的10期 开奖结果  必须是一个字符串数组 数组的[0]是开奖期数[1]是开奖号码
		 * s字符串数组  数组的索引0指定下一期开奖日期及期数  数组的索引1是本期开奖时间及期数，后面是本期开奖结果
		 */
		
	List l=new ArrayList(); 
		l.add(new String[]{"0111090","02345"});
		l.add(new String[]{"0111091","12345"});
		l.add(new String[]{"0111092","22345"});
		l.add(new String[]{"0111093","32345"});
		l.add(new String[]{"0111094","42345"});
		l.add(new String[]{"0111095","52345"});
		l.add(new String[]{"0111096","62345"});
		l.add(new String[]{"0111097","72345"});
		l.add(new String[]{"0111098","82345"});
		l.add(new String[]{"0111099","92345"});
		
		model.addAttribute("kaijianglist",l);
		String [] s ={"20160606-53","20160606-052","3","5","8","9","2"};
		model.addAttribute("kaijiangjieguo",s);
		return "fenbu";
	}
	
	
	
	
}