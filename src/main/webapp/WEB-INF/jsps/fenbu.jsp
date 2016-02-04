<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
		<div class="main_w wrap">
			<!-- 主体头部开始-->
			<div class="ma_t">
				<i class="icon_c fl"></i>
				<!-- 离投注截止时间 -->
				<div class="time fl">
					<p>
						第<span>20160111-051</span>期<br />离投注截止还有
					</p>
					<i class="data_pic1 date" id="min0"></i> <i class="data_pic2 date" id="min1"></i> <i
						class="data_pic3"></i> <i class="data_pic4 date" id="sec0"></i> <i
						class="data_pic5 noMargin date" id="sec1"></i>
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
			<!-- 选择种类开始 -->
			<div class="kind">
				<form id="lengreForm" method="post">
					<div class="kind_f fl">
						<!-- 首页部分 -->
						<div class="styles index" >
							<!-- 位置开始 -->
							<div class="style1 dec" name="weizhi">
								<span class="sty_t">位置</span>
								<!-- 数字部分开始 -->
								<i class="txt_i0 txt_i" value="wan"></i> <i class="txt_i1 txt_i" value="qian"></i> <i
									class="txt_i2 txt_i" value="bai"></i> <i class="txt_i3 txt_i" value="shi"></i> <i
									class="txt_i4 txt_i" value="ge"></i>
								<!-- 数字部分结束 -->
								<span class="sty_s2 sty_s21">五星</span> <span
									class="sty_s2 sty_s22">四星</span> <span class="sty_s2 sty_s23">前三</span>
								<span class="sty_s2 sty_s24">中三</span> <span
									class="sty_s2 sty_s25">后三</span> <span class="sty_s2 sty_s26">前二</span>
								<span class="sty_s2 sty_s27">后二</span> <span
									class="sty_s2 sty_s28">后一</span>
								<div class="clear"></div>
							</div>
							<!-- 位置结束 -->
							<!-- 号码开始 -->
							<div class="style1" name="haoma">
								<span class="sty_t">号码</span>
								<!-- 数字部分开始 -->
								<i class="sty_i0 sty_i" value="0"></i> <i class="sty_i1 sty_i" value="1"></i> <i
									class="sty_i2 sty_i" value="2"></i> <i class="sty_i3 sty_i" value="3"></i> <i
									class="sty_i4 sty_i" value="4"></i> <i class="sty_i5 sty_i" value="5"></i> <i
									class="sty_i6 sty_i" value="6"></i> <i class="sty_i7 sty_i" value="7"></i> <i
									class="sty_i8 sty_i" value="8"></i> <i class="sty_i9 sty_i" value="9"></i>
								<!-- 数字部分结束 -->
								<span class="sty_s1 sty_s11">全</span> <span
									class="sty_s1 sty_s12">大</span> <span class="sty_s1 sty_s13">小</span>
								<span class="sty_s1 sty_s14">奇</span> <span
									class="sty_s1 sty_s15">偶</span> <span class="sty_s1 sty_s16">清</span>
								<div class="clear"></div>
							</div>
							<!-- 号码结束 -->
							<!-- 期号开始 -->
							<div class="style1 noBorder" name="qihao">
								<span class="sty_t">期号</span>
								<!-- 数字部分开始 -->
								<i class="num_i0 num_i num_cur" value="jin30qi" is="on"></i> <i class="num_i1 num_i" value="jin50qi" is="off"></i>
								<i class="num_i2 num_i" value="jintian" is="off"></i> <i class="num_i3 num_i" value="jin2tian" is="off"></i> <i
									class="num_i4 num_i" value="jin5tian" is="off"></i>
								<!-- 数字部分结束 -->
								<div class="rq" >
									<input id="time1" type="text"
										onfocus="var time2=$dp.$('time2');WdatePicker({onpicked:function(){time2.focus();},maxDate:'#F{$dp.$D(\'time2\')}',dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
									<span>至</span> <input id="time2" type="text" 
										onfocus="WdatePicker({minDate:'#F{$dp.$D(\'time1\')}',dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
								</div>
								<div class="clear"></div>
							</div>
							<!-- 期号结束 -->
						</div>
						<div class="btn">
						
							 <input type="submit" value="确认验证" class="btnA" />
						</div>
					</div>
				</form>

				<div class="kind_r fr">
					<p>
						<span class="span1">奖期</span><span class="span2">开奖</span>
					</p>


					<ul class="kind_u">

						<c:forEach items="${kaijianglist}" varStatus="i" var="k">
							<li><span class="li_s1">${k[0]}</span> <span class="li_s2">${fn:substring(k[1], 0, 1)}</span>
								<span class="li_s2">${fn:substring(k[1], 1, 2)}</span> <span
								class="li_s2">${fn:substring(k[1], 2, 3)}</span> <span
								class="li_s2">${fn:substring(k[1], 3, 4)}</span> <span
								class="li_s2">${fn:substring(k[1], 4, 5)}</span></li>
						</c:forEach>

					</ul>
					<a href="javascript:;" class="look">查看完整走势</a>
				</div>
				<div class="clear"></div>
			</div>
			<!-- 选择种类结束 -->
			<!-- 显示列表开始 -->
			<div class="lists">
				<div class="list">
					<p>
						<span>分布图</span> <span>后四 </span><b>01</b>
					</p>
					<table class="table" id="lengreTable">
						<tbody>
							<tr class="tr1">
								<td class="td1">期号</td>
								<td class="td2">分布图</td>
								<td class="td3">开奖号码</td>
								<td class="td4">十位</td>
								<td class="td3">个位</td>
								<td class="td4">龙虎</td>
								<td class="td4">后三</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td> 
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
							</tr>
							<tr class="tr1 tr2 noBorder">
								<td class="td1">0123456789</td>
								<td class="td2 colors dash">#*#45</td>
								<td class="td3">45263</td>
								<td class="td4">小单</td>
								<td class="td3">小双</td>
								<td class="td3">龙</td>
								<td class="td3">组六</td>
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
	<script src="<%=basePath%>resources/js/My97DatePicker/WdatePicker.js"></script>
	<script src="<%=basePath%>resources/js/game/selectivizr.js"></script>
	<script src="<%=basePath%>resources/js/game/main.js"></script>
	<script src="<%=basePath%>resources/js/game/content.js"></script>
	<script src="<%=basePath%>resources/js/game/kj-calc-time.js"></script>
	
	<script>
		$(".kind_u>li>span.li_s2:nth-last-child(n)").addClass("li_ss");
		$(".kind_u>li:nth-child(1)>.li_s2:nth-child(n)").removeClass("li_ss");

		//冷热分布
		(function(){
			var formid = "lengreForm";
			
			var attr="name";
			var method = "post";
			var url = "/game/json/lengre";
			var success = function(result) {
				switch (result) {
				case 1:
					alert("输入有误请重新输入");
					break;
				default:
				$("#lengreTable .tr2").remove();
				for(var i=0;i<result.length;i++){
				$("#lengreTable tbody").append('<tr class="tr1 tr2">\
				<td class="td1">'+result[i][0]+'</td>\
				<td class="td2 colors dash">'+result[i][1]+'</td>\
				<td class="td3">'+result[i][2]+'</td>\
				<td class="td4">'+result[i][3]+'</td>\
				<td class="td3">'+result[i][4]+'</td>\
				<td class="td3">'+result[i][5]+'</td>\
				<td class="td3">'+result[i][6]+'</td>\
			</tr>')
			};

					console.log(result[0][0]);
					break;
				}
			}
			var oForm=document.getElementById(formid);
			oForm.onsubmit=function (e) {
				e.preventDefault();
				var data=new util.getfenbuData(this,attr);
				var starttime=$("#time1").val();	
				var endtime=$("#time2").val();
				data["starttime"]=starttime;
				data["endtime"]=endtime;
				data["wanfa"]="lengre";
				
				console.log(data);
				$.ajax({
					type :method,
					url :url,
					data :data,
					dataType : 'json',
					success :success
				});
			};
			
		}		
		)()

		$(".index").css("display","block");
	</script>
</body>
</html>
