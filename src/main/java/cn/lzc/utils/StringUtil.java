package cn.lzc.utils;

import java.util.HashMap;
import java.util.Map;

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
