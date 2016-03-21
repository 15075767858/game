package cn.lzc.model;

/**
 * 分页对应的实体类
 */
public class Page {
	/**
	 * 总条�?
	 */
	private int totalNumber;
	/**
	 * 当前第几�?
	 */
	private int currentPage;
	/**
	 * 总页�?
	 */
	private int totalPage;
	/**
	 * 每页显示条数
	 */
	private int pageNumber = 5;
	/**
	 * 数据库中limit的参数，从第几条�?���?
	 */
	private int dbIndex;
	/**
	 * 数据库中limit的参数，�?��取多少条
	 */
	private int dbNumber;
	
	/**
	 * 根据当前对象中属性�?计算并设置相关属性�?
	 */
	public void count() {
		// 计算总页�?
		int totalPageTemp = this.totalNumber / this.pageNumber;
		int plus = (this.totalNumber % this.pageNumber) == 0 ? 0 : 1;
		totalPageTemp = totalPageTemp + plus;
		if(totalPageTemp <= 0) {
			totalPageTemp = 1;
		}
		this.totalPage = totalPageTemp;
		
		// 设置当前页数
		// 总页数小于当前页数，应将当前页数设置为�?页数
		if(this.totalPage < this.currentPage) {
			this.currentPage = this.totalPage;
		}
		// 当前页数小于1设置�?
		if(this.currentPage < 1) {
			this.currentPage = 1;
		}
		
		// 设置limit的参�?
		this.dbIndex = (this.currentPage - 1) * this.pageNumber;
		this.dbNumber = this.pageNumber;
	}

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
		this.count();
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
		this.count();
	}

	public int getDbIndex() {
		return dbIndex;
	}

	public void setDbIndex(int dbIndex) {
		this.dbIndex = dbIndex;
	}

	public int getDbNumber() {
		return dbNumber;
	}

	public void setDbNumber(int dbNumber) {
		this.dbNumber = dbNumber;
	}
}
