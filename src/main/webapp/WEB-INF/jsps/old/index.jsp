<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>鑫港仪器仪表后台管理系统</title>
<link rel="stylesheet"
	href="/goodsmanager/resources/css/bootstrap.min.css"></link>
<%
	if (request.getAttribute("Login") != null) {
		String message = (String) request.getAttribute("Login");
		if (!message.equals("true"))
			//如果登录标志不为true则跳转回登录页面
			response.sendRedirect("/login.jsp");
	}
%>
<style>
#addgoodsdiv {
	margin-top: 50px;
}

#addgoodsform label {
	width: 100px;
}
</style>
<style>
body {
	padding-top: 50px;
	padding-bottom: 40px;
	color: #5a5a5a;
}

/* 下面是左侧导航栏的代码 */
.sidebar {
	position: fixed;
	top: 51px;
	bottom: 0;
	left: 0;
	z-index: 1000;
	display: block;
	padding: 20px;
	overflow-x: hidden;
	overflow-y: auto;
	background-color: #ddd;
	border-right: 1px solid #eee;
}

.nav-sidebar {
	margin-right: -21px;
	margin-bottom: 20px;
	margin-left: -20px;
}

.nav-sidebar>li>a {
	padding-right: 20px;
	padding-left: 20px;
}

.nav-sidebar>.active>a,.nav-sidebar>.active>a:hover,.nav-sidebar>.active>a:focus
	{
	color: #fff;
	background-color: #428bca;
}

已久想从v在从v下说的发生的发生

        .main {
	padding: 20px;
}

.main .page-header {
	margin-top: 0;
}
</style>
</head>

<body>
	<!--下面是顶部导航栏的代码-->
	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top"
		role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">鑫港仪器仪表管理系统</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">首页</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">功能<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li class="dropdown-header">业务功能</li>
						<li><a href="javascript:addgoods()">信息建立</a></li>
						<li><a href="javascript:findgoods()">信息查询</a></li>
						<!-- <li><a href="#">信息管理</a></li> -->
						<li class="divider"></li>
						<li class="dropdown-header">系统功能</li>
						<li><a href="#">设置</a></li>
					</ul></li>
				<li><a href="#">帮助</a></li>
			</ul>

			<form class="navbar-form navbar-right" role="search">
				<div class="form-group" id="loginDiv1">
					<input type="text" id="username" value="root" class="form-control"
						placeholder="用户名..." /> <input type="password" id="password"
						class="form-control" placeholder="密码..." />
				</div>
				<div class="form-group" id="loginDiv2">
					<button type="button" class="btn btn-info" id="loginInfo">登陆成功,欢迎您使用本系统</button>
				</div>
				<button type="button" id="loginButton" onclick="userLogin()"
					class="btn btn-default">登录</button>
				<button type="button" id="exitLoginButton" onclick="userOutLogin()"
					class="btn btn-default">退出登陆</button>
			</form>
		</div>
	</div>
	</nav>

	<!—自适应布局-->
	<div class="container-fluid">
		<div class="row">
			<!—左侧导航栏-->

			<div class="col-sm-3 col-md-2 sidebar" id="leftmenu">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">首页</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="javascript:addgoods()">信息建立</a></li>
					<li><a href="javascript:location.reload()">信息查询</a></li>
					<!-- <li><a href="#">信息管理</a></li> -->
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="javascript:alert('该区域尚未建设')">设置</a></li>
					<li><a href="javascript:alert('该区域尚未建设')">帮助</a></li>
				</ul>
			</div>
			<!—右侧管理控制台-->
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">管理控制台</h1>

				<p>
					<!—一组按钮控件-->
					<button type="button" onclick="javascript:location.reload()"
						class="btn btn-lg btn-default">回到首页</button>
					<button type="button" onclick="addgoods()"
						class="btn btn-lg btn-primary">信息建立</button>
					<button type="button" onclick="findgoods()" class="btn btn-lg btn-success">信息查询</button>
					<button type="button" class="btn btn-lg btn-info">操作4</button>
					<button type="button" class="btn btn-lg btn-warning">操作5</button>
					<button type="button" onclick="userOutLogin()" class="btn btn-lg btn-danger">退出登陆</button>
				</p>

				<div class="row" id="findgoodsdiv">
					<div class="form-inline pager" role="form">
						<div class="form-group">
							<label class="sr-only" for="exampleInputEmail2">名称</label> <input
								type="input" id="tablemingchenginput" class="form-control"
								placeholder="请输入要搜索的名称"></input>
						</div>
						<select class="form-control" id="tableguigeinput">
							<option></option>


						</select>

						<button type="button" onclick="goodsSearch()"
							class="btn btn-success">搜索</button>
						<button type="button" onclick="deleteButtonIDS()"
							data-toggle="modal" id="deleteAllButton"
							class="btn btn-warning disabled">批量删除</button>
						<!-- 		<button type="button" onclick="deleteButtonIDS()"  data-toggle="modal" id="deleteAllButton" data-target="#mymodal-data" class="btn btn-warning disabled" >批量删除</button> -->

					</div>
					<div class="modal fade" id="mymodal-data" tabindex="-1"
						role="dialog" aria-labelledby="mySmallModalLabel"
						aria-hidden="true">

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
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="button" id="popwinsub" class="btn btn-danger">提交</button>
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
										onclick="allCheck()"> </input></th>
									<th>日期</th>
									<th>名称</th>
									<th>规格</th>
									<!-- <th>产地</th>
									<th>联系人</th>
									<th>电话</th> 
									<th>数量</th>
									<th>单位</th>-->
									<th>售价</th>
									<!-- <th>合计</th> 
									<th>备注</th>-->
									<th>操作</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
						<ul id="tablePage" class="pager  pagination-lg">

						</ul>
					</div>
				</div>

				<div class="table-responsive" id="addgoodsdiv">
					<button id="lastGoods" class="btn btn-primary btn-xs" type="button">&lt;</button>
					<button id="nextGoods" class="btn btn-primary btn-xs" type="button">&gt;</button>
					<span class="label label-success">小提示，输入完商品名称后点击左边小箭头，可以选择过去输入过的商品</span>
					<form class="form-horizontal" id="addgoodsform">

						<table class="table table-bordered">
							<tr>
								<td><label for="inputEmail3" class="col-sm-2 control-label">名称</label>
									<input type="hidden" id="Gid" name="id" /></td>
								<td>
									<div class="col-sm-10" style="float: left;">
										<input type="text" style="float: left;" name="mingcheng"
											class="form-control " id="Gmingcheng" placeholder="请输入商品名称" />

									</div>
								</td>

								<td><label for="inputEmail3" class="col-sm-2 control-label">日期</label></td>
								<td>
									<div class="col-sm-10">
										<input style="height: 34px;" name="riqi" id="Griqi"
											type="input" onClick="WdatePicker()" placeholder="请选择商品日期"
											class="Wdate form-control" />
									</div>
								</td>
							</tr>
							<tr>
								<td><label for="inputEmail3" class="col-sm-2 control-label">规格</label></td>
								<td>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="guige"
											id="Gguige" placeholder="请输入或选择规格" />

									</div>
								</td>
								<td><label for="inputEmail3" class="col-sm-2 control-label">产地</label></td>
								<td>
									<div class="col-sm-10">
										<input type="text" name="chandi" class="form-control"
											id="Gchandi" placeholder="请输入或选择产地" />
									</div>
								</td>
							</tr>
							<tr>
								<td><label for="inputEmail3" class="col-sm-2 control-label">联系人</label></td>
								<td>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="Glianxiren"
											name="lianxiren" placeholder="请输入或选择联系人" />

									</div>
								</td>
								<td><label for="inputEmail3" class="col-sm-2 control-label">电话</label></td>
								<td>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="dianhua"
											id="Gdianhua" placeholder="请输入联系电话" />
									</div>
								</td>
							</tr>
							<tr>
								<td><label for="inputEmail3" class="col-sm-2 control-label">数量</label></td>
								<td>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="shuliang"
											id="Gshuliang" placeholder="请输入商品数量" />

									</div>
								</td>
								<td><label for="inputEmail3" class="col-sm-2 control-label">单位</label></td>
								<td>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="danwei"
											id="Gdanwei" placeholder="请输入商品单位" />
									</div>

								</td>
							</tr>
							<tr>
								<td><label for="inputEmail3" class="col-sm-2 control-label">进价</label></td>
								<td>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="Gjinjia"
											name="jinjia" placeholder="请输入商品进价" />
									</div>

								</td>
								<td><label for="inputEmail3" class="col-sm-2 control-label">售价</label></td>
								<td>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="Gshoujia"
											name="shoujia" placeholder="请输入商品售价" />
									</div>
								</td>
							</tr>
							<tr>
								<td><label for="inputEmail3" class="col-sm-2 control-label">备注</label>
								</td>
								<td colspan="3"><textarea rows="3" style="width:90%;"
										class="form-control" name="beizhu" id="Gbeizhu"></textarea></td>
							</tr>
							<tr>
								<td colspan="5" align="center">
									<button type="button" id="Gsubmit"
										class="btn btn-lg btn-success">提交</button>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="button" id="PageRefresh"
										class="btn btn-lg btn-info">返回</button>
								</td>
							</tr>
						</table>
					</form>
				</div>

			</div>
		</div>
	</div>

	<p id="pp"></p>
	<button id="button1">选择</button>

	<script src="/goodsmanager/resources/js/jquery-1.11.1.js"></script>
	<script src="/goodsmanager/resources/js/bootstrap.js"></script>
	<script src="/goodsmanager/resources/js/My97DatePicker/WdatePicker.js"></script>
	<script src="/goodsmanager/resources/js/GoodsTable.js"></script>
	<script type="text/javascript">
	
	</script>
</body>
</html>
日期 查看切修改 进价
