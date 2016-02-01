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
<link href="/game/resources/css/game/style.css" rel="stylesheet"
	type="text/css" />
<link href="/game/resources/css/game/register.css" rel="stylesheet"
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
			<div class="clear"></div>
		</div>
	</div>
	<!-- 头部结束 -->
	<!-- 注册主体开始 -->
	<div class="main">
		<div class="mains wrap">
			<div class="main_w">
				<h3>注册会员</h3>
				<!-- 输入框部分 -->
				<form id="registerForm">
					<ul class="main_u">
						<li><span>用户名</span> <input class="pass inp1" type="text" name="username"
							value="" maxlength="16" placeholder="6-16位字符，可使用字母或数字" autofocus />
							<div class="words">用户名格式不对，请重新输入</div>
							<div class="clear"></div></li>
						<li><span>密码</span> <input  class="pass inp1 inp2"
							type="password" name="firstpassword" value="" maxlength="16"
							placeholder="6-16位字符，可使用字母或数字" autocomplete="off" />
							<div class="words">密码格式不对，请重新输入</div>
							<div class="clear"></div></li>
						<li><span>确认密码</span> <input class="pass inp3"
							type="password" name="lastpassword" value="" maxlength="16" placeholder="请再次输入密码" />
							<div class="words">两次输入的密码不相同，请重新输入</div>
							<div class="clear"></div></li>
						<li class="botton"><a href="javascript:;"><input
								type="submit" value="立即注册"></a></li>
					</ul>
				</form>
			</div>
		</div>
	</div>
	<!-- 注册主体结束 -->
	<!-- 分类列表开始 -->
	<div class="list">
		<div class="lists wrap">
			<div class="item fl">
				<i class="icon_f fl"></i>
				<div class="txt fl">
					<h5>100%兑现赔付</h5>
					<p>与主集团统一管理，奖金100%即可兑现，包您畅玩无忧！</p>
				</div>
			</div>
			<div class="item fl">
				<i class="icon_f icon1 fl"></i>
				<div class="txt fl">
					<h5>100%兑现赔付</h5>
					<p>与主集团统一管理，奖金100%即可兑现，包您畅玩无忧！</p>
				</div>
			</div>
			<div class="item noMargin fl">
				<i class="icon_f icon2 fl"></i>
				<div class="txt fl">
					<h5>100%兑现赔付</h5>
					<p>与主集团统一管理，奖金100%即可兑现，包您畅玩无忧！</p>
				</div>
			</div>
			<div class="item fl">
				<i class="icon_f icon3 fl"></i>
				<div class="txt fl">
					<h5>100%兑现赔付</h5>
					<p>与主集团统一管理，奖金100%即可兑现，包您畅玩无忧！</p>
				</div>
			</div>
			<div class="item fl">
				<i class="icon_f icon4 fl"></i>
				<div class="txt fl">
					<h5>100%兑现赔付</h5>
					<p>与主集团统一管理，奖金100%即可兑现，包您畅玩无忧！</p>
				</div>
			</div>
			<div class="item noMargin fl">
				<i class="icon_f icon5 fl"></i>
				<div class="txt fl">
					<h5>100%兑现赔付</h5>
					<p>与主集团统一管理，奖金100%即可兑现，包您畅玩无忧！</p>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>

	<!-- 分类列表结束 -->
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
	<script src="/game/resources/js/game/jquery-1.8.2.min.js"></script>
	<script src="/game/resources/js/game/selectivizr.js"></script>
	<script src="/game/resources/js/game/main.js"></script>

	<script type="text/javascript">
		$(function() {
			//头部列表部分
			$(".head_u li a").click(
					function() {
						$(this).addClass("current").parent().siblings()
								.children("a").removeClass("current");
					})

			//用户名和密码判断部分
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
				} else {
					$this.css("borderColor", "#ccc").next().hide();
				}
			})
			//确认密码部分
			$(".inp3").focus(function() {
				var $this = $(this);
				$this.css({
					"backgroundColor" : "#fff",
					"borderColor" : "#f30"
				});
			}).blur(function() {
				var $this = $(this);
				if ($this.val() !== $(".inp2").val() || $this.val() == "") {
					$this.css("borderColor", "#f30").next().show();
				} else {
					$this.css("borderColor", "#ccc").next().hide();
				}
			})

		})
	</script>
</body>
</html>
