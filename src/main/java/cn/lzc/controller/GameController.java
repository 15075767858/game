package cn.lzc.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.lzc.DaoImpl.GameResultDaoImpl;
import cn.lzc.DaoImpl.UserDaoImpl;
import cn.lzc.model.GameResult;
import cn.lzc.model.User;
import cn.lzc.utils.GameUtils;


@Controller
public class GameController {
	@Autowired
	private  HttpServletRequest request;
	
	
	@RequestMapping(value="/login.html",method=RequestMethod.GET)
	public String login(Model model){
		//User user = new User();
		//model.addAttribute("user", user);
		request.getSession().setAttribute("userid",null);
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
		int id;
		try {
			 id =(Integer) request.getSession().getAttribute("userid");
			User user =new UserDaoImpl().findUserByUserId(id);
		} catch (Exception e) {
			return "login";
			// TODO: handle exception
		}
		
		List l = new UserDaoImpl().findUserVipByUserId(id);
		
		model.addAttribute("user",new UserDaoImpl().findUserByUserId(id));
		model.addAttribute("VipList",l);
		/*int id = (Integer) request.getSession().getAttribute("userid");
		User user = new UserDaoImpl().findUserByUserId(id);
		model.addAttribute("user", user);*/
		
		User user = new UserDaoImpl().findUserByUserId(id);
		model.addAttribute("user", user);
		return "change";
	}
	@RequestMapping(value="/manage.html",method=RequestMethod.GET)
	public String manage(Model model){
		//User user = new User();
		//model.addAttribute("user", user);
		try {
			int id =(Integer) request.getSession().getAttribute("userid");
			if(id!=1){
				return "login";
			}
			User user =new UserDaoImpl().findUserByUserId(id);
		} catch (Exception e) {
			return "login";
			// TODO: handle exception
		}
		return "manage";
	}
	@RequestMapping(value="/home.html",method=RequestMethod.GET)
	public String home(Model model){
		String caizhong=request.getParameter("caizhong");
		System.out.println(caizhong);
		try {
			int id =(Integer) request.getSession().getAttribute("userid");
			User user =new UserDaoImpl().findUserByUserId(id);
			model.addAttribute("user",new UserDaoImpl().findUserByUserId(id));
		} catch (Exception e) {
			return "login";
			// TODO: handle exception
		}
		int type = 1;
		type=GameUtils.getTypeByCaiZhong(caizhong);
		List l=new ArrayList(); 
		
		
		List<GameResult> resList =new GameResultDaoImpl().findGameResultByType(type);
		resList=resList.subList(resList.size()-10, resList.size());
		for(int i=0;i<resList.size();i++){
			l.add(new String[]{resList.get(i).getNumber(),resList.get(i).getData().replaceAll(",", "")});
			
		}
		Collections.reverse(l);
		
		model.addAttribute("kaijianglist",l);
		GameResult gr=(GameResult) resList.get(resList.size()-1);
		String []s =GameUtils.getTopKaijiang(gr);
		model.addAttribute("kaijiangjieguo",s);
		return "home";
	}

	
	
	
	@RequestMapping(value="/fenbu.html",method=RequestMethod.GET)
	public String fenbu(Model model){
		/**
		 * 请根据彩种返回彩种的开奖信息
		 * 业务逻辑部分 
		 * l集合 用来展示页面上的10期 开奖结果  必须是一个字符串数组 数组的[0]是开奖期数[1]是开奖号码
		 * s字符串数组  数组的索引0指定下一期开奖日期及期数  数组的索引1是本期开奖时间及期数，后面是本期开奖结果
		 */
		
		String caizhong=request.getParameter("caizhong");
		System.out.println(caizhong);
		try {
			int id =(Integer) request.getSession().getAttribute("userid");
			User user =new UserDaoImpl().findUserByUserId(id);
			model.addAttribute("user",new UserDaoImpl().findUserByUserId(id));
		} catch (Exception e) {
			return "login";
			// TODO: handle exception
		}
		int type = 1;
		type=GameUtils.getTypeByCaiZhong(caizhong);
		List l=new ArrayList(); 
		
		
		List<GameResult> resList =new GameResultDaoImpl().findGameResultByType(type);
		resList=resList.subList(resList.size()-10, resList.size());
		for(int i=0;i<resList.size();i++){
			l.add(new String[]{resList.get(i).getNumber(),resList.get(i).getData().replaceAll(",", "")});
			
		}
		Collections.reverse(l);
		
		model.addAttribute("kaijianglist",l);
		GameResult gr=(GameResult) resList.get(resList.size()-1);
		String []s =GameUtils.getTopKaijiang(gr);
		model.addAttribute("kaijiangjieguo",s);
		return "fenbu";
	}
	
	
	
	
}