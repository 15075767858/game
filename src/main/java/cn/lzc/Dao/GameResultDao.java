package cn.lzc.Dao;

import java.util.List;

public abstract interface GameResultDao
{
  public abstract List findGameResultByType(int paramInt);
}