<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'demo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript">
var a=<%
	if (request.getAttribute("Login") != null) {
		String message = (String) request.getAttribute("Login");
	System.out.println("登陆中");
		if (message=="true"){
			//如果登录标志不为true则跳转回登录页面
			
			
		}	
	else{
	System.out.println("没登陆");
	}
	}
%>
</script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="/goodsmanager/resources/css/bootstrap.min.css">
</head>
<body>
	<div class="form-inline pager" role="form">
		<div class="form-group">
			<label class="sr-only" for="exampleInputEmail2">名称</label> <input
				type="input" id="tablemingchenginput" class="form-control"
				placeholder="请输入要搜索的名称" >
		</div>
		<select class="form-control" id="tableguigeinput">
			<option></option>


		</select>
		
		<button type="button" onclick="goodsSearch()" class="btn btn-success">搜索</button>
		<button type="button" onclick="deleteButtonIDS()"  data-toggle="modal" id="deleteAllButton"  class="btn btn-warning disabled" >批量删除</button>
<!-- 		<button type="button" onclick="deleteButtonIDS()"  data-toggle="modal" id="deleteAllButton" data-target="#mymodal-data" class="btn btn-warning disabled" >批量删除</button> -->
	
	</div>
	<div class="modal fade" id="mymodal-data" tabindex="-1" role="dialog"
		aria-labelledby="mySmallModalLabel" aria-hidden="true">

		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="popwintit">模拟弹出窗标题</h4>
				</div>
				<div class="modal-body">
					<p id="popwincon">模拟弹出窗内容</p>
					<input type="hidden" id="popwinid" />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="popwinsub" class="btn btn-danger"
						>提交</button>
				</div>
			</div>
		</div>
	</div>
	<div class="table-responsive">
		<table id="goodstable"
			class="table table-bordered table-striped table-hover  ">
			<thead>
				<tr>
					<th>全选<input type="checkbox" id="tableAllCheck"
						onclick="allCheck()"></th>
					<th>日期</th>
					<th>名称</th>
					<th>规格</th>
					<th>产地</th>
					<th>联系人</th>
					<th>电话</th>
					<th>数量</th>
					<th>单位</th>
					<th>售价</th>
					<th>合计</th>
					<th>备注</th>
					<th>删除</th>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
		<ul id="tablePage" class="pager  pagination-lg">

		</ul>
	</div>
</body>
<script src="/goodsmanager/resources/js/jquery-1.11.1.js"></script>
<script src="/goodsmanager/resources/js/bootstrap.js"></script>
<script src="/goodsmanager/resources/js/GoodsTable.js"></script>



</html>
