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
    <link href="<%=basePath%>resources/css/game/style.css" rel="stylesheet" type="text/css"/>
    <link href="<%=basePath%>resources/css/game/login.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<!-- 主体开始 -->
<div class="main wrap">
    <ul>
        <li>
            <a href="javascript:;">
                <img src="<%=basePath%>resources/images/pic1.png"/>
                <div class="li_bg"></div>
                <p>APP开发</p>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <img src="<%=basePath%>resources/images/pic2.png"/>
                <div class="li_bg"></div>
                <p>微赢佳</p>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <img src="<%=basePath%>resources/images/pic3.png"/>
                <div class="li_bg"></div>
                <p>小蚂蚁二维码</p>
            </a>
        </li>
        <li class="noMargin">
            <a href="javascript:;">
                <img src="<%=basePath%>resources/images/pic4.png"/>
                <div class="li_bg"></div>
                <p>高端定制</p>
            </a>
        </li>
    </ul>
</div>
<!-- 主体结束 -->
<!-- 头部开始 -->
<div class="head">
    <div class="header wrap">
        <div class="logo fl">
            <img title="好孩子" src="<%=basePath%>resources/images/logo.png"/>
        </div>
        <div class="login_w fr">
            <div class="bg"></div>
            <div class="cons">
                <h3>用户登录</h3>
                <form id="loginFrom" method="post">
                    <div class="user">
                            <span class="fl">
                            	<i></i>
                            </span>
                        <input class="inp fl" type="text" name="username" value=""/>
                        <div class="words">登录失败，用户名或密码错误！</div>
                    </div>
                    <div class="user passw">
                            <span class="fl">
                            	<i></i>
                            </span>
                        <input class="inp fl" type="password" name="userpassword" value=""/>
                    </div>
                    <div class="yzm">
                        <span><input type="text" name="yzm" ></span>
                        <span><img
							onclick="javascript:loadimage();" title="换一张试试" name="randImage"
							id="randImage" src="<%=basePath%>resources/images/image.jsp" width="136" height="44" border="1"
							align="absmiddle"></span>
                    </div>
                    <div class="btns">
                        <input type="submit" value="登录" class="logA fl"/>
                        <a href="register.html" class="regA fl">注册</a>
                    </div>
                    <p>
                        有问题？<a href="javascript:;">找客服</a>
                    </p>
                </form>
            </div>
            <i class="tree"></i>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- 头部结束 -->

<!-- 底部开始 -->
<div class="foot">
    <div class="footer wrap">
        <p class="link">
            <a href="javascript:;">首页</a>|
            <a href="javascript:;">服务项目</a>|
            <a href="javascript:;">项目平台</a>|
            <a href="javascript:;">联系我们</a>
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
<script type="text/javascript">
//用户登录部分
$(function () {
	var formid = "loginFrom";
	var attr="name";
	var method = "post";
	var url = "/game/json/userLogin";
	var success = function(result) {
		loadimage()
		switch (result) {
		
		case 0:
			alert("登陆成功");
			location.href = "/game/fenbu.html"
			break;
		case 1:
			alert("用户不存在");
			break;
		case 2:
			alert("密码错误");
			break;
		case 3:
			alert("验证码错误")
			break;
		default:
			alert(result);
			break;
		}
	}
	new util.userForm(formid, method, url, attr, success);
});
</script>
</body>
</html>
