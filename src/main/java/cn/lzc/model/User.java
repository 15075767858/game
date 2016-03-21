package cn.lzc.model;

import java.sql.Timestamp;
import java.util.List;

public class User {
	private int id;

	private String username;

	private String password;

	private Timestamp regdate;
	private List payinfo;
	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public List getPayinfo() {
		return payinfo;
	}

	public void setPayinfo(List payinfo) {
		this.payinfo = payinfo;
	}

	public int getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getUsername() {
		return username;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
