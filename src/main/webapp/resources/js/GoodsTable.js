$(document).ready(getGoodsData("", ""));

function getGoodsData(mingcheng, guige, currentPage) {
	if (currentPage == null || currentPage == "")
		currentPage = 1;
	$
			.post(
					"json/findGoodsAll",
					{
						mingcheng : mingcheng,
						guige : guige,
						currentPage : currentPage
					},
					function(json) {
						$("#goodstable tbody  tr").remove("");
						var goodslist = json['goodslist'];
						for (var x = 0; x < goodslist.length; x++) {
							var goods = goodslist[x];
							var checkbox = "<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input onclick=deleteAllButton(this); type='checkbox' value="
									+ goods.id
									+ " name="
									+ goods.mingcheng
									+ "></td>";
							var riqi = "<td>"
									+ new Date(goods.riqi).toLocaleDateString()
									+ "</td>";
							var mingcheng = "<td>" + goods.mingcheng + "</td>";
							var guige = "<td>" + goods.guige + "</td>";
							var chandi = "<td>" + goods.chandi + "</td>";
							var lianxiren = "<td>" + goods.lianxiren + "</td>";
							var dianhua = "<td>" + goods.dianhua + "</td>";
							var shuliang = "<td>" + goods.shuliang + "</td>";
							var danwei = "<td>" + goods.danwei + "</td>";
							var shoujia = "<td>" + goods.shoujia + "</td>";
							var heji = "<td>"
									+ (goods.shuliang * goods.shoujia)
									+ "</td>";
							var beizhu = "<td>" + goods.beizhu + "</td>";
							var name = "\"" + goods.mingcheng + "'";

							var chakanxiangxi = "<td><button  class='btn btn-success' onclick='showButton("
									+ goods.id
									+ ")' data-toggle='modal'  type='button'>查看详细</button>&nbsp;&nbsp;&nbsp;";
							var xiugai = "<button class='btn btn-info' onclick='updateButton("
									+ goods.id
									+ ")'  type='button'>修改</button>&nbsp;&nbsp;&nbsp;";
							var shanchu = "<button class='btn btn-warning' onclick='deleteButton("
									+ goods.id
									+ ","
									+ "\""
									+ goods.mingcheng
									+ "\""
									+ ")' data-toggle='modal' data-target='#mymodal-data' type='button'>删除</button></td>";
							/*
							 * var str = "<tr>" + checkbox + riqi + mingcheng +
							 * guige + chandi + lianxiren + dianhua + shuliang +
							 * danwei + shoujia + heji + shanchu + "</tr>";
							 */
							var str = "<tr>" + checkbox + riqi + mingcheng
									+ guige + shoujia + chakanxiangxi + xiugai
									+ shanchu + "</tr>";

							$("#goodstable tbody").append(str);
							// alert(str);
							if (login == false) {
								$("#goodstable button").attr("disabled", "");
								$("#goodstable input[type='checkbox']").attr(
										"disabled", "");
							}
						}
						var guigelist = json["guigelist"];
						var tableguigeinput = $("#tableguigeinput").val();
						$("#tableguigeinput option").remove();

						if (tableguigeinput == null) {
							$("#tableguigeinput").append("<option></option>");
						} else {
							$("#tableguigeinput").append(
									"<option>" + tableguigeinput + "</option>");
						}
						$("#tableguigeinput").append("<option></option>");
						for (var x = 0; guigelist != null
								&& x < guigelist.length; x++) {
							var goods = guigelist[x];

							var guige = "<option>" + goods.guige + "</option>";

							$("#tableguigeinput").append(guige);
						}
						;

						$("#tablePage li").remove();

						var page = json["page"];
						var currentPage = page.currentPage;// 现在的current
						var dbIndex = page.dbIndex;
						var dbNumber = page.dbNumber;
						var pageNumber = page.pageNumber;
						var totalNumber = page.totalNumber;// 全部条数
						var totalPage = page.totalPage;// 全部页面数
						if (currentPage <= 1) {
							$("#tablePage")
									.append(
											"<li class='disabled'><a >&laquo;第一页</a></li>");
						} else {
							$("#tablePage")
									.append(
											"<li ><a href='javascript:goodsSearch(1)'>&laquo;第一页</a></li>");
						}
						;
						/*
						 * alert(dbIndex); alert(dbNumber); alert(pageNumber);
						 * alert(totalNumber);
						 */
						var x = currentPage;
						if (currentPage < 3) {
							x = 1;
						} else {
							x = currentPage - 2;
						}
						;
						var y = x + 4;
						for (x; x < totalPage + 1; x++) {
							if (currentPage != x) {
								$("#tablePage").append(
										"<li><a href='javascript:goodsSearch("
												+ x + ")'>" + x + "</a></li>");
							} else {
								$("#tablePage").append(
										"<li class='disabled'><a  href='javascript:goodsSearch("
												+ x + ")'>" + x + "</a></li>");
							}
							if (x == y) {
								break;
							}
						}
						;
						if (currentPage == totalPage) {
							$("#tablePage")
									.append(
											"<li class='disabled'><a >最后一页&raquo;</a></li>");
						} else {
							$("#tablePage").append(
									"<li ><a href='javascript:goodsSearch("
											+ totalPage
											+ ")'>最后一页&raquo;</a></li>");
						}
						;
					});

};

/* 搜索提交 */

$("#tablemingchenginput").bind("blur", function() {
	goodsSearch();
});

$("#tablemingchenginput").bind("keydown", function(event) {
	if (event.keyCode == 13)
		goodsSearch();
});

// 分页

function goodsSearch(currentPage) {
	var mingcheng = $("#tablemingchenginput").val();
	var guige = $("#tableguigeinput").val();
	getGoodsData(mingcheng, guige, currentPage);
};
function findGoodsByID(id) {
	$.get("json/findGoodsByID", {
		id : id
	}, function(data) {
		var goods = data;
		var riqi = new Date(goods.riqi).toLocaleDateString();
		var mingcheng = goods.mingcheng;
		var guige = goods.guige;
		var chandi = goods.chandi;
		var lianxiren = goods.lianxiren;
		var dianhua = goods.dianhua;
		var shuliang = goods.shuliang;
		var danwei = goods.danwei;
		var shoujia = goods.shoujia;
		var jinjia = goods.jinjia;
		// var heji=(shuliang * shoujia);
		var beizhu = goods.beizhu;
		$("#Griqi").val(riqi);
		$("#Gid").val(id);
		$("#Gmingcheng").val(mingcheng);
		$("#Gguige").val(guige);
		$("#Gchandi").val(chandi);
		$("#Glianxiren").val(lianxiren);
		$("#Gdianhua").val(dianhua);
		$("#Gshuliang").val(shuliang);
		$("#Gdanwei").val(danwei);
		$("#Gjinjia").val(jinjia);
		$("#Gshoujia").val(shoujia);
		$("#Gbeizhu").val(beizhu);
	});
}
function showButton(id) {
	findGoodsByID(id);
	// alert(riqi+mingcheng+guige+chandi+lianxiren+dianhua+shuliang+danwei+shoujia+beizhu);
	$("#findgoodsdiv").hide();
	$("#addgoodsdiv").show();
	$("#addgoodsform input").attr("disabled", "");
	$("#addgoodsform textarea").attr("disabled", "");
	$("#Gsubmit").attr("disabled", "");

};
function updateButton(id) {
	findGoodsByID(id);
	$("#findgoodsdiv").hide();
	$("#addgoodsdiv").show();
	$("#goodstable button").removeAttr("disabled");
	$("#goodstable input[type='checkbox']").removeAttr("disabled");
	// $("#Gsubmit").attr("disabled","");
	$("#addgoodsform button[type='button']:first").attr({
		"onclick" : "addGoodsFrom(" + id + ")"
	});
};

function deleteButton(id, name) {
	$("#popwintit").html("删除信息提示");
	$("#popwinid").val(id);
	$("#popwincon").html(
			"请问您是否要删除商品名称为<strong class='panel-heading'  >" + name
					+ "</strong>的商品");
	$("#popwinsub").attr("onclick", "deleteByID('json/deleteGoodsByID?id=')");
};

function deleteByID(url) {
	var id = $("#popwinid").val();
	$.getJSON(url + id, function(data) {
		if (data == 1) {
			alert("操作成功");
			goodsSearch();
		} else {
			alert("操作失败 错误代码" + data);
		}
		$("#mymodal-data").modal("hide");
		$("#goodstable input[type='checkbox']").prop("checked", false);
		deleteAllButton();

	});
};

function deleteButtonIDS() {
	var checkboxlist = $("#goodstable tbody input[type='checkbox']");
	var names = "";
	var ids = "";
	var cont = 0;
	for (var x = 0; x < checkboxlist.length; x++) {
		var ischeckbox = $(
				"#goodstable tbody input[type='checkbox']:eq(" + x + ")").prop(
				"checked");
		if (ischeckbox == true) {
			var name = $(
					"#goodstable tbody input[type='checkbox']:eq(" + x + ")")
					.attr("name");
			var id = $("#goodstable tbody input[type='checkbox']:eq(" + x + ")")
					.attr("value");
			names += name + " ";
			ids += id + " ";
			cont++;

		}
		;

	}
	;

	$("#popwintit").html("删除信息提示");
	$("#popwinid").val(ids);
	$("#popwincon").html(
			"请问您是否要删除商品名称为<strong class='panel-heading'  >" + names
					+ "</strong>的<strong class='panel-heading'  >" + cont
					+ "项</strong>商品");
	$("#popwinsub").attr("onclick", "deleteByID('json/deleteGoodsByIDS?ids=')");
	// $("#goodstable tbody input[type='checkbox']").prop("checked",true);
};

function allCheck() {
	var check = $("#tableAllCheck").prop("checked");
	if (check == true) {
		$("#goodstable input[type='checkbox']").prop("checked", true);
	} else {
		$("#goodstable input[type='checkbox']").prop("checked", false);

	}
	deleteAllButton();
};
function deleteAllButton() {

	$("#deleteAllButton").removeClass("disabled");
	var checkboxlist = $("#goodstable  input[type='checkbox']");
	for (var x = 0; x < checkboxlist.length; x++) {
		var ischeckbox = $(
				"#goodstable tbody input[type='checkbox']:eq(" + x + ")").prop(
				"checked");
		if (ischeckbox == true) {
			$("#deleteAllButton").attr("data-target", "#mymodal-data")
			return;
		}
	}
	$("#deleteAllButton").addClass("disabled");
	$("#deleteAllButton").removeAttr("data-target");
	// id="deleteAllButton" data-target="#mymodal-data" class="btn btn-warning
	// disabled"
};
$("#PageRefresh").click(findgoods);
$("#exitLoginButton").click(function() {
	location.reload();
});

$("#loginDiv2").hide();
$("#addgoodsdiv").hide();
$("#exitLoginButton").hide();

var cont = 0;

$("#lastGoods").click(function() {
	if (cont <= 0) {
		cont = goodslist.length - 1;
	} else {
		cont--;
	}
	jsongoods();
});
$("#nextGoods").click(function() {
	if (cont + 1 >= goodslist.length) {
		cont = 0;
	} else {
		cont++;
	}
	jsongoods();
});
$("#lastGoods").hide();
$("#nextGoods").hide();
function addgoods() {
	$("#lastGoods").show();
	$("#nextGoods").show();
	cont = 0;
	$("#findgoodsdiv").hide();
	$("#addgoodsdiv").show();
	$("#addgoodsform input").val("");
	$("#addgoodsform textarea").val("");
	$("#addgoodsform button[type='button']:first").attr({
		"onclick" : "addGoodsFrom()"
	});
	$("#addgoodsform input").removeAttr("disabled");
	$("#addgoodsform textarea").removeAttr("disabled");
	$("#Gsubmit").removeAttr("disabled");
	var mydate = new Date();
	var year = mydate.getFullYear(); // 获取完整的年份(4位,1970-????)
	var month = mydate.getMonth() + 1; // 获取当前月份(0-11,0代表1月)
	var day = mydate.getDate(); // 获取当前日(1-31)
	$("#Griqi").val(year + "-" + month + "-" + day);

	$("#Gmingcheng").bind("blur", function() {
		var mingcheng = $("#Gmingcheng").val();
		$.post("json/findGoodsByName", {
			mingcheng : mingcheng
		}, jsongoods);
	});
};
var goodslist = null;
function jsongoods(data) {
	if (data != null) {
		goodslist = data;
	}
	// alert(goodslist.length+"||"+cont);
	var goods = goodslist[cont];
	if (null == goods.riqi) {
	}
	var riqi = new Date(goods.riqi).toLocaleDateString();
	var guige = goods.guige;
	var chandi = goods.chandi;
	var lianxiren = goods.lianxiren;
	var dianhua = goods.dianhua;
	var shuliang = goods.shuliang;
	var danwei = goods.danwei;
	var shoujia = goods.shoujia;
	var jinjia = goods.jinjia;
	// var heji = (goods.shuliang * goods.shoujia);
	var beizhu = goods.beizhu;
	$("#Griqi").val(riqi);
	$("#Gguige").val(guige);
	$("#Gchandi").val(chandi);
	$("#Glianxiren").val(lianxiren);
	$("#Gdianhua").val(dianhua);
	$("#Gshuliang").val(shuliang);
	$("#Gdanwei").val(danwei);
	$("#Gjinjia").val(jinjia);
	$("#Gshoujia").val(shoujia);
	$("#Gbeizhu").val(beizhu);

};

function findgoods() {
	$("#findgoodsdiv").show();
	$("#addgoodsdiv").hide();
};


function addGoodsFrom(id) {
	// var id=$("#Gid").val();
	var riqi = $("#Griqi").val();
	if(riqi.indexOf("/")>0)
	{
	strs=riqi.split("/"); //字符分割 
	var riqi="";
	for (var i=0;strs.length==3 && i<strs.length ;i++ ) 
	{ 
	
	if(i==strs.length-1){
		riqi+=strs[i];
	}else{
		riqi+=strs[i]+"-";
	}
	} ;
		}
	riqi = new Date(riqi).getTime();
	var mingcheng = $("#Gmingcheng").val();
	var guige = $("#Gguige").val();
	var chandi = $("#Gchandi").val();
	var lianxiren = $("#Glianxiren").val();
	var dianhua = $("#Gdianhua").val();
	var shuliang = $("#Gshuliang").val();
	var danwei = $("#Gdanwei").val();
	var jinjia = $("#Gjinjia").val();
	var shoujia = $("#Gshoujia").val();
	var beizhu = $("#Gbeizhu").val();
	if (mingcheng == null && mingcheng == "") {
		alert("名称不能为空！");
		return;
	}
	;
	if (riqi == null && riqi == "") {
		alert("日期不能为空！");
		return;
	}
	;
	var reg = /^[0-9_-]{0,10}$/;
	if (!reg.test(id)) {
		id = "0";
	}
	;
	$.post("json/addGoods", {
		id : id,
		riqi : riqi,
		mingcheng : mingcheng,
		guige : guige,
		chandi : chandi,
		lianxiren : lianxiren,
		dianhua : dianhua,
		shuliang : shuliang,
		danwei : danwei,
		jinjia : jinjia,
		shoujia : shoujia,
		beizhu : beizhu
	}, function(json) {
		if (json == 1) {
			alert("添加成功");
			location.reload();
		}
		;
	});
};
var login = false;
function userLogin() {
	var username = $("#username").val();
	var password = $("#password").val();
	$.post("json/userLogin", {
		username : username,
		password : password
	}, loginlocal);
};
function loginlocal(json) {
	if (json != null && json != "" && json != false) {
		$("#username").hide();
		$("#password").hide();
		$("#loginButton").hide();
		$("#loginDiv2").show();
		$("#exitLoginButton").show();
		$("#goodstable button").removeAttr("disabled");
		$("#goodstable input[type='checkbox']").removeAttr("disabled");
		login = true;
	}
};
$(document).ready(function() {
	$.post("json/isLogin", loginlocal);

});
function userOutLogin() {
	$.post("json/userOutLogin", function(json) {
		location.reload();
	});
};
