package cn.lzc.utils;

import cn.lzc.model.GameResult;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.rmi.CORBA.Util;

import org.apache.commons.lang.ArrayUtils;
import org.springframework.util.comparator.InvertibleComparator;

public class GameUtils {
	static int fengeflag = 0;

	public static List printMap(String haoMap, String qiHao, String haoMa,
			String clientweizhi, char[] numHot, String clientHaoMa) {
		String iszhong = "未中奖！";

		List res = new ArrayList();
		while (haoMa.length() < 5) {
			haoMa = "0" + haoMa;
		}

		String weizhi = "wqbsg";
		// System.out.println("haoMa"+haoMa);
		char wan = haoMa.charAt(0);
		char qian = haoMa.charAt(1);
		char bai = haoMa.charAt(2);
		char shi = haoMa.charAt(3);
		char ge = haoMa.charAt(4);

		res.add(qiHao);
		res.add(haoMa);

		char[] haoma = numHot;
		boolean flag = false;
		// System.out.println("-" + haoMa + "-");
		for (int i = 0; i < haoma.length; i++) {
			// System.out.print(clientHaoMa.indexOf(numHot[i]));
			if (clientHaoMa.indexOf(numHot[i]) >= 0) {
				if (wan != haoma[i]) {
					wan = '*';
				}
				if (qian != haoma[i]) {
					qian = '*';
				}
				if (bai != haoma[i]) {
					bai = '*';
				}
				if (shi != haoma[i]) {
					shi = '*';
				}
				if (ge != haoma[i]) {
					ge = '*';
				}
				if (clientweizhi.indexOf("w") < 0) {
					wan = ' ';
				}
				if (clientweizhi.indexOf("q") < 0) {
					qian = ' ';
				}
				if (clientweizhi.indexOf("b") < 0) {
					bai = ' ';
				}
				if (clientweizhi.indexOf("s") < 0) {
					shi = ' ';
				}
				if (clientweizhi.indexOf("g") < 0) {
					ge = ' ';
				}

				// System.out.print("  " + wan + " " + qian + " " + bai + " " +
				// shi + " " + ge + "   ");
				res.add(String.valueOf(wan) + "" + String.valueOf(qian) + ""
						+ String.valueOf(bai) + "" + String.valueOf(shi) + ""
						+ String.valueOf(ge));

				// System.out.print("+" + wan + qian + bai + shi + ge + "+");
				/*
				 * fengeflag++; if (i == haoma.length - 1 && fengeflag % 70 !=
				 * 0) { System.out.println(" "); }
				 * 
				 * if (fengeflag % 70 == 0) { System.out.println(" ");
				 * System.out
				 * .println("沙和尚计划群146431310------------------------------------"
				 * +
				 * "----------------------------------------------------------------"
				 * ); }
				 */
				wan = haoMa.charAt(0);
				qian = haoMa.charAt(1);
				bai = haoMa.charAt(2);
				shi = haoMa.charAt(3);
				ge = haoMa.charAt(4);
			}
		}
		res.add(getWeiZhi(haoMa));
		return res;
	}

	public static String getWeiZhi(String haoMa) {
		char[] wei3 = haoMa.substring(2, haoMa.length()).toCharArray();
		if ((wei3[0] == wei3[1]) && (wei3[1] == wei3[2]))
			return "豹子";
		if ((wei3[0] == wei3[1]) || (wei3[1] == wei3[2])) {
			return "组6";
		}
		return "组3";
	}

	public static int[] numHot(List<String> qiHaos, List<String> haoMas) {
		int zeroFlag = 0;
		int oneFlag = 0;
		int twoFlag = 0;
		int threeFlag = 0;
		int fourFlag = 0;
		int fiveFlag = 0;
		int sixFlag = 0;
		int sevenFlag = 0;
		int eightFlag = 0;
		int nineFlag = 0;

		int qishuflag = 0;
		for (int i = qiHaos.size() - 1; (i >= 0) && (qishuflag < 5); i--) {
			qishuflag++;
			String qihao = (String) qiHaos.get(i);
			String haoma = (String) haoMas.get(i);
			while (haoma.length() < 5) {
				haoma = "0" + haoma;
			}
			char[] haoma_dange = haoma.toCharArray();
			for (int j = 0; j < haoma_dange.length; j++) {
				switch (haoma_dange[j]) {
				case '0':
					zeroFlag++;
					break;
				case '1':
					oneFlag++;
					break;
				case '2':
					twoFlag++;
					break;
				case '3':
					threeFlag++;
					break;
				case '4':
					fourFlag++;
					break;
				case '5':
					fiveFlag++;
					break;
				case '6':
					sixFlag++;
					break;
				case '7':
					sevenFlag++;
					break;
				case '8':
					eightFlag++;
					break;
				case '9':
					nineFlag++;
				}

			}

		}

		zeroFlag = zeroFlag * 10 + 0;
		oneFlag = oneFlag * 10 + 1;
		twoFlag = twoFlag * 10 + 2;
		threeFlag = threeFlag * 10 + 3;
		fourFlag = fourFlag * 10 + 4;
		fiveFlag = fiveFlag * 10 + 5;
		sixFlag = sixFlag * 10 + 6;
		sevenFlag = sevenFlag * 10 + 7;
		eightFlag = eightFlag * 10 + 8;
		nineFlag = nineFlag * 10 + 9;

		char shiwei = ((String) qiHaos.get(qiHaos.size() - 1)).charAt(3);
		char gewei = ((String) qiHaos.get(qiHaos.size() - 1)).charAt(4);

		int[] hotNumSort = { zeroFlag, oneFlag, twoFlag, threeFlag, fourFlag,
				fiveFlag, sixFlag, sevenFlag, eightFlag, nineFlag };
		Arrays.sort(hotNumSort);

		for (int k = 0; k < hotNumSort.length; k++) {
			int num = hotNumSort[k];
			System.out.println(num % 10 + "出现的次数是：" + num / 10 + "     ");
		}
		return hotNumSort;
	}

	public static List printMapSort(String haoMap,
			ArrayList<GameResult> gameResult, String clientWeizhi,
			String clientHaoMa,int lengreqishu,String lr) {

		System.out.println(lengreqishu);
		List qiHaos = new ArrayList();
		List haoMas = new ArrayList();
		for (int i = 0; i < gameResult.size(); i++) {
			qiHaos.add(((GameResult) gameResult.get(i)).getTime() + "");
			haoMas.add(((GameResult) gameResult.get(i)).getData().replaceAll(
					",", "")
					+ "");
		}
		List l = new ArrayList();
		// System.out.println(haoMap + "---------" + qiHaos + "---" + haoMas);
		
		char[] numHot = intToChar(numHot(qiHaos.subList(0, lengreqishu), haoMas.subList(0, lengreqishu)));
		
		if(lr.equals("redaoleng")){
			ArrayUtils.reverse(numHot);
		}
		System.out.println(numHot);
		for (int i = qiHaos.size() - 1; i >= 0; i--) {
			l.add(printMap(haoMap, (String) qiHaos.get(i),
					(String) haoMas.get(i), clientWeizhi, numHot, clientHaoMa));
		}

		return l;
	}

	public static char[] getHaoMa(String haoMap,
			ArrayList<GameResult> gameResult, String clientWeizhi,
			String clientHaoMa,int lengreqishu,String lr){
		List qiHaos = new ArrayList();
		List haoMas = new ArrayList();
		for (int i = 0; i < gameResult.size(); i++) {
			qiHaos.add(((GameResult) gameResult.get(i)).getTime() + "");
			haoMas.add(((GameResult) gameResult.get(i)).getData().replaceAll(
					",", "")
					+ "");
		}
		
		char[] numHot = intToChar(numHot(qiHaos.subList(0, lengreqishu), haoMas.subList(0, lengreqishu)));
		
		if(lr.equals("redaoleng")){
			ArrayUtils.reverse(numHot);
		}
		
		return numHot;
	}
	
	public static char[] intToChar(int[] numArray) {
		char[] charArray = new char[numArray.length];
		for (int i = 0; i < numArray.length; i++) {
			charArray[i] = (char) (numArray[i] % 10 + 48);
		}

		return charArray;
	}
}