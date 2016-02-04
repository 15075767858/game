<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>好孩子</title>
<link href="<%=basePath%>resources/css/game/style.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>resources/css/game/manage.css" rel="stylesheet"
	type="text/css" />
</head>

<body>
	<!-- 头部开始 -->
	<div class="heads">
		<div class="headser wrap">
			<h1>
				<a href="home.html">好孩子团队</a>
			</h1>
			<ul class="head_u fl">
				<li class="tan"><a href="javascript:;" class="current">彩 种<i
						class="arr"></i></a>
					<div class="cai">
						<div class="cai1">
							<i class="cai_s"></i> <a href="javascript:;" class="aa">重庆时时彩</a>
							<a href="javascript:;" class="aa">江西时时彩</a> <a
								href="javascript:;" class="aa noMargin">新疆时时彩</a>
							<div class="clear"></div>
						</div>
						<div class="cai1">
							<i class="cai_s"></i> <a href="javascript:;" class="aa">山东11选5</a>
							<a href="javascript:;" class="aa">江西11选5</a> <a
								href="javascript:;" class="aa">广东11选5</a>
							<div class="clear"></div>
						</div>
						<div class="cai1">
							<i class="cai_s"></i> <a href="javascript:;" class="aa">江苏快三</a>
							<a href="javascript:;" class="aa">安徽快三</a>
							<div class="clear"></div>
						</div>
					</div></li>
				<li><a href="javascript:;">开奖记录<i class="arr"></i></a></li>
				<li><a href="javascript:;">模拟验证<i class="arr"></i></a></li>
				<li><a href="javascript:;">平台推荐<i class="arr"></i></a></li>
				<li><a href="javascript:;">用户管理<i class="arr"></i></a></li>
			</ul>
			<div class="head_btn fr">
				<div class="small">
					<span>小彩球</span> <i></i>
				</div>
				<div class="head_t">
					<a href="javascript:;">修改密码</a> <a href="javascript:;">退出登录</a> <i></i>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!-- 头部结束 -->

	<!-- 主体内容开始 -->
	<div class="mains">
		<div class="mains_w wrap">
			<div class="mains_t">
				<h3>用户管理</h3>
				<div class="main_box">
					<form id="form" action="#">
						<span>用户名：</span> <input type="text" name="username" value="" />
						<span class="reg">注册时间：</span> <input id="time1" type="text"
							name="startdate" value="2016-01-02 20:44:30"
							onfocus="var time2=$dp.$('time2');WdatePicker({onpicked:function(){time2.focus();},maxDate:'#F{$dp.$D(\'time2\')}',dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
						<span>至</span> <input id="time2" type="text" name="enddate"
							value="2016-01-02 20:44:30"
							onfocus="WdatePicker({minDate:'#F{$dp.$D(\'time1\')}',dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
						<input class="btn" type="submit" value="查询" />
					</form>
				</div>
			</div>
			<div class="mains_b">
				<form action="#">
					<table class="table">
						<thead>
							<tr class="tr1">
								<td class="td1"></td>
								<td class="td2">ID号</td>
								<td class="td3"><span>用户名</span> <i class="arrow_t"></i> <i
									class="arrow_b"></i></td>
								<td class="td4">密码</td>
								<td class="td5">注册日期 <i class="arrow_t"></i> <i
									class="arrow_b"></i>
								</td>
								<td class="td5 td6">付费日期 <i class="arrow_t"></i> <i
									class="arrow_b"></i>
								</td>
								<td class="td7">付费日期</td>
								<td class="td7 td8">到期日期 <i class="arrow_t"></i> <i
									class="arrow_b"></i>
								</td>
								<td class="td9">付费 <i class="arrow_t"></i> <i
									class="arrow_b"></i>
								</td>
								<td class="td10">操作</td>
							</tr>
						</thead>
						<tbody>

							<tr class="tr2 tr1">
								<td class="td1"><i class="check"></i></td>
								<td class="td2">
									<div class="tds">
										<input type="hidden" value="id">01234
									</div>
								</td>
								<td class="td3">
									<div class="tds">xiaocaiqiu</div>
								</td>
								<td class="td4"><input type="password" name="password"
									value="" /></td>
								<td class="td5">2016-01-13</td>
								<td class="td6">2016-01-13</td>
								<td class="td7"><input type="text" name="fufeiriqi"
									value="2016-01-13" onfocus="WdatePicker()" /></td>
								<td class="td8"><input type="text" name="daoqiriqi"
									value="2016-01-13" onfocus="WdatePicker()" /></td>
								<td class="td9"><select class="data" name="fufei">
										<option value="weifufei">未付费</option>
										<option value="1geyue">1个月</option>
										<option value="2geyue">2个月</option>
										<option value="3geyue">3个月</option>
										<option value="6geyue">6个月</option>
										<option value="12geyue">12个月</option>
								</select></td>
								<td class="td10"><input type="button" href="javascript:;"
									value="保存" class="baocun keep fl" /> <a href="javascript:;"
									class="edith fl">编辑</a></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
	<!-- 主体内容结束 -->
	<!-- 底部开始 -->
	<div class="foot">
		<div class="footer wrap">
			<p class="link">
				<a href="javascript:;">首页</a>| <a href="javascript:;">服务项目</a>| <a
					href="javascript:;">项目平台</a>| <a href="javascript:;">联系我们</a>
			</p>
			<p class="web">
				版权所有：好孩子网络技术有限公司 <span>微信公共账号：223333444444</span><span>微博网址：11212233343</span>
			</p>
		</div>
	</div>
	<!-- 底部结束 -->
	<script src="<%=basePath%>resources/js/game/jquery-1.8.2.min.js"></script>
	<script src="<%=basePath%>resources/js/game/selectivizr.js"></script>
	<script src="<%=basePath%>resources/js/game/main.js"></script>

	<script src="<%=basePath%>resources/js/game/content.js"></script>
	<script src="<%=basePath%>resources/js/My97DatePicker/WdatePicker.js"></script>

	<script type="text/javascript">
		(function() {
			var formid = "form";
			var attr = "name";
			var method = "post";
			var url = "/game/json/managefinduser";
			var success = function(result) {
				switch (result) {
				case 0:
					alert("修改成功");
					break;
				case 1:
					alert("用户名已经存在");
					break;
				default:
					console.log(result);
					$(".mains_b table>tbody>tr").remove();
					//<div class="tds">'+result[i].id+'</div>
					for (var i = 0; i < result.length; i++) {
						$(".mains_b table>tbody")
								.append(
										'<tr class="tr2 tr1"><td class="td1"><i class="check"></i></td>\
										<td class="td2">	<div class="tds"><input type="hidden" value="'+result[i][0]+'">'+result[i][0]+'</div></td>\
										<td class="td3"><div class="tds">'+result[i][1]+'</div></td>\
										<td class="td4"><input type="password" name="password" value="" /></td>\
										<td class="td5">'+result[i][2]+'</td>\
										<td class="td6">'+result[i][3]+'</td>\
										<td class="td7"><input type="text" name="fufeiriqi" value="'+result[i][3]+'" onfocus="WdatePicker()" /></td>\
										<td class="td8"><input type="text" name="daoqiriqi" value="'+result[i][4]+'"	onfocus="WdatePicker()" /></td>\
										<td class="td9"><select class="data" name="fufei">\
										<option value ="weifufei">未付费</option>\
										<option value ="1geyue">1个月</option>\
										<option value ="2geyue">2个月</option>\
										<option value="3geyue">3个月</option>\
										<option value="6geyue">6个月</option>\
										<option value="12geyue">12个月</option></select>	</td>\
										<td class="td10"><input type="button" href="javascript:;" value="保存" class="baocun keep fl"/><a href="javascript:;" class="edith fl">编辑</a></td></tr>');
					}

				}
				clicksubmit();
			}

			function clicksubmit() {
				$(".table .baocun").click(
						function() {
							console.log(this);
							var datas = {};
							var aNames = $(this).parents("tr").find(
									"td input[name],select[name]");
							for (var i = 0; i < aNames.length; i++) {
								datas[$(aNames[i]).attr("name")] = $(aNames[i])
										.val();
							}
							console.log(datas);
								$.ajax({
									type : "post",
									url : "/game/json/manageupdateuser",
									data : datas,
									dataType : 'json',
									success : function(result){
										switch (result) {
										case 0:
											alert("修改成功 页面即将刷新");
											break;
										case 1:
											alert("用户名已经存在");
											break;
										default:
											alert(result);
										break;
										}
									},
									error : function(result){document.write(result)}
								});
							
						})
			}
			clicksubmit();
			new util.userForm(formid, method, url, attr, success);

		})();
		$();
	</script>
</body>
</html>

