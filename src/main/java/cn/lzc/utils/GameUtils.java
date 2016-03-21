package cn.lzc.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;


public class GameUtils {


	static int fengeflag=0;
	
	  
	
	public static void main(String[] args) {
		   File houfile = new File("F://bomao_lishiye.txt");
		   String qiHao;
		   String haoMa;
		   try{
			   if(houfile.isFile()&&houfile.exists()){
				      InputStreamReader readHou = new InputStreamReader(new FileInputStream(houfile));
				      BufferedReader bufferedReaderHou = new BufferedReader(readHou);
				      String jihua = null;
				      String number="123"; 
				      int x=0;
				      String flag="01";
				      String weizhi="wqbsg";
				      int jishu=0;
				      ArrayList<String> qiHaos = new ArrayList<String>();
				      ArrayList<String> haoMas = new ArrayList<String>();
				      while((jihua=bufferedReaderHou.readLine())!=null){
				    	  String str[]=jihua.split("\\s+");
				    	  qiHaos.add(str[0]);
				    	  haoMas.add(str[1]);
				    	  //System.out.println(i+"  "+qiHaos[i]);
				    	  //printMap(flag,qiHao,haoMa,weizhi);				    	 				    					    	  
				      }				    
				      bufferedReaderHou.close();
				     // printMap_XiaoToDa(flag,qiHaos,haoMas,weizhi);		
				      printMap_XiaoToDa(flag,qiHaos,haoMas,weizhi);
				      //printMap_daoxu(flag,qiHaos,haoMas,weizhi);
				   }else{
					   System.out.println("文件不存在！！");
				   }
		   }catch(Exception e) {
				e.printStackTrace();
			   
		   }
		  
	}
	/*   @Test
		public void test(){
			String [] resList;
			
			printMap("0123456789","3456789","12389","123");
		}
		*/
    public static void printMap(String haoMap,String qiHao,String haoMa,String weizhi,char []numHot){
    	
    	String iszhong="未中奖！";
        while(haoMa.length()<5){
   	  	  haoMa="0"+haoMa;
   	    } 
      
   	    char wan=haoMa.charAt(0);
   	    char qian=haoMa.charAt(1);
   	    char bai=haoMa.charAt(2);
   	    char shi=haoMa.charAt(3);
   	    char ge=haoMa.charAt(4);
   	    
   	  
   	    
    	//char haoma[]=haoMap.toCharArray();//分割的号码
   	    char haoma[]=numHot;
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
    
 
    public static int [] numHot(ArrayList<String> qiHaos,ArrayList<String> haoMas){
    	
       int zeroFlag=0;
  	   int oneFlag=0;
  	   int twoFlag=0;
  	   int threeFlag =0;
  	   int fourFlag=0;
  	   int fiveFlag=0;
  	   int sixFlag=0;
  	   int sevenFlag=0;
  	   int eightFlag=0;
  	   int nineFlag =0;
  	   
  	  
  	   String qihao;
  	   String haoma;
       int qishuflag=0;
           for(int i=qiHaos.size()-1;i>=0&&qishuflag<5;i--){
        	   qishuflag++;
        	qihao=qiHaos.get(i);
        	haoma=haoMas.get(i);
        	while(haoma.length()<5){
        		haoma="0"+haoma;
        	}
        	char haoma_dange[]=haoma.toCharArray();
        	for(int j=0;j<haoma_dange.length;j++){
        		switch(haoma_dange[j]){
        		
    		    case '0': zeroFlag++; break;
    		    case '1': oneFlag++; break;
    		    case '2': twoFlag++; break;
    		    case '3': threeFlag++; break;
    		    case '4': fourFlag++; break;
    		    case '5': fiveFlag++; break;
    		    case '6': sixFlag++; break;
    		    case '7': sevenFlag++; break;
    		    case '8': eightFlag++; break;
    		    case '9': nineFlag++; break;
    		    
    		    }
        	}
    		
    	}
           zeroFlag=zeroFlag*10+0;
           oneFlag=oneFlag*10+1;
           twoFlag=twoFlag*10+2;
           threeFlag=threeFlag*10+3;
           fourFlag=fourFlag*10+4;
           fiveFlag=fiveFlag*10+5;
           sixFlag=sixFlag*10+6;
           sevenFlag=sevenFlag*10+7;
           eightFlag=eightFlag*10+8;
           nineFlag=nineFlag*10+9;
           
           char shiwei=(qiHaos.get(qiHaos.size()-1)).charAt(3);
           char gewei=(qiHaos.get(qiHaos.size()-1)).charAt(4);
           
       int [] hotNumSort={zeroFlag,oneFlag,twoFlag,threeFlag,fourFlag,fiveFlag,sixFlag,sevenFlag,eightFlag,nineFlag};
       Arrays.sort(hotNumSort);
      
       for(int k=0;k<hotNumSort.length;k++){
    	  int num= hotNumSort[k];
    	 
    	  System.out.println(num%10+"出现的次数是："+num/10+"     ");    	  
       }
       
       
       return hotNumSort;
    }
    
    public static void  printMap_XiaoToDa (String haoMap,ArrayList<String> qiHaos,ArrayList<String> haoMas,String weizhi){ //参数1 号码
    	 System.out.println(haoMap);
    	 System.out.println(" ----------------------");
    	 char numHot[]=intToChar(numHot(qiHaos,haoMas));
    	 for(int i = qiHaos.size()-1;i >=0; i --){
             //System.out.println(qiHaos.get(i));
             printMap(haoMap,qiHaos.get(i),haoMas.get(i),weizhi,numHot);
         }
    }
    public static void printMap_DaToXiao(String haoMap,ArrayList<String> qiHaos,ArrayList<String> haoMas,String weizhi){ //倒叙
    	 char numHot[]=intToChar(numHot(qiHaos,haoMas)); 
   	     for(int i = 0;i<qiHaos.size(); i ++){
            //System.out.println(qiHaos.get(i));
            printMap(haoMap,qiHaos.get(i),haoMas.get(i),weizhi,numHot);
         }
   } 
   public static char[] intToChar(int [] numArray){
	   char []charArray=new char[numArray.length];
	   for(int i=0;i<numArray.length;i++){
		   charArray[i]=(char)(numArray[i]%10+48);
	   }

	   return charArray;
   }
}

