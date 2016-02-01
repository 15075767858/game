package cn.lzc.DaoImpl;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import cn.lzc.Dao.UserDao;
import cn.lzc.model.User;
import cn.lzc.utils.DBAccess;

public class UserDaoImpl {

	
	public User findUser(User user){
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		user= ud.findUser(user);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		//goodsList=	sqlSession.selectList("Goods.findAll");
		
		return user;
	}
	@Test
	public void test(){
		User user =new User();
		user.setUsername("root");
		user.setPassword("root");
		user=findUser(user);
		System.out.println("------------------"+user);
	}
	
}
