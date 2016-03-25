package cn.lzc.model;

import java.sql.Timestamp;
import java.util.List;

public class User {
	private int id;

	private String username;

	private String password;

	private Timestamp regdate;
	private List payinfo;
	private String nickname;
	public int getId() {
		return id;
	}

	public String getNickname() {
		return nickname;
	}

	public String getPassword() {
		return password;
	}

	public List getPayinfo() {
		return payinfo;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public String getUsername() {
		return username;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setPayinfo(List payinfo) {
		this.payinfo = payinfo;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
