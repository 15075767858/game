package cn.lzc.utils;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * �ַ�����
 * 
 * @author
 * 
 */
public class StringUtil {

	/**
	 * �ж��Ƿ��ǿ�
	 * 
	 * @param str
	 * @return
	 */
	public static Map urlToMap(String strpar) {
		Map map = new HashMap();
		
		String[] pars =strpar.split("&");
		for(int i=0;i<pars.length;i++){
			String[] par=pars[i].split("=");
			try {
				map.put(par[0], par[1]);				
			} catch (Exception e) {
				map.put(par[0], "");	
			}
		}
		return map;
	}

	public static boolean isEmpty(String str) {
		if ("".equals(str) || str == null) {
			return true;
		} else {
			return false;
		}
	}
	public static boolean isNumeric(String str){ 
		   Pattern pattern = Pattern.compile("[0-9]*"); 
		   Matcher isNum = pattern.matcher(str);
		   if( !isNum.matches() ){
		       return false; 
		   } 
		   return true; 
		}
	/**
	 * �ж��Ƿ��ǿ�
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNotEmpty(String str) {
		if (!"".equals(str) && str != null) {
			return true;
		} else {
			return false;
		}
	}
}
