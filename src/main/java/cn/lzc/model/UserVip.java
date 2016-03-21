package cn.lzc.model;

import java.sql.Timestamp;


public class UserVip {
private int id;
private int user_id;
private Timestamp date_start;
private Timestamp date_end;

private int type;
public Timestamp getDate_end() {
	return date_end;
}

public Timestamp getDate_start() {
	return date_start;
}
public int getId() {
	return id;
}

public int getType() {
	return type;
}

public int getUser_id() {
	return user_id;
}
public void setDate_end(Timestamp date_end) {
	this.date_end = date_end;
}

public void setDate_start(Timestamp date_start) {
	this.date_start = date_start;
}


public void setId(int id) {
	this.id = id;
}
public void setType(int type) {
	this.type = type;
}
public void setUser_id(int user_id) {
	this.user_id = user_id;
}

}
