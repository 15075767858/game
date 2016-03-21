package cn.lzc.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import org.junit.Test;

public class GameUtil {
	
	static int fengeflag=0;
	
/*	public static void main(String[] args) {
		   File houfile = new File("bomao_wanfaye.txt");
		   String qiHao;
		   String haoMa;
		   try{
			   if(houfile.isFile()&&houfile.exists()){
				      InputStreamReader readHou = new InputStreamReader(new FileInputStream(houfile));
				      BufferedReader bufferedReaderHou = new BufferedReader(readHou);
				      String jihua = null;
				      String number=""; 
				      int x=0;
				      String flag="0123456789";
				      String weizhi="wqbsg";
				      int jishu=0;
				      ArrayList<String> qiHaos = new ArrayList<String>();
				      ArrayList<String> haoMas = new ArrayList<String>();				     
				      
				      while((jihua=bufferedReaderHou.readLine())!=null){
				    	  String str[]=jihua.split("\\s+");
				    	  qiHaos.add(str[0]);
				    	  haoMas.add(str[2]);
				    	
				    	  //System.out.println(i+"  "+qiHaos[i]);
				    	  //printMap(flag,qiHao,haoMa,weizhi);				    	 				    					    	  
				      }				    
				      bufferedReaderHou.close();
				      printMap(flag,qiHaos,haoMas,weizhi);
				     // printMap1(flag,qiHaos,haoMas,weizhi);
				   }else{
					   System.out.println("文件不存在！！");
				   }
		   }catch(Exception e) {
				e.printStackTrace();
			   
		   }
		  
	}*/
		
	@Test
	public void test(){
		String [] resList;
		
		printMap("0123456789","3456789","12389","123");
	}
	
	
    public static void printMap(String haoMap,String qiHao,String haoMa,String weizhi){
    /**
     * qiHao 对应期号
     * haoMap 对应号码
     * haoMa 是开奖号码 
     * weizhi 对应位置
     */
    	String iszhong="未中奖！";
        while(haoMa.length()<5){
   	  	  haoMa="0"+haoMa;
   	    }
   	    char wan=haoMa.charAt(0);
   	    char qian=haoMa.charAt(1);
   	    char bai=haoMa.charAt(2);
   	    char shi=haoMa.charAt(3);
   	    char ge=haoMa.charAt(4);
    	char haoma[]=haoMap.toCharArray();//分割的号码
    	boolean flag=false;
    	for(int i=0;i<haoma.length;i++){
    		
    		if(wan!=haoma[i]){
    			wan='*';
    		}
    		if(qian!=haoma[i]){
    			qian='*';
    		}
    		if(bai!=haoma[i]){
    			bai='*';
    		}
    		if(shi!=haoma[i]){
    			shi='*';
    		}
    		if(ge!=haoma[i]){
    			ge='*';
    		}
    		if(i==0){
    			System.out.print(qiHao+" 期     "+haoMa+"  ");
    		}
    		System.out.print("  "+wan+" "+qian+" "+bai+" "+shi+" "+ge+"      ");
    		fengeflag++;
    		if(i==haoma.length-1&&fengeflag%70!=0){
    			System.out.println(" ");
    		}
    			
    		if(fengeflag%70==0){
    			System.out.println(" ");
    			System.out.println("沙和尚计划群：146431310------------------------------------"
    					+ "----------------------------------------------------------------");
    		}
    		wan=haoMa.charAt(0);
       	    qian=haoMa.charAt(1);
       	    bai=haoMa.charAt(2);
       	    shi=haoMa.charAt(3);
       	    ge=haoMa.charAt(4);
    	}
    }
    public static void getFenBuList(String haoMap,ArrayList<String> qiHaos,ArrayList<String> haoMas,String weizhi){
    	   
    	   
    	 for(int i = qiHaos.size()-1;i >=0; i --){
             //System.out.println(qiHaos.get(i));
             printMap(haoMap,qiHaos.get(i),haoMas.get(i),weizhi);
         }
    }
    public static void getFenBuListRes(String haoMap,ArrayList<String> qiHaos,ArrayList<String> haoMas,String weizhi){//倒叙
 	   
   	 for(int i = 0;i<qiHaos.size(); i ++){
            //System.out.println(qiHaos.get(i));
            printMap(haoMap,qiHaos.get(i),haoMas.get(i),weizhi);
        }


   }
   
}

