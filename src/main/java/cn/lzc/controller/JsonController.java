package cn.lzc.controller;

import java.io.File;
import java.util.ArrayList;
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

@Controller
@RequestMapping("/json")
public class JsonController {

	
	@Autowired
	private HttpServletRequest request;


	
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
	@RequestMapping(value = "kaijiangjieguo", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object kaijiangjieguo(@RequestBody String ps) {
		System.out.println(ps);//客户端发来的开奖期数 请求参数 请根据请求参数返回开奖信息
		/**业务逻辑部分
		 * 失败返回1
		 * 
		 * 成功返回开奖结果的字符串数组
		 * s字符串数组  数组的索引0指定下一期开奖日期及期数  数组的索引1是本期开奖时间及期数，后面是本期开奖结果
		 */
		String [] s ={"20160111-052","20160111-051","3","5","8","9","2"};
		return s;
	}
	@RequestMapping(value = "lengre", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object lengre(@RequestBody String ps) {
		System.out.println(ps);//用户发送的查询参数 转换成 Map或JSON
		//查询条件的意义 wanfa代表玩法 weizhi代表位置 haoma代表号码 qihao代表期号   starttime代表开始时间 endtime代表结束时间  caizhong代表彩票的种类如江西时时彩黑龙江时时彩 
		
		/**业务逻辑部分
		 * 用户参数错误返回1
		 * 成功的话返回一个 list 集合  集合中的元素是Sting数组 如下
		 */
		List l =new ArrayList();
		String [] s = {"0123456789","##121","34561","小单","小双","龙","组六"};
		String [] s1 ={"0123456780","##122","34562","小单","小双","龙","组六"};
		String [] s2 ={"0123456781","##123","34563","小单","小双","龙","组六"};
		String [] s3 ={"0123456782","##124","34564","小单","小双","龙","组六"};
		String [] s4 ={"0123456783","##125","34565","小单","小双","龙","组六"};
		String [] s5 ={"0123456784","##126","34566","小单","小双","龙","组六"};
		String [] s6 ={"0123456785","##127","34567","小单","小双","龙","组六"};
		String [] s7 ={"0123456786","##128","34568","小单","小双","龙","组六"};
		
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
		System.out.println(ps);//用户发送的登陆请求参数 用户名,密码,验证码
		/**业务逻辑部分
		 * 成功返回0
		 * 用户修改失败返回1
		 * 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		 */
		List l =new ArrayList();
		String [] s = {"0123456789","##121","34561","未中奖"};
		String [] s1 ={"0123456780","##122","34562","已中奖"};
		String [] s2 ={"0123456781","##123","34563","未中奖"};
		String [] s3 ={"0123456782","##124","34564","已中奖"};
		String [] s4 ={"0123456783","##125","34565","未中奖"};
		String [] s5 ={"0123456784","##126","34566","已中奖"};
		String [] s6 ={"0123456785","##127","34567","已中奖"};
		String [] s7 ={"0123456786","##128","34568","未中奖"};
		
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
    public @ResponseBody Object upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, ModelMap model) {  
  
        System.out.println("开始");  
        String path = request.getSession().getServletContext().getRealPath("upload");  
        String fileName = file.getOriginalFilename();  
        System.out.println(path);  
        File targetFile = new File(path, fileName);  
        if(!targetFile.exists()){  
            targetFile.mkdirs();  
        }  
        //保存  
        try {  
            file.transferTo(targetFile);  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        model.addAttribute("fileUrl", request.getContextPath()+"/upload/"+fileName);  
        
        
        Map m=new HashMap();
        		m.put("data", "这里返回path路径中的文件内容"); //data 是文件内容  从文件中读取文件内容 处理后返回即可
        		
        return m;  
    }  
	
	@RequestMapping(value = "managefinduser", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object usermanager(@RequestBody String ps) {
		System.out.println(ps);//管理员发送的查询参数用户名,注册时间-注册时间
		/**业务逻辑部分
		 * 成功返回一个list集合 集合当中使用map集合如下面例子
		 * 查询失败返回1
		 * 
		 */
		
		String [] str={"1","xiaoA","1999-9-9","2008-08-08","2015-1-1"};
		String [] str1={"2","xiaoB","1999-9-9","2008-08-08","2015-1-1"};
		String [] str2={"3","xiaoC","1999-9-9","2008-08-08","2015-1-1"};
		String [] str3={"4","xiaoD","1999-9-9","2008-08-08","2015-1-1"};
		String [] str4={"5","xiaoE","1999-9-9","2008-08-08","2015-1-1"};
		String [] str5={"6","xiaoF","1999-9-9","2008-08-08","2015-1-1"};
		String [] str6={"7","xiaoG","1999-9-9","2008-08-08","2015-1-1"};
		String [] str7={"8","xiaoH","1999-9-9","2008-08-08","2015-1-1"};
		String [] str8={"9","xiaoI","1999-9-9","2008-08-08","2015-1-1"};
		String [] str9={"10","xiaoJ","1999-9-9","2008-08-08","2015-1-1"};
		
		List l =new ArrayList();
		l.add(str);
		l.add(str1);
		l.add(str2);
		l.add(str3);
		l.add(str4);
		l.add(str5);
		l.add(str6);
		l.add(str7);
		l.add(str8);
		l.add(str9);
		//String [] s ={"aa","bb","好了"};
		return l;
	}
	
	@RequestMapping(value = "manageupdateuser", produces = "application/json; charset=utf-8")
	public @ResponseBody
	Object manageupdateuser(@RequestBody String ps) {
		System.out.println(ps);//用户发送的登陆请求参数 用户名,密码,验证码
		/**业务逻辑部分 接受管理员传过来的参数  密码  fufeiriqi=付费日期 daoqiriqi=到期日期 fufei=付费 
		 * 进行业务逻辑处理
		 * 成功返回0
		 * 用户修改失败返回1
		 * 如有其他情况可以返回任意参数 但不可以是字符串 可以是字符串数组
		 */
		//String [] s ={"aa","bb","好了"};
		return 0;
	}
	

}
