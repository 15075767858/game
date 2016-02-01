package cn.lzc.Dao;

import java.util.List;
import java.util.Map;

import cn.lzc.model.Goods;

public interface GoodsDao {

	public List findAll();
	public Goods findGoodsByID(Integer id);
	public List<Goods> findGoodsByName(String mingcheng);
	public int deleteGoodsByID(Integer id);
	public List<Goods> queryMessageListByPage(Map<String,Object> parameter);
	public List queryGoodsGuigeByName(String name);
	public int deleteGoodsByIDS(List idlist);
	public int addGoods(Goods goods);
}
