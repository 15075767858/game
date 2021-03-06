package cn.lzc.interceptor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;
import java.util.Properties;

import org.apache.ibatis.executor.parameter.ParameterHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;

import cn.lzc.model.Page;

/**
 * 分页拦截�?
 */
@Intercepts({@Signature(type=StatementHandler.class,method="prepare",args={Connection.class})})
public class PageInterceptor implements Interceptor {
	
	private String pageNumber;
	
	private static Page page;
	
	public static Page getPage() {
		return page;
	}

	public static void setPage(Page page) {
		PageInterceptor.page = page;
	}

	public Object intercept(Invocation invocation) throws Throwable {
		
		StatementHandler statementHandler = (StatementHandler)invocation.getTarget();
		MetaObject metaObject = MetaObject.forObject(statementHandler, SystemMetaObject.DEFAULT_OBJECT_FACTORY, SystemMetaObject.DEFAULT_OBJECT_WRAPPER_FACTORY);
		MappedStatement mappedStatement = (MappedStatement)metaObject.getValue("delegate.mappedStatement");
		String id = mappedStatement.getId();
		if(id.matches(".+ByPage$")) {
			BoundSql boundSql = statementHandler.getBoundSql();
			String sql = boundSql.getSql();
			String countSql = "select count(*) from (" + sql + ")a";
			Connection connection = (Connection)invocation.getArgs()[0];
			PreparedStatement countStatement = connection.prepareStatement(countSql);
			ParameterHandler parameterHandler = (ParameterHandler)metaObject.getValue("delegate.parameterHandler");
			parameterHandler.setParameters(countStatement);
			ResultSet rs = countStatement.executeQuery();
			
			Map<?,?> parameter = (Map<?,?>)boundSql.getParameterObject();
			Page page = (Page)parameter.get("page");
			if(rs.next()) {
				page.setTotalNumber(rs.getInt(1));
			}
			page.setPageNumber(new Integer(pageNumber));
			
			setPage(page);
			System.out.println("page.getCurrentPage()="+page.getCurrentPage()+"page.getDbIndex()="+page.getDbIndex()+"page.getDbNumber()="+page.getDbNumber()+"page.getPageNumber()="+page.getPageNumber()+"page.getTotalNumber()="+page.getTotalNumber()+"page.getTotalPage()="+page.getTotalPage());
			
			// 改�?后带分页查询的SQL语句
			String pageSql = sql + " limit " + page.getDbIndex() + "," + page.getDbNumber();
			metaObject.setValue("delegate.boundSql.sql", pageSql);
		}
		return invocation.proceed();
	}

	public Object plugin(Object target) {
		return Plugin.wrap(target, this);
	}

	public void setProperties(Properties properties) {
		this.pageNumber = properties.getProperty("pageNumber");
		System.out.println(pageNumber);
		// TODO Auto-generated method stub
		
	}

}
