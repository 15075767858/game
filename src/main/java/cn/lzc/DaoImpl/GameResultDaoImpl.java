package cn.lzc.DaoImpl;

import cn.lzc.Dao.GameResultDao;
import cn.lzc.model.GameResult;
import cn.lzc.utils.DBAccess;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

public class GameResultDaoImpl
{
  public List<GameResult> findGameResultByType(int type)
  {
    List l = new ArrayList();
    SqlSession sqlSession = null;
    try {
      sqlSession = DBAccess.getSqlSession();

      GameResultDao grd = (GameResultDao)sqlSession.getMapper(GameResultDao.class);
      l = grd.findGameResultByType(type);
    }
    catch (Exception e)
    {
      System.out.println(e);
    } finally {
      sqlSession.close();
    }

    return l;
  }
  @Test
  public void test1() {
    List l = findGameResultByType(1);
    for (int i = 0; i < l.size(); i++) {
      System.out.println(((GameResult)l.get(i)).getTime());
      System.out.println(((GameResult)l.get(i)).getData().replaceAll(",", ""));
    }
  }
}