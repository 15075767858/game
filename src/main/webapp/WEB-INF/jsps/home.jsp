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
<title>无标题文档</title>
<link href="<%=basePath%>resources/css/game/style.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>resources/css/game/content.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- 头部开始 -->
	<div class="heads">
		<div class="headser wrap">
			<h1>
				<a href="javascript:;">好孩子团队</a>
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
		<div class="main_w wrap">
			<!-- 主体头部开始-->
			<div class="ma_t">
				<i class="icon_c fl"></i>
				<!-- 离投注截止时间 -->
				<div class="time fl">
					<p>
						第<span>20160111-051</span>期<br />离投注截止还有
					</p>
					<i class="data_pic1"></i> <i class="data_pic2"></i> <i
						class="data_pic3"></i> <i class="data_pic4"></i> <i
						class="data_pic5 noMargin"></i>
					<div class="clear"></div>
				</div>
				<div class="zhong fl">
					<p>
						第<span>20160111-051</span>期
					</p>
					<div class="number">
						<i class="num_pic1">0</i> <i class="num_pic2">5</i> <i
							class="num_pic3">3</i> <i class="num_pic4">2</i> <i
							class="num_pic5 noMargin">8</i>
					</div>
				</div>
				<div class="detail fl">
					<a href="javascript:;" class="a1">号码走势</a> <a href="javascript:;"
						class="a2">玩法说明</a>
				</div>
				<div class="clear"></div>
			</div>
			<!-- 主体头部结束-->
			<!-- 导航开始 -->
			<form id="gameForm" method="post">
				<div class="nav" name="wanfatype">
					<div class="nva_w current fl" is="on" value="wuxing">
						<a href="javascript:;">五星</a>
					</div>
					<div class="nva_w fl" value="sixing">
						<a href="javascript:;">四星</a>
					</div>
					<div class="nva_w fl" value="qiansan">
						<a href="javascript:;">前三</a>
					</div>
					<div class="nva_w fl" value="zhongsan">
						<a href="javascript:;">中三</a>
					</div>
					<div class="nva_w fl" value="housan">
						<a href="javascript:;">后三</a>
					</div>
					<div class="nva_w fl" value="qianer">
						<a href="javascript:;">前二</a>
					</div>
					<div class="nva_w fl" value="houer">
						<a href="javascript:;">后二</a>
					</div>
					<div class="nva_w fl" value="yixing">
						<a href="javascript:;">一星</a>
					</div>

					<div class="nva_w fl" value="longhu">
						<a href="javascript:;">龙虎</a>
					</div>
					<div class="clear"></div>
				</div>

				<!-- 导航结束 -->
				<!-- 选择种类开始 -->
				<div class="kind">
					<div class="kind_f fl">
						<!-- 玩法信息显示层控制五星 -->
						<div data-view="wuxing">
							<div name="wanfainfo">
								<!-- 玩法信息行 -->
								<div class="kind_t1 kind1">
									<span class="tit">组选</span> <span class="zx cur" index="5"
										value="zuxuan120" is="on">组选120</span> <span class="zx"
										index="6" value="zuxuan60" is="off">组选60</span> <span
										class="zx" index="7" value="zuxuan30" is="off">组选30</span> <span
										class="zx" index="8" value="zuxuan20" is="off">组选20</span>
									<div class="clear"></div>
								</div>
								<!-- 玩法信息行结束 -->
							</div>
						</div>

					<!-- 玩法信息显示层控制四星 -->
					<div data-view="sixing" >
							<div name="wanfainfo">
								<!-- 玩法信息行 -->
								<div class="kind_t1 kind1">
									<span class="tit">组选</span> <span class="zx cur" index="5"
										value="zuxuan24" is="on">组选24</span> <span class="zx"
										index="6" value="zuxuan12" is="off">组选12</span> <span
										class="zx" index="7" value="zuxuan6" is="off">组选6</span> <span
										class="zx" index="8" value="zuxuan4" is="off">组选4</span>
									<div class="clear"></div>
								</div>
								<div class="kind_t1 kind1">
									<span class="tit">不定位</span>
									 <span class="zx cur" index="5"	value="yimabudingwei" is="off">一码不定位</span> 
										<span class="zx" index="6" value="ermabudingwei" is="off">二码不定位</span>
									<div class="clear"></div>
								</div>
								<!-- 玩法信息行结束 -->
							</div>
						</div>
<!-- 玩法信息显示层控制前三 -->
						<div data-view="qiansan" >
							<div name="wanfainfo">
								<!-- 玩法信息行 -->
								<div class="kind_t1 kind1">
									<span class="tit">直选</span>
									 <span class="zx cur" index="5"	value="fushi" is="off">复式</span> 
										<span class="zx" index="6" value="danshi" is="off">单式</span>
										 <span class="zx" index="7" value="zuhe" is="off">组合</span> 
									<div class="clear"></div>
								</div>
								<div class="kind_t1 kind1">
									<span class="tit">组选</span>
									 <span class="zx " index="5"	value="zusanfushi" is="off">组三复式</span> 
										<span class="zx" index="6" value="zuliufushi" is="off">组六复式</span>
										<span class="zx " index="5"	value="zusandanshi" is="off">组三单式</span> 
										<span class="zx" index="6" value="zuliudanshi" is="off">组六单式</span>
										<span class="zx " index="5"	value="hunhezuxuan" is="off">混合组选</span> 
										<span class="zx" index="6" value="zuxuanbaodan" is="off">组选包胆</span>
										<span class="zx" index="6" value="zuxuanhezhi" is="off">组选和值</span>
										
									<div class="clear"></div>
								</div>

								<div class="kind_t1 kind1">
									<span class="tit">不定位</span>
									 <span class="zx " index="5"	value="yimabudingwei" is="off">一码不定位</span> 
										<span class="zx" index="6" value="ermabudingwei" is="off">二码不定位</span>
										
										
									<div class="clear"></div>
								</div>
								<!-- 玩法信息行结束 -->
							</div>
						</div>

<!-- 玩法信息显示层控制中三 -->
						<div data-view="zhongsan" >
							<div name="wanfainfo">
								<!-- 玩法信息行 -->
								<div class="kind_t1 kind1">
									<span class="tit">直选</span>
									 <span class="zx cur" index="5"	value="fushi" is="off">复式</span> 
										<span class="zx" index="6" value="danshi" is="off">单式</span>
										 <span class="zx" index="7" value="zuhe" is="off">组合</span> 
									<div class="clear"></div>
								</div>
								<div class="kind_t1 kind1">
									<span class="tit">组选</span>
									 <span class="zx " index="5"	value="zusanfushi" is="off">组三复式</span> 
										<span class="zx" index="6" value="zuliufushi" is="off">组六复式</span>
										<span class="zx " index="5"	value="zusandanshi" is="off">组三单式</span> 
										<span class="zx" index="6" value="zuliudanshi" is="off">组六单式</span>
										<span class="zx " index="5"	value="hunhezuxuan" is="off">混合组选</span> 
										<span class="zx" index="6" value="zuxuanbaodan" is="off">组选包胆</span>
										<span class="zx" index="6" value="zuxuanhezhi" is="off">组选和值</span>
										
									<div class="clear"></div>
								</div>

								<div class="kind_t1 kind1">
									<span class="tit">不定位</span>
									 <span class="zx " index="5"	value="yimabudingwei" is="off">一码不定位</span> 
										<span class="zx" index="6" value="ermabudingwei" is="off">二码不定位</span>
										
										
									<div class="clear"></div>
								</div>
								<!-- 玩法信息行结束 -->
							</div>
						</div>
<!-- 玩法信息显示层控制后三 -->
						<div data-view="housan" >
							<div name="wanfainfo">
								<!-- 玩法信息行 -->
								<div class="kind_t1 kind1">
									<span class="tit">直选</span>
									 <span class="zx cur" index="5"	value="fushi" is="off">复式</span> 
										<span class="zx" index="6" value="danshi" is="off">单式</span>
										 <span class="zx" index="7" value="zuhe" is="off">组合</span> 
									<div class="clear"></div>
								</div>
								<div class="kind_t1 kind1">
									<span class="tit">组选</span>
									 <span class="zx " index="5"	value="zusanfushi" is="off">组三复式</span> 
										<span class="zx" index="6" value="zuliufushi" is="off">组六复式</span>
										<span class="zx " index="5"	value="zusandanshi" is="off">组三单式</span> 
										<span class="zx" index="6" value="zuliudanshi" is="off">组六单式</span>
										<span class="zx " index="5"	value="hunhezuxuan" is="off">混合组选</span> 
										<span class="zx" index="6" value="zuxuanbaodan" is="off">组选包胆</span>
										<span class="zx" index="6" value="zuxuanhezhi" is="off">组选和值</span>
									<div class="clear"></div>
								</div>

								<div class="kind_t1 kind1">
									<span class="tit">不定位</span>
									 <span class="zx " index="5"	value="yimabudingwei" is="off">一码不定位</span> 
										<span class="zx" index="6" value="ermabudingwei" is="off">二码不定位</span>
										
										
									<div class="clear"></div>
								</div>
								<!-- 玩法信息行结束 -->
							</div>
						</div>

<!-- 玩法信息显示层控制前二 -->
						<div data-view="qianer" >
							<div name="wanfainfo">
								<!-- 玩法信息行 -->
								<div class="kind_t1 kind1">
									<span class="tit">直选</span>
									 <span class="zx cur" index="5"	value="fushi" is="off">复式</span> 
										<span class="zx" index="6" value="danshi" is="off">单式</span>
										 <span class="zx" index="7" value="hezhi" is="off">和值</span> 
										  <span class="zx" index="7" value="kuadu" is="off">跨度</span> 
									<div class="clear"></div>
								</div>
								<div class="kind_t1 kind1">
									<span class="tit">组选</span>
									<span class="zx" index="5" value="zuxuanfushi" is="off">组选复式</span> 
									<span class="zx" index="6" value="zuxuandanshi" is="off">组选单式</span>
									<span class="zx" index="5" value="zuxuanhezhi" is="off">组选和值</span> 
									<span class="zx" index="6" value="zuxuanbaodan" is="off">组选包胆</span>
									<div class="clear"></div>
								</div>

								<!-- 玩法信息行结束 -->
							</div>
						</div>
<!-- 玩法信息显示层控制后二 -->
						<div data-view="houer" >
							<div name="wanfainfo">
								<!-- 玩法信息行 -->
								<div class="kind_t1 kind1">
									<span class="tit">直选</span>
									<span class="zx cur" index="5"	value="fushi" is="off">复式</span> 
									<span class="zx" index="6" value="danshi" is="off">单式</span>
									<span class="zx" index="7" value="hezhi" is="off">和值</span> 
									<span class="zx" index="7" value="kuadu" is="off">跨度</span> 
									<div class="clear"></div>
								</div>
								<div class="kind_t1 kind1">
									<span class="tit">组选</span>
									<span class="zx" index="5" value="zuxuanfushi" is="off">组选复式</span> 
									<span class="zx" index="6" value="zuxuandanshi" is="off">组选单式</span>
									<span class="zx" index="5" value="zuxuanhezhi" is="off">组选和值</span> 
									<span class="zx" index="6" value="zuxuanbaodan" is="off">组选包胆</span>
									<div class="clear"></div>
								</div>

								<!-- 玩法信息行结束 -->
							</div>
						</div>

<!-- 玩法信息显示层控制一星 -->
						<div data-view="yixing" >
							<div name="wanfainfo">
								<!-- 玩法信息行 -->
								<div class="kind_t1 kind1">
									<span class="tit">定位胆</span>
									 <span class="zx cur" index="5"	value="fushi" is="off">复式</span> 
									<div class="clear"></div>
								</div>
								<!-- 玩法信息行结束 -->
							</div>
						</div>


						<!-- 玩法数据号码控制 -->
						<div class="wfsj">
							<!-- 五星组选120 -->
							<div class="styles " data-view="wuxingzuxuan120" is=on>
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuxuan120">组选120</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>

								<!-- 号码结束 -->
							</div>

							<!-- 五星组选60 -->
							<div class="styles " data-view="wuxingzuxuan60" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="erchonghao">二重</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>

								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="danhao">单号</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>

								<!-- 号码结束 -->
							</div>

							<!-- 五星组选30 -->
							<div class="styles " data-view="wuxingzuxuan30" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="erchonghao">二重</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="danhao">单号</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>

								<!-- 号码结束 -->
							</div>

							<!-- 五星组选20 -->
							<div class="styles " data-view="wuxingzuxuan20" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="sanchonghao">三重</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="danhao">单号</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>

								<!-- 号码结束 -->
							</div>
						

						<!-- 四星组选24 -->
						<div class="styles " data-view="sixingzuxuan24" is=off>
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuxuan24">组选24</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>

								<!-- 号码结束 -->
							</div>
						
							<!-- 四星组选12 -->
							<div class="styles " data-view="sixingzuxuan12" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="erchonghao">二重号</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="danhao">单号</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>

								<!-- 号码结束 -->
							</div>

<!-- 四星组选6 -->
							<div class="styles " data-view="sixingzuxuan6" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="erchonghao">二重号</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								
							</div>
						
				<!-- 四星组选4 -->
							<div class="styles " data-view="sixingzuxuan4" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="sanchonghao">三重号</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="danhao">单号</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

				<!-- 四星一码不定位 -->
							<div class="styles " data-view="sixingyimabudingwei" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="budingwei">不定位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								
							</div>

				<!-- 四星二码不定位 -->
							<div class="styles " data-view="sixingermabudingwei" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="budingwei">不定位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								
							</div>

				<!-- 前三复式 -->
							<div class="styles " data-view="qiansanfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="wanwei">万位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="qianwei">千位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="baiwei">百位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>




<!-- 前三单式 -->

 <div class="styles " data-view="qiansandanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input id="fileid" type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

	<!-- 前三组合 -->
							<div class="styles " data-view="qiansanzuhe" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="qianwei">千位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="baiwei">百位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="shiwei">十位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

	<!-- 前三组三复式 -->
							<div class="styles " data-view="qiansanzusanfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zusanfushi">组三复式</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

	<!-- 前三组六复式 -->
							<div class="styles " data-view="qiansanzuliufushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuliufushi">组六复式</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 前三组三单式 -->

 <div class="styles " data-view="qiansanzusandanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

<!-- 前三组六单式 -->
 <div class="styles " data-view="qiansanzuliudanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

<!-- 前三混合组选 -->
 <div class="styles " data-view="qiansanhunhezuxuan" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>


<!-- 前三组选包胆 -->
							<div class="styles " data-view="qiansanzuxuanbaodan" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="gewei">个位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>
<!-- 前三组选和值 -->
							<div class="styles " data-view="qiansanzuxuanhezhi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="gewei">个位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i1 sty_i"	value="1"></i>
										 <i class="sty_i2 sty_i" value="2"></i> 
										 <i	class="sty_i3 sty_i" value="3"></i>
										 <i class="sty_i4 sty_i" value="4"></i> 
										 <i class="sty_i5 sty_i" value="5"></i> 
										 <i	class="sty_i6 sty_i" value="6"></i> 
										 <i class="sty_i7 sty_i"	value="7"></i> 
										 <i class="sty_i8 sty_i" value="8"></i>
										 <i	class="sty_i9 sty_i" value="9"></i>
										<i class="sty_i10 sty_i" value="10"></i>
										<i class="sty_i11 sty_i" value="11"></i>
										<i class="sty_i12 sty_i" value="12"></i>
										<i class="sty_i13 sty_i" value="13"></i>
										<i class="sty_i14 sty_i" value="14"></i>
										<i class="sty_i15 sty_i" value="15"></i>
										<i class="sty_i16 sty_i" value="16"></i>
										<i class="sty_i17 sty_i" value="17"></i>
										<i class="sty_i18 sty_i" value="18"></i>
										<i class="sty_i19 sty_i" value="19"></i>
										<i class="sty_i20 sty_i" value="20"></i>
										<i class="sty_i21 sty_i" value="21"></i>
										<i class="sty_i22 sty_i" value="22"></i>
										<i class="sty_i23 sty_i" value="23"></i>
										<i class="sty_i24 sty_i" value="24"></i>
										<i class="sty_i25 sty_i" value="25"></i>
										<i class="sty_i26 sty_i" value="26"></i>
									<!-- 数字部分结束 -->
									
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 前三一码不定位 -->
							<div class="styles " data-view="qiansanyimabudingwei" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="budingwei">不定位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>
<!-- 前三二码不定位 -->
							<div class="styles " data-view="qiansanermabudingwei" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="budingwei">不定位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>


				<!-- 中三复式 -->
							<div class="styles " data-view="zhongsanfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="wanwei">万位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="qianwei">千位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="baiwei">百位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>




<!-- 中三单式 -->

 <div class="styles " data-view="zhongsandanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input id="fileid" type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

	<!-- 中三组合 -->
							<div class="styles " data-view="zhongsanzuhe" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="qianwei">千位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="baiwei">百位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="shiwei">十位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

	<!-- 中三组三复式 -->
							<div class="styles " data-view="zhongsanzusanfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zusanfushi">组三复式</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

	<!-- 中三组六复式 -->
							<div class="styles " data-view="zhongsanzuliufushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuliufushi">组六复式</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 中三组三单式 -->

 <div class="styles " data-view="zhongsanzusandanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

<!-- 中三组六单式 -->
 <div class="styles " data-view="zhongsanzuliudanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

<!-- 中三混合组选 -->
 <div class="styles " data-view="zhongsanhunhezuxuan" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>


<!-- 中三组选包胆 -->
							<div class="styles " data-view="zhongsanzuxuanbaodan" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="gewei">个位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>
<!-- 中三组选和值 -->
							<div class="styles " data-view="zhongsanzuxuanhezhi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="gewei">个位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i1 sty_i"	value="1"></i>
										 <i class="sty_i2 sty_i" value="2"></i> 
										 <i	class="sty_i3 sty_i" value="3"></i>
										 <i class="sty_i4 sty_i" value="4"></i> 
										 <i class="sty_i5 sty_i" value="5"></i> 
										 <i	class="sty_i6 sty_i" value="6"></i> 
										 <i class="sty_i7 sty_i"	value="7"></i> 
										 <i class="sty_i8 sty_i" value="8"></i>
										 <i	class="sty_i9 sty_i" value="9"></i>
										<i class="sty_i10 sty_i" value="10"></i>
										<i class="sty_i11 sty_i" value="11"></i>
										<i class="sty_i12 sty_i" value="12"></i>
										<i class="sty_i13 sty_i" value="13"></i>
										<i class="sty_i14 sty_i" value="14"></i>
										<i class="sty_i15 sty_i" value="15"></i>
										<i class="sty_i16 sty_i" value="16"></i>
										<i class="sty_i17 sty_i" value="17"></i>
										<i class="sty_i18 sty_i" value="18"></i>
										<i class="sty_i19 sty_i" value="19"></i>
										<i class="sty_i20 sty_i" value="20"></i>
										<i class="sty_i21 sty_i" value="21"></i>
										<i class="sty_i22 sty_i" value="22"></i>
										<i class="sty_i23 sty_i" value="23"></i>
										<i class="sty_i24 sty_i" value="24"></i>
										<i class="sty_i25 sty_i" value="25"></i>
										<i class="sty_i26 sty_i" value="26"></i>
									<!-- 数字部分结束 -->
									
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 中三一码不定位 -->
							<div class="styles " data-view="zhongsanyimabudingwei" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="budingwei">不定位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>
<!-- 中三二码不定位 -->
							<div class="styles " data-view="zhongsanermabudingwei" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="budingwei">不定位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>





				<!-- 后三复式 -->
							<div class="styles " data-view="housanfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="wanwei">万位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="qianwei">千位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="baiwei">百位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>




<!-- 后三单式 -->

 <div class="styles " data-view="housandanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input id="fileid" type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

	<!-- 后三组合 -->
							<div class="styles " data-view="housanzuhe" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="qianwei">千位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="baiwei">百位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="shiwei">十位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

	<!-- 后三组三复式 -->
							<div class="styles " data-view="housanzusanfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zusanfushi">组三复式</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

	<!-- 后三组六复式 -->
							<div class="styles " data-view="housanzuliufushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuliufushi">组六复式</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 后三组三单式 -->

 <div class="styles " data-view="housanzusandanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

<!-- 后三组六单式 -->
 <div class="styles " data-view="housanzuliudanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

<!-- 后三混合组选 -->
 <div class="styles " data-view="housanhunhezuxuan" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>


<!-- 后三组选包胆 -->
							<div class="styles " data-view="housanzuxuanbaodan" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="gewei">个位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>
<!-- 后三组选和值 -->
							<div class="styles " data-view="housanzuxuanhezhi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="gewei">个位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i1 sty_i"	value="1"></i>
										 <i class="sty_i2 sty_i" value="2"></i> 
										 <i	class="sty_i3 sty_i" value="3"></i>
										 <i class="sty_i4 sty_i" value="4"></i> 
										 <i class="sty_i5 sty_i" value="5"></i> 
										 <i	class="sty_i6 sty_i" value="6"></i> 
										 <i class="sty_i7 sty_i"	value="7"></i> 
										 <i class="sty_i8 sty_i" value="8"></i>
										 <i	class="sty_i9 sty_i" value="9"></i>
										<i class="sty_i10 sty_i" value="10"></i>
										<i class="sty_i11 sty_i" value="11"></i>
										<i class="sty_i12 sty_i" value="12"></i>
										<i class="sty_i13 sty_i" value="13"></i>
										<i class="sty_i14 sty_i" value="14"></i>
										<i class="sty_i15 sty_i" value="15"></i>
										<i class="sty_i16 sty_i" value="16"></i>
										<i class="sty_i17 sty_i" value="17"></i>
										<i class="sty_i18 sty_i" value="18"></i>
										<i class="sty_i19 sty_i" value="19"></i>
										<i class="sty_i20 sty_i" value="20"></i>
										<i class="sty_i21 sty_i" value="21"></i>
										<i class="sty_i22 sty_i" value="22"></i>
										<i class="sty_i23 sty_i" value="23"></i>
										<i class="sty_i24 sty_i" value="24"></i>
										<i class="sty_i25 sty_i" value="25"></i>
										<i class="sty_i26 sty_i" value="26"></i>
									<!-- 数字部分结束 -->
									
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 后三一码不定位 -->
							<div class="styles " data-view="housanyimabudingwei" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="budingwei">不定位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>
<!-- 后三二码不定位 -->
							<div class="styles " data-view="housanermabudingwei" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="budingwei">不定位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 前二复式 -->
							<div class="styles " data-view="qianerfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="wanwei">万位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="qianwei">千位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 前二单式 -->
 <div class="styles " data-view="qianerdanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

<!-- 前二和值 -->
							<div class="styles " data-view="qianerhezhi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="hezhi">和值</span>
									<!-- 数字部分开始 -->
									
									<i class="sty_i sty_i0" value="0"></i>
									<i class="sty_i sty_i1" value="1"></i>
									<i class="sty_i sty_i2" value="2"></i>
									<i class="sty_i sty_i3" value="3"></i>
									<i class="sty_i sty_i4" value="4"></i>
									<i class="sty_i sty_i5" value="5"></i>
									<i class="sty_i sty_i6" value="6"></i>
									<i class="sty_i sty_i7" value="7"></i>
									<i class="sty_i sty_i8" value="8"></i>
									<i class="sty_i sty_i9" value="9"></i>
									<i class="sty_i sty_i10" value="10"></i>
									<i class="sty_i sty_i11" value="11"></i>
									<i class="sty_i sty_i12" value="12"></i>
									<i class="sty_i sty_i13" value="13"></i>
									<i class="sty_i sty_i14" value="14"></i>
									<i class="sty_i sty_i15" value="15"></i>
									<i class="sty_i sty_i16" value="16"></i>
									<i class="sty_i sty_i17" value="17"></i>
									<i class="sty_i sty_i18" value="18"></i>

									<!-- 数字部分结束 -->
										
								</div>
								<!-- 号码结束 -->
								<div class="clear"></div>
							</div>

						<!-- 前二跨度 -->
							<div class="styles " data-view="qianerkuadu" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="kuadu">跨度</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 前二组选复式 -->
							<div class="styles " data-view="qianerzuxuanfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuxuan">组选</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 前二组选单式 -->
 <div class="styles " data-view="qianerzuxuandanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>


							<!-- 前二组选和值 -->
							<div class="styles " data-view="qianerzuxuanhezhi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuxuanhezhi">组选和值</span>
									<!-- 数字部分开始 -->

										<i class="sty_i sty_i1" value="1"></i>
										<i class="sty_i sty_i2" value="2"></i>
										<i class="sty_i sty_i3" value="3"></i>
										<i class="sty_i sty_i4" value="4"></i>
										<i class="sty_i sty_i5" value="5"></i>
										<i class="sty_i sty_i6" value="6"></i>
										<i class="sty_i sty_i7" value="7"></i>
										<i class="sty_i sty_i8" value="8"></i>
										<i class="sty_i sty_i9" value="9"></i>
										<i class="sty_i sty_i10" value="10"></i>
										<i class="sty_i sty_i11" value="11"></i>
										<i class="sty_i sty_i12" value="12"></i>
										<i class="sty_i sty_i13" value="13"></i>
										<i class="sty_i sty_i14" value="14"></i>
										<i class="sty_i sty_i15" value="15"></i>
										<i class="sty_i sty_i16" value="16"></i>
										<i class="sty_i sty_i17" value="17"></i>
									<!-- 数字部分结束 -->
									
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

							<!-- 前二组选包胆 -->
							<div class="styles " data-view="qianerzuxuanbaodan" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="gewei">个位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 后二复式 -->
							<div class="styles " data-view="houerfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="wanwei">万位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="qianwei">千位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 后二单式 -->
 <div class="styles " data-view="houerdanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>

<!-- 后二和值 -->
							<div class="styles " data-view="houerhezhi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="hezhi">和值</span>
									<!-- 数字部分开始 -->
									
									<i class="sty_i sty_i0" value="0"></i>
									<i class="sty_i sty_i1" value="1"></i>
									<i class="sty_i sty_i2" value="2"></i>
									<i class="sty_i sty_i3" value="3"></i>
									<i class="sty_i sty_i4" value="4"></i>
									<i class="sty_i sty_i5" value="5"></i>
									<i class="sty_i sty_i6" value="6"></i>
									<i class="sty_i sty_i7" value="7"></i>
									<i class="sty_i sty_i8" value="8"></i>
									<i class="sty_i sty_i9" value="9"></i>
									<i class="sty_i sty_i10" value="10"></i>
									<i class="sty_i sty_i11" value="11"></i>
									<i class="sty_i sty_i12" value="12"></i>
									<i class="sty_i sty_i13" value="13"></i>
									<i class="sty_i sty_i14" value="14"></i>
									<i class="sty_i sty_i15" value="15"></i>
									<i class="sty_i sty_i16" value="16"></i>
									<i class="sty_i sty_i17" value="17"></i>
									<i class="sty_i sty_i18" value="18"></i>

									<!-- 数字部分结束 -->
										
								</div>
								<!-- 号码结束 -->
								<div class="clear"></div>
							</div>

						<!-- 后二跨度 -->
							<div class="styles " data-view="houerkuadu" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="kuadu">跨度</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 后二组选复式 -->
							<div class="styles " data-view="houerzuxuanfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuxuan">组选</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 后二组选单式 -->
 <div class="styles " data-view="houerzuxuandanshi" is="off">
                            <a type="file" href="javascript:;" class="enter">导入注单<input type="file"/></a>
                            <div class="text style1" >
                            <span name="zhudan"></span>
                                <div class="bg"></div>
                                <textarea is="on" class="textarea" value="">
                            </textarea>
                                <div class="txt">
                                    <p>
                                        说明：<br /> 1、支持常见的各种单式格式，间隔符如： 换行符 回车 逗号 分号等<br />
                                        2、上传文件后缀必须是.txt格式,最大支持10万注，并支持拖拽文件到文本框进行上传<br />
                                        3、文件较大时会导致上传时间较长，请耐心等待！
                                    </p>
                                    <p class="p1">格式范例：12345 23456 88767 33021 98897</p>
                                </div>
                            </div>
                            <div class="ds_btn">
                                <a href="javascript:;" class="error fl">清理错误与重复</a> <a
                                    href="javascript:;" class="del fl">清空文本框</a>
                            </div>
                        </div>


							<!-- 后二组选和值 -->
							<div class="styles " data-view="houerzuxuanhezhi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuxuanhezhi">组选和值</span>
									<!-- 数字部分开始 -->

										<i class="sty_i sty_i1" value="1"></i>
										<i class="sty_i sty_i2" value="2"></i>
										<i class="sty_i sty_i3" value="3"></i>
										<i class="sty_i sty_i4" value="4"></i>
										<i class="sty_i sty_i5" value="5"></i>
										<i class="sty_i sty_i6" value="6"></i>
										<i class="sty_i sty_i7" value="7"></i>
										<i class="sty_i sty_i8" value="8"></i>
										<i class="sty_i sty_i9" value="9"></i>
										<i class="sty_i sty_i10" value="10"></i>
										<i class="sty_i sty_i11" value="11"></i>
										<i class="sty_i sty_i12" value="12"></i>
										<i class="sty_i sty_i13" value="13"></i>
										<i class="sty_i sty_i14" value="14"></i>
										<i class="sty_i sty_i15" value="15"></i>
										<i class="sty_i sty_i16" value="16"></i>
										<i class="sty_i sty_i17" value="17"></i>
									<!-- 数字部分结束 -->
									
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

							<!-- 后二组选包胆 -->
							<div class="styles " data-view="houerzuxuanbaodan" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="gewei">个位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>

<!-- 一星组选包胆 -->
							<div class="styles " data-view="yixingfushi" is="off">
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="wanwei">万位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="qianwei">千位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="baiwei">百位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="shiwei">十位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="gewei">个位</span>
									<!-- 数字部分开始 -->
									<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i"
										value="1"></i> <i class="sty_i2 sty_i" value="2"></i> <i
										class="sty_i3 sty_i" value="3"></i> <i class="sty_i4 sty_i"
										value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
										class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i"
										value="7"></i> <i class="sty_i8 sty_i" value="8"></i> <i
										class="sty_i9 sty_i" value="9"></i>
									<!-- 数字部分结束 -->
									<span class="sty_s1 sty_s11">全</span> <span
										class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
									<span class="sty_s1 sty_s14">奇</span> <span
										class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
									<div class="clear"></div>
								</div>
								<!-- 号码结束 -->
							</div>



						</div>
						<div class="btn">
							<input class="btnA" value="确认验证" type="submit" />
						</div>
					</div>



					<div class="kind_r fr">
						<p>
							<span class="span1">奖期</span><span class="span2">开奖</span>
						</p>
						<ul class="kind_u">
							<li><span class="li_s1">0111090</span> <span class="li_s2">1</span>
								<span class="li_s2 li_s3">2</span> <span class="li_s2">3</span>
								<span class="li_s2">4</span> <span class="li_s2">5</span></li>
							<li><span class="li_s1">0111090</span> <span
								class="li_s2 li_ss">1</span> <span class="li_s2 li_ss">2</span>
								<span class="li_s2 li_ss">3</span> <span class="li_s2 li_ss">4</span>
								<span class="li_s2 li_ss">5</span></li>
							<li><span class="li_s1">0111090</span> <span
								class="li_s2 li_ss">1</span> <span class="li_s2 li_ss">2</span>
								<span class="li_s2 li_ss">3</span> <span class="li_s2 li_ss">4</span>
								<span class="li_s2 li_ss">5</span></li>
							<li><span class="li_s1">0111090</span> <span
								class="li_s2 li_ss">1</span> <span class="li_s2 li_ss">2</span>
								<span class="li_s2 li_ss">3</span> <span class="li_s2 li_ss">4</span>
								<span class="li_s2 li_ss">5</span></li>
							<li><span class="li_s1">0111090</span> <span
								class="li_s2 li_ss">1</span> <span class="li_s2 li_ss">2</span>
								<span class="li_s2 li_ss">3</span> <span class="li_s2 li_ss">4</span>
								<span class="li_s2 li_ss">5</span></li>
							<li><span class="li_s1">0111090</span> <span
								class="li_s2 li_ss">1</span> <span class="li_s2 li_ss">2</span>
								<span class="li_s2 li_ss">3</span> <span class="li_s2 li_ss">4</span>
								<span class="li_s2 li_ss">5</span></li>
							<li><span class="li_s1">0111090</span> <span
								class="li_s2 li_ss">1</span> <span class="li_s2 li_ss">2</span>
								<span class="li_s2 li_ss">3</span> <span class="li_s2 li_ss">4</span>
								<span class="li_s2 li_ss">5</span></li>
							<li><span class="li_s1">0111090</span> <span
								class="li_s2 li_ss">1</span> <span class="li_s2 li_ss">2</span>
								<span class="li_s2 li_ss">3</span> <span class="li_s2 li_ss">4</span>
								<span class="li_s2 li_ss">5</span></li>
							<li><span class="li_s1">0111090</span> <span
								class="li_s2 li_ss">1</span> <span class="li_s2 li_ss">2</span>
								<span class="li_s2 li_ss">3</span> <span class="li_s2 li_ss">4</span>
								<span class="li_s2 li_ss">5</span></li>
							<li><span class="li_s1">0111090</span> <span
								class="li_s2 li_ss">1</span> <span class="li_s2 li_ss">2</span>
								<span class="li_s2 li_ss">3</span> <span class="li_s2 li_ss">4</span>
								<span class="li_s2 li_ss">5</span></li>
						</ul>
						<a href="javascript:;" class="look">查看完整走势</a>
					</div>
					<div class="clear"></div>
				</div>
			</form>
			<!-- 选择种类结束 -->
			<!-- 显示列表开始 -->
			<div class="lists">
				<div class="list">
					<p>
						<span>重庆时时彩</span> <span>后二复式 </span>选号<b>01234567</b>
					</p>
					<table class="table">
						<thead>
						<tr class="tr1">
								<td class="td1">期号</td>
								<td class="td2">分布图</td>
								<td class="td3">开奖号码</td>
								<td class="td4">状态</td>
							</tr>
							</thead>
							<tbody>
							
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4 colors">已中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4">未中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4">未中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4">未中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4 colors">已中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4 colors">已中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4">未中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4">未中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4">未中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4">未中奖</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4">未中奖</td>
							</tr>
							<tr class="tr1 tr2 noBorder">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">###45</td>
								<td class="td3">45263</td>
								<td class="td4">未中奖</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 显示列表结束 -->
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
	<script src="<%=basePath%>resources/js/game/ajaxfileupload.js"></script>

	<script type="text/javascript">
	
		(function() {
			//首页种类分类导航
			$(".nva_w,.nav_w>a").click(function() {
				$(this).addClass("current").siblings().removeClass("current");
				$(this).attr("is", "on").siblings().attr("is", "off");
				var sNavValue=$(this).attr("value");
				console.log($(".kind_f>div[data-view="+sNavValue+"]"));
				$(".kind_f>div[data-view="+sNavValue+"]").css("display","block");
				$(".kind_f>div[data-view="+sNavValue+"]").siblings("div[data-view]").css("display","none");		
				
			})
			
			
			//直选切换/组选切换
			$(".zx").click(
					function() {
						$(this).parents(".kind_f").find(".zx").removeClass(
								"cur");
						$(this).parents(".kind_f").find(".zx")
								.attr("is", "off");
						$(this).attr("is", "on");
						$(this).addClass("cur");

						var viewname = util.wanfatype + $(this).attr("value");
						$(".kind .wfsj .styles[data-view=" + viewname + "]")
								.attr("is", "on");
						$(".kind .wfsj .styles[data-view!=" + viewname + "]")
								.attr("is", "off");
					})

			$(".nav>div").click(function() {

				var oForm = document.getElementById("gameForm");
				new util.getGameData(oForm);
				console.log(util.wanfatype + "       " + util.wanfainfo);
				$(".kind div[data-view="+util.wanfatype+"] .kind1:nth-child(1) span:nth-child(2)").trigger('click');
			})
			
			$(".styles textarea").focus(function(){
				$(".txt").css("display","none");
			});
			$(".styles textarea").blur(function(){
				if($(this).attr("value").trim()=="")
				$(".txt").css("display","block");
			});	
			
			$(".styles input[type=file]").change(function(){
				var input=this;
				var file=this.files[0];
				console.log(this.files);
				var xhr = new XMLHttpRequest();
				  xhr.onload = function() {
					var d = JSON.parse(this.responseText);
					$(input).parents(".styles").find("textarea").attr("value",d.data);
					$(".txt").css("display","none");
				} 
				 xhr.open('post', "/game/json/upload.do", true);
				xhr.setRequestHeader('X-Request-With', 'XMLHttpRequest');
				var oFormData = new FormData();	
				oFormData.append('file', file);
				xhr.send(oFormData);
			}
			);
			
		})()

		function a() {
		}
		(function() {
			var formid = "gameForm";
			var method = "post";
			var url = "/game/json/gameForm";
			var oForm = document.getElementById(formid);

			var success = function(result) {
				switch (result) {
				case 1:
					alert("查询条件有误");
					break;
				default:
				$(".list table tbody tr").remove();
				for(var i=0;i<result.length;i++){
					$(".list table tbody").append('<tr class="tr1 tr2">\
					<td class="td1">'+result[i][0]+'</td>\
					<td class="td2 colors dash">'+result[i][1]+'</td>\
					<td class="td3">'+result[i][2]+'</td>\
					<td class="td4">'+result[i][3]+'</td>\
				</tr>')
				}
				var aTd=$(".list td");
				for(var i=0;i<aTd.length;i++){
					if(aTd[i].innerHTML=="已中奖"){
						$(aTd[i]).addClass("colors");
					}
				}
				
				}
			}

			oForm.onsubmit = function(e) {

				e.preventDefault();
				var data = new util.getGameData(oForm);
				$.ajax({
					type : method,
					url : url,
					data : data,
					dataType : 'json',
					success : success,
					error : null
				});
			}

		})()
	</script>
</body>
</html>
