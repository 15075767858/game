package cn.lzc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.lzc.model.User;

@Controller
@RequestMapping("/json")
public class JsonController {

	
	@Autowired
	private HttpServletRequest request;

	private User user;

	/*@RequestMapping(value = "userLogin", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object userLogin(@RequestParam("username") String username,
			@RequestParam("userpassword") String userpassword,@RequestParam("yzm") String yzm) {
		String nativeyzm = (String) request.getSession().getAttribute("sRand");
		System.out.println(nativeyzm);
		return username+userpassword+yzm;
	}*/
	@RequestMapping(value = "userLogin", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object userLogin(@RequestBody String ps) {
		System.out.println(ps);//用户发送的登陆请求参数 用户名,密码,验证码
		String nativeyzm = (String) request.getSession().getAttribute("sRand"); //session中的验证码
		/**业务逻辑部分 校验
		 * 成功返回0
		 * 用户不存在返回1
		 * 密码错误返回2
		 * 验证码错误返回3
		 * 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		*/
		
		return 0;
	}
	
	@RequestMapping(value = "userRegister", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object userRegister(@RequestBody String ps) {
		System.out.println(ps);//用户发送的登陆请求参数 用户名,密码,验证码
		/**业务逻辑部分 校验
		 * 成功返回0
		 * 用户存在返回1
		 * 两次密码不一致2
		 * 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		*/
		return 0;
	}
	
	@RequestMapping(value = "changeName", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object changeName(@RequestBody String ps) {
		System.out.println(ps);//用户发送的登陆请求参数 用户名,密码,验证码
		/**业务逻辑部分
		 * 成功返回0
		 * 用户修改失败返回1
		 * 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		 */
		//String [] s ={"aa","bb","好了"};
		return 0;
	}
	
	@RequestMapping(value = "changePassword", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object changePassword(@RequestBody String ps) {
		System.out.println(ps);//用户发送的登陆请求参数 用户名,密码,验证码
		/**业务逻辑部分
		 * 成功返回0
		 * 用户修改失败返回1
		 * 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		 */
		//String [] s ={"aa","bb","好了"};
		return 0;
	}

	
	
	/*
	@RequestMapping(value = "userOutLogin", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object userOutLogin() {
		user =null;
		request.getSession().setAttribute("login", null);
		return true;
	}
	
	@RequestMapping(value = "isLogin", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object isLogin() {
		HttpSession session = request.getSession();
		if (session.getAttribute("login") == null) {
			return false;
		}
		if (user == null) {
			System.out.println("û�е�½");
			return false;
		} else {
			session.setAttribute("login", true);
			return true;
		}

	}

	@RequestMapping(value = "userLogin", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object userLogin(@RequestParam("username") String username,
			@RequestParam("password") String password) {

		user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user = new UserDaoImpl().findUser(user);
		if (user!= null){
		request.getSession().setAttribute("login", true);
			return true;}
		else{
			return false;}
	}

	@RequestMapping(value = "/findGoodsAll")
	public @ResponseBody
	Object goodsAll(@RequestParam("mingcheng") String mingcheng,
			@RequestParam("guige") String guige,
			@RequestParam("currentPage") int currentPage) {
		System.out.println(mingcheng + "...." + guige);
		Goods goods = new Goods();
		goods.setMingcheng(mingcheng);
		goods.setGuige(guige);
		Page page = new Page();
		page.setCurrentPage(currentPage);
		List goodslist = new GoodsDaoImpl().findGoodsByPage(page, goods);
		page = PageInterceptor.getPage();
		Map map = new HashMap<String, Object>();

		if (mingcheng != null && mingcheng.trim() != "") {
			List guigelist = new GoodsDaoImpl().findGoodsGuige(mingcheng);
			map.put("guigelist", guigelist);
		} else {
			map.put("guigelist", null);
		}
		map.put("goodslist", goodslist);
		map.put("page", page);
		return map;
	}

	@RequestMapping(value = "/addGoods", produces = "application/json;charset=utf-8")
	public @ResponseBody
	Object addGoods(@RequestParam("id") String id,
			@RequestParam("riqi") String riqi,
			@RequestParam("mingcheng") String mingcheng,
			@RequestParam("guige") String guige,
			@RequestParam("chandi") String chandi,
			@RequestParam("lianxiren") String lianxiren,
			@RequestParam("dianhua") String dianhua,
			@RequestParam("shuliang") String shuliang,
			@RequestParam("danwei") String danwei,
			@RequestParam("jinjia") String jinjia,
			@RequestParam("shoujia") String shoujia,
			@RequestParam("beizhu") String beizhu) {
		System.out.println("�յ�" + riqi);
		Goods goods = new Goods();
		if (!"0".equals(id.trim()) && id != null && !"".equals(id.trim())) {
			goods.setId(id);
		}

		try {
			if (riqi == null && !"".equals(riqi.trim()))
				goods.setRiqi(new Date(System.currentTimeMillis()));
			goods.setRiqi(new Date(Long.parseLong(riqi)));
		} catch (Exception e) {
			e.printStackTrace();
		}
		goods.setMingcheng(mingcheng);
		goods.setGuige(guige);
		goods.setChandi(chandi);
		goods.setLianxiren(lianxiren);
		goods.setDianhua(dianhua);
		if (shuliang != null && !"".equals(shuliang.trim()))
			goods.setShuliang(Float.parseFloat(shuliang));
		goods.setDanwei(danwei);
		if (jinjia != null && !"".equals(jinjia.trim()))
			goods.setJinjia(Float.parseFloat(jinjia));
		if (shoujia != null && !"".equals(shoujia.trim()))
			goods.setShoujia(Float.parseFloat(shoujia));
		goods.setBeizhu(beizhu);
		System.out.println("goods.getId=" + goods.getId() + '\n'
				+ "goods.getRiqi=" + goods.getRiqi() + '\n'
				+ "+ goods.getMingcheng=" + goods.getMingcheng() + '\n'
				+ "goods.getGuige" + goods.getGuige() + '\n'
				+ "goods.getChandi=" + goods.getChandi() + '\n'
				+ "goods.getLianxiren=" + goods.getLianxiren() + '\n'
				+ "goods.getDianhua" + goods.getDianhua() + '\n'
				+ "goods.getShuliang" + goods.getShuliang() + '\n'
				+ "goods.getDanwei=" + goods.getDanwei() + '\n'
				+ "goods.getJinjia" + goods.getJinjia() + '\n'
				+ "goods.getShoujia" + goods.getShoujia() + '\n'
				+ "goods.getBeizhu" + goods.getBeizhu());
		if (id == null) {
			new GoodsDaoImpl().addGoods(goods);
		} else {
			new GoodsDaoImpl().deleteGoodsByID(new Integer(id));
			new GoodsDaoImpl().addGoods(goods);
		}

		return 1;

	}

	@RequestMapping(value = "/deleteGoodsByIDS", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object deleteByIDS(@RequestParam("ids") String ids) {
		System.out.println(ids);
		String[] str = ids.split(" ");
		List<Integer> idList = new ArrayList<Integer>();
		for (int x = 0; x < str.length; x++) {
			idList.add(new Integer(str[x]));
		}
		new GoodsDaoImpl().deleteGoodsByIDS(idList);
		return 1;
	}

	@RequestMapping(value = "findGoodsByID", method = RequestMethod.GET)
	public @ResponseBody
	Object findGoodsByID(@RequestParam("id") Integer id) {
		System.out.println(id + "--------------------------------------");
		return new GoodsDaoImpl().findGoodsByID(id);
	}

	// @RequestMapping(value = "/deleteGoodsByIDS",)
	@RequestMapping(value = "findGoodsByName", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object findGoodsByName(@RequestParam("mingcheng") String mingcheng) {
		System.out.println(mingcheng);
		return new GoodsDaoImpl().findGoodsByName(mingcheng);
	}

	@RequestMapping(value = "deleteGoodsByID", method = RequestMethod.GET)
	public @ResponseBody
	Object viewCourse(@RequestParam("id") Integer id) {
		System.out.println(id + "--------------------------------------");
		new GoodsDaoImpl().deleteGoodsByID(id);
		return 1;
	}
	
	*/

}
