package cn.lzc.controller;

import java.io.File;
import java.sql.Timestamp;
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

import cn.lzc.DaoImpl.GameResultDaoImpl;
import cn.lzc.DaoImpl.UserDaoImpl;
import cn.lzc.model.GameResult;
import cn.lzc.model.User;
import cn.lzc.model.UserVip;
import cn.lzc.utils.GameUtils;
import cn.lzc.utils.StringUtil;

@Controller
@RequestMapping({ "/json" })
public class JsonController {

	@Autowired
	private HttpServletRequest request;

	@RequestMapping(value = { "userLogin" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object userLogin(@RequestBody String ps) {
		System.out.println(ps);

		String nativeyzm = (String) this.request.getSession().getAttribute(
				"sRand");

		Map map = StringUtil.urlToMap(ps);
		User user = new User();
		user.setUsername((String) map.get("username"));
		user.setPassword((String) map.get("userpassword"));
		User res = new UserDaoImpl().findUser(user);
		if (!nativeyzm.equals((String) map.get("yzm")))
			return Integer.valueOf(3);
		if (res == null) {
			return Integer.valueOf(1);
		}

		this.request.getSession().setAttribute("userid",
				Integer.valueOf(res.getId()));
		return Integer.valueOf(0);
	}

	@RequestMapping(value = { "userRegister" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object userRegister(@RequestBody String ps) {
		System.out.println(ps);
		Map map = StringUtil.urlToMap(ps);
		String un = String.valueOf(map.get("username")).trim();
		String fpw = String.valueOf(map.get("firstpassword"));
		String lpw = String.valueOf(map.get("lastpassword"));
		User user = new UserDaoImpl().findUserByUserName(un);
		if (StringUtil.isNumeric(un.substring(0, 1))) {
			return new String[] { "用户名首字母不能是数字" };
		}

		if (un.length() < 6 && un.length() > 16) {
			return new String[] { "用户名应该为6-16位" };
		}

		if (user != null) {
			return 1;
		}
		if (fpw.length() < 6 || fpw.length() > 16) {
			return new String[] { "密码应该为6-16位" };
		}
		if (fpw.equals(lpw) == false) {
			return 2;
		}
		user = new User();
		user.setUsername(un);
		user.setPassword(fpw);
		user.setRegdate(new Timestamp(new Date().getTime()));
		new UserDaoImpl().addUser(user);

		return Integer.valueOf(0);
	}

	@RequestMapping(value = { "changeName" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object changeName(@RequestBody String ps) {
		System.out.println(ps);
		Map map = StringUtil.urlToMap(ps);
		int id = (Integer) request.getSession().getAttribute("userid");
		User user = new UserDaoImpl().findUserByUserId(id);
		user.setNickname((String) map.get("username"));
		new UserDaoImpl().changeUserNickName(user);
		return 0;
	}

	@RequestMapping(value = { "changePassword" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object changePassword(@RequestBody String ps) {
		System.out.println(ps);

		Map map = StringUtil.urlToMap(ps);
		String pw = String.valueOf(map.get("oldpassword")).trim();
		String npw = String.valueOf(map.get("newpassword")).trim();
		String anpw = String.valueOf(map.get("againNewPassword")).trim();
		int id = 0;
		try {
			id = ((Integer) this.request.getSession().getAttribute("userid"))
					.intValue();
		} catch (Exception localException) {
		}
		if (id <= 0) {
			return new String[] { "未登录" };
		}

		User user = new UserDaoImpl().findUserByUserId(id);
		if (!pw.equals(user.getPassword())) {
			return new String[] { "旧密码错误" };
		}

		if (!npw.equals(anpw)) {
			return Integer.valueOf(1);
		}
		if ((npw.length() < 6) || (npw.length() > 16)) {
			return new String[] { "密码长度不能小于6位或者大于16位" };
		}

		user.setPassword(npw);
		new UserDaoImpl().changeUserPassWord(user);
		System.out.println(user.getUsername());

		return Integer.valueOf(0);
	}

	@RequestMapping(value = { "kaijiangjieguo" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object kaijiangjieguo(@RequestBody String ps) {
		System.out.println(ps);
		Map map=StringUtil.urlToMap(ps);
		int type=1;
		type=GameUtils.getTypeByCaiZhong((String)map.get("caizhong"));
		List<GameResult> resList =new GameResultDaoImpl().findGameResultByType(type);
		String[] s =GameUtils.getTopKaijiang(resList.get(resList.size()-2));
		//getTypeByCaiZhong
		//getTopKaijiang
//		= { "20160111-052", "20160111-051", "3", "5", "8", "9", "2" };
		return s;
	}

	@RequestMapping(value = { "lengre" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object lengre(@RequestBody String ps) {
		System.out.println(ps);

		List l = new ArrayList();
		Map map = StringUtil.urlToMap(ps);
		int zongqishu = Integer.parseInt((String) map.get("qihao"));
		int lengreqishu = Integer.parseInt((String) map.get("qishu"));
		String caizhong = (String) map.get("caizhong");
		String weizhi = (String) map.get("weizhi");
		String lr = (String) map.get("lr");
		String haoma = (String) map.get("haoma");
		int type = 1;
		type=GameUtils.getTypeByCaiZhong(caizhong);
	
		l = new GameResultDaoImpl().findGameResultByType(type);
		Map res = new HashMap();

		List StringList = GameUtils.printMapSort("01", (ArrayList) l, weizhi,
				haoma, lengreqishu, lr);
		char[] resHaoMa = GameUtils.getHaoMa("01", (ArrayList) l, weizhi,
				haoma, lengreqishu, lr);
		// String[] s = { "0123456789", "##121", "34561", "С��", "С˫",
		// "��","����" };
		res.put("shuzi", resHaoMa);
		if (zongqishu > StringList.size()) {
			zongqishu = StringList.size();
		}
		StringList = StringList.subList(0, zongqishu);
		System.out.println(StringList);
		int userid;
		try {
			userid = (Integer) request.getSession().getAttribute("userid");
			System.out.println("userid" + userid);
			StringList = StringList.subList(0, StringList.size());
			// new UserDaoImpl().findUserVipById(Integer.parseInt(userid));
			List<UserVip> UserVipList = new UserDaoImpl()
					.findUserVipByUserId(userid);
			long dangqianshijian = new Date().getTime();
			System.out.println(new Date());
			for (int i = 0; i < UserVipList.size(); i++) {
				long vipdaoqishijian = UserVipList.get(i).getDate_end()
						.getTime();
				System.out
						.println(dangqianshijian + "      " + vipdaoqishijian);
				System.out.println(dangqianshijian < vipdaoqishijian);
				if (dangqianshijian < vipdaoqishijian) {
					res.put("jieguo", StringList);
					return res;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			StringList = StringList.subList(5, StringList.size());
		}
		if (StringList.size() > 5) {
			StringList = StringList.subList(5, StringList.size());
		}
		System.out.println(StringList);

		res.put("jieguo", StringList);
		return res;
	}

	@RequestMapping(value = { "gameForm" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object gameForm(@RequestBody String ps) {
		System.out.println(ps);

		List l = new ArrayList();
		String[] s = { "0123456789", "##121", "34561", "δ�н�" };
		String[] s1 = { "0123456780", "##122", "34562", "���н�" };
		String[] s2 = { "0123456781", "##123", "34563", "δ�н�" };
		String[] s3 = { "0123456782", "##124", "34564", "���н�" };
		String[] s4 = { "0123456783", "##125", "34565", "δ�н�" };
		String[] s5 = { "0123456784", "##126", "34566", "���н�" };
		String[] s6 = { "0123456785", "##127", "34567", "���н�" };
		String[] s7 = { "0123456786", "##128", "34568", "δ�н�" };

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

	@RequestMapping({ "/upload.do" })
	@ResponseBody
	public Object upload(
			@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request, ModelMap model) {
		System.out.println("��ʼ");
		String path = request.getSession().getServletContext()
				.getRealPath("upload");
		String fileName = file.getOriginalFilename();
		System.out.println(path);
		File targetFile = new File(path, fileName);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("fileUrl", request.getContextPath() + "/upload/"
				+ fileName);

		Map m = new HashMap();
		m.put("data", "���ﷵ��path·���е��ļ�����");

		return m;
	}

	@RequestMapping(value = { "managefinduser" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object usermanager(@RequestBody String ps) {
		System.out.println(ps);

		Map map = StringUtil.urlToMap(ps);
		String username = (String) map.get("username");
		List l = new ArrayList();
		if (!username.trim().equals("")) {
			try {
				User user = new UserDaoImpl().findUserByUserName(username);
				
				UserVip uservip = new UserVip();
				
				uservip.setUser_id(user.getId());
				uservip.setType(1);
				uservip = new UserDaoImpl().findUserVipByIdType(uservip);
				System.out.println(uservip);
				if(uservip!=null){
				String[] str = { user.getId() + "", user.getUsername(),
						user.getPassword(),
						(user.getRegdate() + "").split(" ")[0],
						(uservip.getDate_start() + "").split(" ")[0],
						(uservip.getDate_end() + "").split(" ")[0] };
				l.add(str);
				}else{
					String[] str = { user.getId() + "", user.getUsername(),
							user.getPassword(),
							(user.getRegdate() + "").split(" ")[0],
							"",
							""};
					l.add(str);
				}
				
				return l;
			} catch (Exception localException) {
			}
		}
		Timestamp date_start = new Timestamp(new Long(
				(String) map.get("startdate")).longValue());
		Timestamp date_end = new Timestamp(
				new Long((String) map.get("enddate")).longValue());
		UserVip uservip = new UserVip();
		uservip.setDate_start(date_start);
		uservip.setDate_end(date_end);
		List<UserVip> userviplist = new UserDaoImpl()
				.findUserVipByPayDate(uservip);
		for (int i = 0; i < userviplist.size(); i++) {
			UserVip uv = userviplist.get(i);
			User us = new UserDaoImpl().findUserByUserId(uv.getUser_id());
			String[] str = { String.valueOf(us.getId()), us.getUsername(),
					us.getPassword(), (us.getRegdate() + "").split(" ")[0],
					(uv.getDate_start() + "").split(" ")[0],
					(uv.getDate_end() + "").split(" ")[0] };
			// String[] str = { "1", "xiaoA", "12345", "1999-9-9", "2015-1-1",
			// "2016-1-1" };
			l.add(str);
		}

		// l.add(new UserDaoImpl().findUserVipByPayDate(uservip));

		return l;
	}

	@RequestMapping(value = { "userpayvip" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object userpayvip(@RequestBody String ps) {
		System.out.println(ps);
		try {
			Map map = StringUtil.urlToMap(ps);
			int user_id = Integer.parseInt((String) map.get("user_id"));
			int type = Integer.parseInt((String) map.get("type"));
			UserVip uservip = new UserVip();
			uservip.setUser_id(user_id);
			uservip.setType(type);
			return new UserDaoImpl().findUserVipByIdType(uservip);
		} catch (Exception localException) {
		}
		return null;
	}

	@RequestMapping(value = { "manageupdateuser" }, produces = { "application/json; charset=utf-8" })
	@ResponseBody
	public Object manageupdateuser(@RequestBody String ps) {
		System.out.println(ps);
		Map map = StringUtil.urlToMap(ps);

		String password = (String) map.get("password");
		int user_id = Integer.parseInt((String) map.get("user_id"));
		int type = Integer.parseInt((String) map.get("fufei"));
		UserVip uservip = new UserVip();
		uservip.setUser_id(user_id);
		uservip.setType(type);
		try {
			long fufeiriqi = new Long((String) map.get("fufeiriqi"))
					.longValue();
			long daoqiriqi = new Long((String) map.get("daoqiriqi"))
					.longValue();
			Timestamp date_start = new Timestamp(fufeiriqi);
			Timestamp date_end = new Timestamp(daoqiriqi);
			uservip.setDate_start(date_start);
			uservip.setDate_end(date_end);
		} catch (Exception localException1) {
		}
		User user = new User();
		user.setId(1);
		user.setPassword("root2");
		new UserDaoImpl().changeUserPassWord(user);
		try {
			uservip.setId(new UserDaoImpl().findUserVipByIdType(uservip)
					.getId());
			new UserDaoImpl().updateUserVip(uservip);
		} catch (Exception e) {
			new UserDaoImpl().addUserVip(uservip);
		}

		return Integer.valueOf(0);
	}
}