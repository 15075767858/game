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
<link href="<%=basePath%>resources/css/game/change.css" rel="stylesheet"
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
			<div class="change">
				<form id="changenameForm">
					<div class="change_b1">
						<h4>个人资料</h4>
						<div class="chang_w">
							<div class="user">
								<span class="s1">用户名：</span> <span>ui1234</span>
								<div class="clear"></div>
							</div>
							<div class="user">
								<span class="s1">昵称：</span> <input name="username" class="inp"
									type="text" value="" />
								<div class="clear"></div>
							</div>
							<div class="user user_b">
								<input class="user_btn" type="submit" value="提交修改" />
							</div>
						</div>
					</div>
				</form>
				<div class="change_b1 noMargin">
					<h4>付费状态</h4>
					<div class="chang_w chang_w1">
						<p>未付费</p>
					</div>
				</div>
				<div class="change_b1">
				
					<h4>修改登录密码</h4>
					<form id="changePassword">
						<div class="chang_w">
							<div class="pass">
								<span>输入旧密码：</span> <input class="inps" type="password" name="oldpassword" value="" />
								<div class="words">密码格式不对，请重新输入</div>
								<div class="clear"></div>
							</div>
							<div class="pass new">
								<span>输入新密码：</span> <input class="inps inp1" type="password"
								name="newpassword"	value="" />
								<div class="words">密码格式不对，请重新输入</div>
								<span class="s2">6-16位字符，可使用字母或数字，不能和资金密码相同</span>
								<div class="clear"></div>
							</div>
							<div class="pass">
								<span>确认新密码：</span> <input class="inps inp2" type="password"
								name="againNewPassword"	value="" />
								<div class="words">两次输入的密码不相同，请重新输入</div>
								<div class="clear"></div>
							</div>
							<div class="pass pass_b">
								<input class="inps_btn" type="submit" value="提交修改" />
							</div>
					
						</div>
				</form>
				</div>
				
				<div class="change_b1 noMargin">
					<h4>账户安全</h4>
					<div class="chang_w chang_w1">
						<p class="time">上一次登录时间 2016-01-12 22:59:30</p>
					</div>
				</div>
				<div class="clear"></div>

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
	<script src="<%=basePath%>resources/js/game/content.js"></script>
	<script src="<%=basePath%>resources/js/game/main.js"></script>
	<script type="text/javascript">
		$(function() {
			//密码判断部分
			$(".inp1").focus(function() {
				var $this = $(this);
				$this.css({
					"backgroundColor" : "#fff",
					"borderColor" : "#f30"
				});
			}).blur(function() {
				var $this = $(this);
				var inpVal1 = $this.val();
				var zz = /^[A-Za-z0-9]{6,16}$/;
				if (!zz.test(inpVal1) || $this.val() == "") {
					$this.css("borderColor", "#f30").next().show();
					$(".s2").hide();
				} else {
					$this.css("borderColor", "#ccc").next().hide();
					$(".s2").show();
				}
			})
			//确认密码部分
			$(".inp2").focus(function() {
				var $this = $(this);
				$this.css({
					"backgroundColor" : "#fff",
					"borderColor" : "#f30"
				});
			}).blur(function() {
				var $this = $(this);
				if ($this.val() !== $(".inp1").val() || $this.val() == "") {
					$this.css("borderColor", "#f30").next().show();
				} else {
					$this.css("borderColor", "#ccc").next().hide();
				}
			})
		})
		
		function a(){}
//修改用户名
(function (){
	var formid = "changenameForm";
	var attr = "name";
	var method = "post";
	var url = "/game/json/changeName";
	var success = function(result) {
		switch (result) {
		case 0:
			alert("修改成功");
			break;
		case 1:
			alert("用户名已经存在");
			break;
		default:
			alert("修改成功新的用户名是"+result);
			break;
		}
	}
	new util.userForm(formid, method, url, attr, success);
})();

//修改密码
(function (){
	var formid = "changePassword";
	var attr = "name";
	var method = "post";
	var url = "/game/json/changePassword";
	var success = function(result) {
		switch (result) {
		case 0:
			alert("修改成功");
			break;
		case 1:
			alert("两次密码不一致");
			break;
		default:
			alert(result);
			break;
		}
	}
	new util.userForm(formid, method, url, attr, success);
})();
 

	</script>
</body>
</html>

