package cn.lzc.model;

public class GameResult
{
  private int id;
  private int type;
  private int time;
  private String data;

  public String getData()
  {
    return this.data;
  }
  public int getId() {
    return this.id;
  }
  public int getTime() {
    return this.time;
  }
  public int getType() {
    return this.type;
  }
  public void setData(String data) {
    this.data = data;
  }
  public void setId(int id) {
    this.id = id;
  }
  public void setTime(int time) {
    this.time = time;
  }
  public void setType(int type) {
    this.type = type;
  }
}