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
					<div class="nva_w fl" value="erxing">
						<a href="javascript:;">二星</a>
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
						<!-- 玩法信息显示层控制 -->
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

						<!-- 玩法数据号码控制 -->
						<div class="wfsj">
							<!-- 五星组选120 -->
							<div class="styles " data-view="wuxingzuxuan120" is=on>
								<!-- 号码开始 -->
								<div class="style1">
									<span class="sty_t" name="zuxuan120">组选</span>
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
						<tbody>
							<tr class="tr1">
								<td class="td1">期号</td>
								<td class="td2">分布图</td>
								<td class="td3">开奖号码</td>
								<td class="td4">状态</td>
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

	<script type="text/javascript">
		(function() {
			//首页种类分类导航
			$(".nva_w").click(function() {
				$(this).addClass("current").siblings().removeClass("current");
				$(this).attr("is", "on").siblings().attr("is", "off");
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
				alert(util.wanfatype + "       " + util.wanfainfo);
			})

		})()

		function a(){}
		(function() {
			var formid = "gameForm";
			var method = "post";
			var url = "/game/json/gameForm";
			var oForm = document.getElementById(formid);
			var data = new util.getGameData(oForm);

			var success = function(result) {
				switch (result) {
				case 0:
					alert("修改成功");
					break;
				case 1:
					alert("用户名已经存在");
					break;
				default:
					alert( result);
					break;
				}
			}

			oForm.onsubmit = function (e) {
				e.preventDefault();
				alert(util.wanfatype + "       " + util.wanfainfo);
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
