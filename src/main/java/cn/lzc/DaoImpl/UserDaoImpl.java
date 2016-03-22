package cn.lzc.DaoImpl;

import cn.lzc.Dao.UserDao;
import cn.lzc.model.User;
import cn.lzc.model.UserVip;
import cn.lzc.utils.DBAccess;
import org.apache.ibatis.session.SqlSession;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

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
	public User findUserByUserName(String username){
		User user=new User();
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		user=ud.findUserByUserName(username);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		//goodsList=	sqlSession.selectList("Goods.findAll");
		
		return user;
	}
	public User findUserByUserId(int id){
		User user=new User();
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		user=ud.findUserByUserId(id);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		//goodsList=	sqlSession.selectList("Goods.findAll");
		
		return user;
	}

	public User addUser(User user){
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		ud.addUser(user);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		return user;
	}
	public int changeUserPassWord(User user){
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		ud.changeUserPassWord(user);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		return 0;
	}
	public List<UserVip> findUserVipByUserId(int user_id){
		List<UserVip> l=new ArrayList<UserVip>();
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		l = ud.findUserVipByUserId(user_id);
		
		
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		//goodsList=	sqlSession.selectList("Goods.findAll");
		
		return l;
	}
	public UserVip findUserVipById(int id){
		UserVip uservip=new UserVip();
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		uservip=ud.findUserVipById(id);
		//System.out.println(uservip.getType()+"aaaaaaa");
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		//goodsList=	sqlSession.selectList("Goods.findAll");
		
		return uservip;
	}
	public UserVip findUserVipByIdType(UserVip uservip){
		
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		uservip=ud.findUserVipByIdType(uservip);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		//goodsList=	sqlSession.selectList("Goods.findAll");
		
		return uservip;
	}
	
	public List<UserVip> findUserVipByPayDate(UserVip uservip){
		List<UserVip> l=new ArrayList<UserVip>();
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		l = ud.findUserVipByPayDate(uservip);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		//goodsList=	sqlSession.selectList("Goods.findAll");
		
		return l;
	}
	public UserVip addUserVip(UserVip uservip){
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		ud.addUserVip(uservip);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		return uservip;
	}
	public UserVip updateUserVip(UserVip uservip){
		SqlSession sqlSession=null;
		try {
			sqlSession=DBAccess.getSqlSession();
//		user=sqlSession.selectOne("findUser",user);
		UserDao ud = sqlSession.getMapper(UserDao.class);
		ud.updateUserVip(uservip);
		} catch (Exception e) {
			System.out.println(e);
		}finally{
			sqlSession.close();
		}
		System.out.println("updateUserVip");
		return uservip;
	}
	
	public void test9(){
		UserVip uservip=new UserVip();
		uservip.setDate_end(new Timestamp(144564));
		uservip.setDate_start(new Timestamp(144564));
		uservip.setId(1121);
		System.out.println(updateUserVip(uservip));
	}
	/*@Test
	public void test8(){
		UserVip uservip=new UserVip();
		uservip.setDate_end(new Timestamp(144564));
		uservip.setDate_start(new Timestamp(144564));
		uservip.setUser_id(2);
		uservip.setType(1);
		
		System.out.println(addUserVip(uservip));
	}
	
	
	@Test
	public void test7(){
		UserVip uservip=new UserVip();
		uservip.setUser_id(1);
		uservip.setType(1);
		System.out.println(findUserVipByIdType(uservip));
	}
		@Test
	public void test6(){
		UserVip uservip=new UserVip();
		long st=new Long("1357130670000");
		uservip.setDate_start(new Timestamp(st));
		long end=new Long("1483361070000");
		uservip.setDate_end(new Timestamp(end));
		
		System.out.println(findUserVipByPayDate(uservip));
		
	}
@Test
	public void test5(){
		
		System.out.println(findUserVipByUserId(1).get(1).getDate_end());
		
	}*/
	/*@Test
	public void test4(){
		User user =new User();
		user.setId(18);
		user.setUsername("root1");
		user.setPassword("rootroot");
		changeUserPassWord(user);
	}
	@Test
	public void test(){
		User user =new User();
		user.setUsername("root");
		user.setPassword("root");
		user=findUser(user);
		System.out.println("------------------"+user);
	}
	@Test
	public void test1(){
		User user=findUserByUserName("root");
		System.out.println(user.getPassword());
		
	}
	@Test
	public void test2(){
		User user =new User();
		user.setUsername("root1");
		user.setPassword("root1");
		addUser(user);
	}
	@Test
	public void test3(){
		int id=1;
		System.out.println(findUserByUserId(id).getUsername());
	}*/
	
}
