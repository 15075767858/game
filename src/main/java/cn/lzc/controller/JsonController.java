package cn.lzc.controller;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.lzc.DaoImpl.UserDaoImpl;
import cn.lzc.model.User;
import cn.lzc.model.UserVip;
import cn.lzc.utils.StringUtil;

@Controller
@RequestMapping("/json")
public class JsonController {

	@Autowired
	private HttpServletRequest request;

	@RequestMapping(value = "userLogin", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object userLogin(@RequestBody String ps) {
		System.out.println(ps);// 用户发送的登陆请求参数 用户名,密码,验证码

		String nativeyzm = (String) request.getSession().getAttribute("sRand"); // session中的验证码

		Map map = StringUtil.urlToMap(ps);
		User user = new User();
		user.setUsername((String) map.get("username"));
		user.setPassword((String) map.get("userpassword"));
		User res = new UserDaoImpl().findUser(user);
		if (!((String) nativeyzm).equals((String) map.get("yzm")))
			return 3;
		if (res == null)
			return 1;
		/**
		 * 业务逻辑部分 校验 成功返回0 用户不存在返回1 密码错误返回2 验证码错误返回3 如有其他情况可以返回任意参数 但不可以是字符串
		 * 可以是字符串数组
		 */
		request.getSession().setAttribute("userid", res.getId());
		return 0;
	}

	@RequestMapping(value = "userRegister", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object userRegister(@RequestBody String ps) {
		System.out.println(ps);// 用户发送的登陆请求参数 用户名,密码,验证码
		Map map = StringUtil.urlToMap(ps);
		String un = (String) map.get("username");
		String fpw = (String) map.get("firstpassword");
		String lpw = (String) map.get("lastpassword");

		User user = new UserDaoImpl().findUserByUserName((String) map
				.get("username"));
		if (user != null) {
			return 1;
		}
		if (!fpw.equals(lpw)) {
			return 2;
		}
		user = new User();
		user.setUsername(un);
		user.setPassword(fpw);
		user.setRegdate(new Timestamp(new Date().getTime()));
		new UserDaoImpl().addUser(user);
		/**
		 * 业务逻辑部分 校验 成功返回0 用户存在返回1 两次密码不一致2 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		 */
		return 0;
	}

	@RequestMapping(value = "changeName", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object changeName(@RequestBody String ps) {
		System.out.println(ps);// 用户发送的登陆请求参数 用户名,密码,验证码
		/**
		 * 业务逻辑部分 成功返回0 用户修改失败返回1 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		 */
		// String [] s ={"aa","bb","好了"};
		return 0;
	}

	@RequestMapping(value = "changePassword", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object changePassword(@RequestBody String ps) {
		System.out.println(ps);// 用户发送的登陆请求参数 用户名,密码,验证码

		Map map = StringUtil.urlToMap(ps);
		String pw = (String) map.get("oldpassword");
		String npw = (String) map.get("newpassword");
		String anpw = (String) map.get("againNewPassword");
		int id = 0;
		try {
			id = (Integer) request.getSession().getAttribute("userid");

		} catch (Exception e) {
			// TODO: handle exception
		}
		if (!(id > 0)) {
			return new String[] { "请先登录" };
		}

		User user = new UserDaoImpl().findUserByUserId(id);
		if (!pw.equals(user.getPassword())) {
			return new String[] { "旧密码错误" };
		}

		if (!npw.equals(anpw)) {
			return 1;
		}
		if (npw.length() < 6 || npw.length() > 16) {
			return new String[] { "密码不符合规则" };
		}

		new UserDaoImpl().changeUserPassWord(user);
		System.out.println(user.getUsername());
		// User user=new
		// UserDaoImpl().findUserByUserName((String)map.get("username"));
		/**
		 * 业务逻辑部分 成功返回0 用户修改失败返回1 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		 */
		// String [] s ={"aa","bb","好了"};
		return 0;
	}

	@RequestMapping(value = "kaijiangjieguo", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object kaijiangjieguo(@RequestBody String ps) {
		System.out.println(ps);// 客户端发来的开奖期数 请求参数 请根据请求参数返回开奖信息
		/**
		 * 业务逻辑部分 失败返回1
		 * 
		 * 成功返回开奖结果的字符串数组 s字符串数组 数组的索引0指定下一期开奖日期及期数 数组的索引1是本期开奖时间及期数，后面是本期开奖结果
		 */
		String[] s = { "20160111-052", "20160111-051", "3", "5", "8", "9", "2" };
		return s;
	}

	@RequestMapping(value = "lengre", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object lengre(@RequestBody String ps) {
		System.out.println(ps);// 用户发送的查询参数 转换成 Map或JSON
		// 查询条件的意义 wanfa代表玩法 weizhi代表位置 haoma代表号码 qihao代表期号 starttime代表开始时间
		// endtime代表结束时间 caizhong代表彩票的种类如江西时时彩黑龙江时时彩

		/**
		 * 业务逻辑部分 用户参数错误返回1 成功的话返回一个 list 集合 集合中的元素是Sting数组 如下
		 */
		List l = new ArrayList();
		String[] s = { "0123456789", "##121", "34561", "小单", "小双", "龙", "组六" };
		String[] s1 = { "0123456780", "##122", "34562", "小单", "小双", "龙", "组六" };
		String[] s2 = { "0123456781", "##123", "34563", "小单", "小双", "龙", "组六" };
		String[] s3 = { "0123456782", "##124", "34564", "小单", "小双", "龙", "组六" };
		String[] s4 = { "0123456783", "##125", "34565", "小单", "小双", "龙", "组六" };
		String[] s5 = { "0123456784", "##126", "34566", "小单", "小双", "龙", "组六" };
		String[] s6 = { "0123456785", "##127", "34567", "小单", "小双", "龙", "组六" };
		String[] s7 = { "0123456786", "##128", "34568", "小单", "小双", "龙", "组六" };

		l.add(s);
		l.add(s1);
		l.add(s2);
		l.add(s3);
		l.add(s4);
		l.add(s5);
		l.add(s6);
		l.add(s7);
		return l;
	}

	@RequestMapping(value = "gameForm", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object gameForm(@RequestBody String ps) {
		System.out.println(ps);// 用户发送的登陆请求参数 用户名,密码,验证码
		/**
		 * 业务逻辑部分 成功返回0 用户修改失败返回1 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		 */
		List l = new ArrayList();
		String[] s = { "0123456789", "##121", "34561", "未中奖" };
		String[] s1 = { "0123456780", "##122", "34562", "已中奖" };
		String[] s2 = { "0123456781", "##123", "34563", "未中奖" };
		String[] s3 = { "0123456782", "##124", "34564", "已中奖" };
		String[] s4 = { "0123456783", "##125", "34565", "未中奖" };
		String[] s5 = { "0123456784", "##126", "34566", "已中奖" };
		String[] s6 = { "0123456785", "##127", "34567", "已中奖" };
		String[] s7 = { "0123456786", "##128", "34568", "未中奖" };

		l.add(s);
		l.add(s1);
		l.add(s2);
		l.add(s3);
		l.add(s4);
		l.add(s5);
		l.add(s6);
		l.add(s7);
		return l;
	}

	@RequestMapping(value = "/upload.do")
	public @ResponseBody
	Object upload(
			@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request, ModelMap model) {

		System.out.println("开始");
		String path = request.getSession().getServletContext()
				.getRealPath("upload");
		String fileName = file.getOriginalFilename();
		System.out.println(path);
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		// 保存
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("fileUrl", request.getContextPath() + "/upload/"
				+ fileName);

		Map m = new HashMap();
		m.put("data", "这里返回path路径中的文件内容"); // data 是文件内容 从文件中读取文件内容 处理后返回即可

		return m;
	}

	@RequestMapping(value = "managefinduser", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object usermanager(@RequestBody String ps) {
		System.out.println(ps);// 管理员发送的查询参数用户名,注册时间-注册时间
		/**
		 * 业务逻辑部分 成功返回一个list集合 集合当中使用map集合如下面例子 查询失败返回1 13349032592
		 */
		Map map = StringUtil.urlToMap(ps);
		String username = (String) map.get("username");
		List l = new ArrayList();
		if (!username.trim().equals("")) {
			try {
				User user = new UserDaoImpl().findUserByUserName(username);
				System.out.println(user);
				UserVip uservip = new UserVip();
				uservip.setUser_id(user.getId());
				uservip.setType(1);
				uservip=new UserDaoImpl().findUserVipByIdType(uservip);
				String[] str = { user.getId()+"",user.getUsername(), user.getPassword(),  user.getRegdate().toLocaleString().split(" ")[0],uservip.getDate_start().toLocaleString().split(" ")[0],uservip.getDate_end().toLocaleString().split(" ")[0]};
				l.add(str);
				return l;
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

		Timestamp date_start = new Timestamp(new Long(
				(String) map.get("startdate")));
		Timestamp date_end = new Timestamp(
				new Long((String) map.get("enddate")));
		UserVip uservip = new UserVip();
		uservip.setDate_start(date_start);
		uservip.setDate_end(date_end);
		System.out.println(new UserDaoImpl().findUserVipByPayDate(uservip));
		String[] str = { "1", "xiaoA", "12345", "1999-9-9", "2015-1-1",
				"2016-1-1" };
		/*
		 * String[] str1 = { "2", "xiaoB", "1999-9-9", "2008-08-08", "2015-1-1"
		 * }; String[] str2 = { "3", "xiaoC", "1999-9-9", "2008-08-08",
		 * "2015-1-1" }; String[] str3 = { "4", "xiaoD", "1999-9-9",
		 * "2008-08-08", "2015-1-1" }; String[] str4 = { "5", "xiaoE",
		 * "1999-9-9", "2008-08-08", "2015-1-1" };
		 */

		l.add(str);
		/*
		 * l.add(str1); l.add(str2); l.add(str3); l.add(str4);
		 */
		// String [] s ={"aa","bb","好了"};
		return l;
	}

	@RequestMapping(value = "userpayvip", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object userpayvip(@RequestBody String ps) {
		System.out.println(ps);// 管理员发送的查询参数用户名,注册时间-注册时间
		/**
		 * 业务逻辑部分 成功返回一个list集合 集合当中使用map集合如下面例子 查询失败返回1 13349032592
		 */
		try {

			Map map = StringUtil.urlToMap(ps);
			int user_id = Integer.parseInt((String) map.get("user_id"));
			int type = Integer.parseInt((String) map.get("type"));
			UserVip uservip = new UserVip();
			uservip.setUser_id(user_id);
			uservip.setType(type);
			return new UserDaoImpl().findUserVipByIdType(uservip);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		/*
		 * Timestamp date_start = new Timestamp(new Long( (String)
		 * map.get("startdate"))); Timestamp date_end = new Timestamp( new
		 * Long((String) map.get("enddate"))); UserVip uservip = new UserVip();
		 * uservip.setDate_start(date_start); uservip.setDate_end(date_end);
		 * System.out.println(new UserDaoImpl().findUserVipByPayDate(uservip));
		 * String[] str = { "1", "xiaoA", "12345", "1999-9-9", "2015-1-1",
		 * "2016-1-1" };
		 */
		/*
		 * l.add(str1); l.add(str2); l.add(str3); l.add(str4);
		 */
		// return new String[]{"2015-6-8","2015-8-9"};
	}

	
	
	@RequestMapping(value = "manageupdateuser", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object manageupdateuser(@RequestBody String ps) {
		System.out.println(ps);// 用户发送的登陆请求参数 用户名,密码,验证码
		Map map = StringUtil.urlToMap(ps);
		
		String password = (String) map.get("password");
		int user_id = Integer.parseInt((String) map.get("user_id"));
		int type = Integer.parseInt((String) map.get("fufei"));
		UserVip uservip = new UserVip();
		uservip.setUser_id(user_id);
		uservip.setType(type);
		try {
			long fufeiriqi = new Long((String) map.get("fufeiriqi"));
			long daoqiriqi = new Long((String) map.get("daoqiriqi"));
			Timestamp date_start = new Timestamp(fufeiriqi);
			Timestamp date_end = new Timestamp(daoqiriqi);
			uservip.setDate_start(date_start);
			uservip.setDate_end(date_end);
		} catch (Exception e) {
			// TODO: handle exception
		}
		User user = new User();
		user.setId(1);
		user.setPassword("root2");
		new UserDaoImpl().changeUserPassWord(user);
		try {
			uservip.setId(new UserDaoImpl().findUserVipByIdType(uservip).getId());
			new UserDaoImpl().updateUserVip(uservip);
		} catch (Exception e) {
			new UserDaoImpl().addUserVip(uservip);
		}
		// System.out.println(fufeiriqi);
		/**
		 * 业务逻辑部分 接受管理员传过来的参数 密码 fufeiriqi=付费日期 daoqiriqi=到期日期 fufei=付费 进行业务逻辑处理
		 * 成功返回0 用户修改失败返回1 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		 */
		// String [] s ={"aa","bb","好了"};
		return 0;
	}

}
