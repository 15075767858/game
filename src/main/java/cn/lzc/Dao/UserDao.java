package cn.lzc.Dao;

import java.sql.Timestamp;
import java.util.List;

import cn.lzc.model.User;
import cn.lzc.model.UserVip;

public interface UserDao {

	public User findUser(User user);
	public User findUserByUserName(String username);
	public int addUser(User user);
	public User findUserByUserId(int id);
	public int changeUserPassWord(User user);
	public UserVip findUserVipById(int id);
	public List findUserVipByUserId(int user_id);
	public List<UserVip> findUserVipByPayDate(UserVip uservip);
	public UserVip findUserVipByIdType(UserVip uservip);
	public void addUserVip(UserVip uservip);
	public void updateUserVip(UserVip uservip);
	public void changeUserNickName(User user);
}
