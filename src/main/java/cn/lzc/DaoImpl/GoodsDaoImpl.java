package cn.lzc.DaoImpl;

import cn.lzc.Dao.GoodsDao;
import cn.lzc.model.Goods;
import cn.lzc.model.Page;
import cn.lzc.utils.DBAccess;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

public class GoodsDaoImpl {

	public List findGoodsByPage(Page page,Goods goods){
	
		SqlSession sqlSession=null;
	
		List goodsList=null;
		
		try {
			sqlSession=DBAccess.getSqlSession();
			GoodsDao gd = sqlSession.getMapper(GoodsDao.class);
		HashMap<String, Object> map=new HashMap<String ,Object>();
		map.put("goods",goods);
		map.put("page", page);
		goodsList=gd.queryMessageListByPage(map);
		
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		return goodsList;
	}
	public Goods findGoodsByID(Integer id){
		SqlSession sqlSession=null;
		Goods goods=new Goods();
		try {
			sqlSession=DBAccess.getSqlSession();
			GoodsDao gd = sqlSession.getMapper(GoodsDao.class);
			goods=gd.findGoodsByID(id);
			sqlSession.commit();
		
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		return goods;
	}
	public List findGoodsByName(String mingcheng){
		SqlSession sqlSession=null;
		List list =new ArrayList();
		try {
			sqlSession=DBAccess.getSqlSession();
			GoodsDao gd = sqlSession.getMapper(GoodsDao.class);
			list=gd.findGoodsByName(mingcheng);
			sqlSession.commit();
		
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		return list;
	}
	public void test2(){
	List list=	findGoodsByName("��");
	System.out.println(list.size());
	}
	public void test3(){
	Goods goods=	findGoodsByID(1466);
	System.out.println("goods.getRiqi="+goods.getRiqi()
			+"+ goods.getMingcheng="+ goods.getMingcheng()+'\n'
			+ "goods.getGuige"+goods.getGuige()+'\n'
			+"goods.getChandi="+goods.getChandi()+'\n'
			+"goods.getLianxiren="+goods.getLianxiren()+'\n'
			+"goods.getDianhua"+goods.getDianhua()+'\n'
			+"goods.getShuliang"+goods.getShuliang()+'\n'
			+"goods.getDanwei="+goods.getDanwei()+'\n'
			+"goods.getJinjia"+goods.getJinjia()+'\n'
			+"goods.getShoujia"+goods.getShoujia()+'\n'
			+"goods.getBeizhu"+goods.getBeizhu());
	}
	
	
	public int deleteGoodsByID(Integer id){
		SqlSession sqlSession=null;
	
		try {
			sqlSession=DBAccess.getSqlSession();
			GoodsDao gd = sqlSession.getMapper(GoodsDao.class);
			gd.deleteGoodsByID(id);
			sqlSession.commit();
		
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		return 1;
	}
	
	public int addGoods(Goods goods){
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
			GoodsDao gd = sqlSession.getMapper(GoodsDao.class);
			gd.addGoods(goods);
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		
		return 1;
	}
	public void test1(){
	Goods goods=new Goods();

	goods.setRiqi(new Date());
	goods.setId("8888");
		goods.setMingcheng("daaa");
		addGoods(goods);
	}
	
	public int deleteGoodsByIDS(List list){
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
			GoodsDao gd = sqlSession.getMapper(GoodsDao.class);
			gd.deleteGoodsByIDS(list);
			sqlSession.commit();
		
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		return 1;
	}
	public List findGoodsGuige(String name){
		
		SqlSession sqlSession=null;
		List l = null;
		try {
			sqlSession=DBAccess.getSqlSession();
			GoodsDao gd = sqlSession.getMapper(GoodsDao.class);
		l=gd.queryGoodsGuigeByName(name);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		return l;
	}
	
	public void test(){
	System.out.println(findGoodsGuige("�¶ȼ�"));
	}
	
}
