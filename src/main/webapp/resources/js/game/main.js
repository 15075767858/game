/**
 * Created by Administrator on 2016/1/28.
 */
// 登陆验证码码
function loadimage() {
	document.getElementById("randImage").src = "/game/resources/images/image.jsp?"
			+ Math.random();
}

var util = {};

util.userForm = function(formid, type, url, attr, success, error) {
	this.oFrom = document.getElementById(formid);
	if (this.oFrom == null) {
		// console.log("error this id for "+formid+" form not find");
		return;
	}
	this.type = type;
	this.url = url;
	this.attr = attr;
	var _this = this;
	this.data = function() {
		var datas = {};
		var aInput = $(_this.oFrom).find(
				"input[" + attr + "],select[" + attr + "]");
		for (var i = 0; i < aInput.length; i++) {
			datas[$(aInput[i]).attr(attr)] = $(aInput[i]).val();
		}
		datas.startdate = new Date(datas.startdate).getTime();
		datas.enddate = new Date(datas.enddate).getTime();
		console.log(datas);
		return datas;
	};
	this.error = error || function(result) {
		document.write(result.responseText);
	};
	this.oFrom.onsubmit = function submitevent(e) {

		e.preventDefault();
		$.ajax({
			type : _this.type,
			url : _this.url,
			data : _this.data(),
			dataType : 'json',
			success : success,
			error : _this.error
		});
	};
};

util.getfenbuData = function(oForm, attr) {
	var datas = {};
	var aDiv = $(oForm).find("*[" + attr + "]");
	for (var i = 0; i < aDiv.length; i++) {
		var aI = $(aDiv[i]).find("i");
		var str = "";
		for (var j = 0; j < aI.length; j++) {
			if ($(aI[j]).attr("is") == "on")
				str += $(aI[j]).attr("value") + " ";
		}
		datas[$(aDiv[i]).attr(attr)] = str.substring(0, str.length - 1);
	}
	console.log(datas);
	return datas;
};
util.wanfatype = "wuxing";
util.wanfainfo = "zuxuan120";
util.getGameData = function(oForm) {
	var datas = {};
	var oNav = $(oForm).find(".nav")[0];
	// 得到玩法类型 wanfatype = wuxing
	var sNavName = $(oNav).attr("name");
	var sNavValue = $($(oNav).find(" div[is=on]")[0]).attr("value");
	datas[sNavName] = sNavValue;

	// 得到玩法信息
	var oWanFaInfo = $(oForm).find(
			"div[data-view=" + sNavValue + "] div[name=wanfainfo]")[0];
	console.log(oWanFaInfo);
	var oWanFaInfoVal = $($(oWanFaInfo).find(" span[is=on]")[0]).attr("value");
	console.log("wanfainfo        " + oWanFaInfo + "    oWanFaInfoVal      "
			+ oWanFaInfoVal);
	datas["wanfainfo"] = oWanFaInfoVal;

	// 设置玩法类型 和玩法信息
	util.wanfatype = sNavValue;
	util.wanfainfo = oWanFaInfoVal;
	// 得到选择的值
	var aWfsjModel = $(
			$(oForm).find(
					".kind .wfsj>div[data-view=" + util.wanfatype
							+ util.wanfainfo + "]")[0]).find(".style1");
	for (var i = 0; i < aWfsjModel.length; i++) {
		var aI = $(aWfsjModel[i]).find("i,textarea");

		var str = "";
		for (var j = 0; j < aI.length; j++) {
			if ($(aI[j]).attr("is") == "on") {
				str += $(aI[j]).attr("value") + " ";
			}
		}
		datas[$(aWfsjModel[i]).find("span[name]").attr("name")] = str
				.substring(0, str.length - 1);
	}

	// " span[name]").attr("name")
	console.log(datas);

	return datas;
};

$(document).ready(function() {
	$(document).bind("contextmenu", function(e) {
		return false;
	});
});
