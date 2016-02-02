/**
 * Created by Administrator on 2016/1/28.
 */
// 登陆验证码码
function loadimage() {
	document.getElementById("randImage").src = "/game/resources/images/image.jsp?"
			+ Math.random();
}

var util = {};

util.userForm=function (formid, type, url, attr, success, error) {
	this.oFrom = document.getElementById(formid);
	if (this.oFrom == null) {
		console.log("error this id for "+formid+" form not find");
		return;
	}
	this.type = type;
	this.url = url;
	this.attr=attr;
	var _this = this;
	this.data = function() {
		var datas = {};
		var aInput=$(_this.oFrom).find("input["+attr+"]");
		for(var i=0;i<aInput.length;i++){
		datas[$(aInput[i]).attr(attr)]=$(aInput[i]).val();
		}
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

util.getGameData = function(oFrom,attr) {
	var datas = {};
	var aDiv=$(oFrom).find("*["+attr+"]");
	
	for(var i=0;i<aDiv.length;i++){
		var aI=$(aDiv[i]).find("i");
		var str="";
		for(var j=0;j<aI.length;j++){
			if($(aI[j]).attr("is")=="on")
			str+=$(aI[j]).attr("value");
			
		}
		datas[$(aDiv[i]).attr(attr)]=str;
	}
	
	console.log(datas);

	return datas;
};



$(function(){
	var oFrom = $("#lengreForm");
	var attr="name";
	var method = "post";
	var url = "/game/json/lengre";
	var success = function(result) {
		switch (result) {
		case 0:
			alert("登陆成功");
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
	
	oFrom.submit(function() {
		var data=new util.getGameData(oFrom,attr);
		data["wanfa"]="lengre";
		console.log(data);
		alert(data)
		e.preventDefault();
		$.ajax({
			type :"post",
			url : "/game/json/lengre",
			data : data,
			dataType : 'json',
			success : function(a){alert(a)}
		});
	});
	
}		
)



// 用户登录部分
$(function () {
	var formid = "loginFrom";
	var attr="name";
	var method = "post";
	var url = "/game/json/userLogin";
	var success = function(result) {
		switch (result) {
		case 0:
			alert("登陆成功");
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

// 用户注册部分
(function () {
	var formid = "registerForm";
	var attr ="name";
	var method = "post";
	var url = "/game/json/userRegister";
	var success = function(result) {
		switch (result) {
		case 0:
			alert("注册成功");
			break;
		case 1:
			alert("用户名已经存在");
			break;
		case 2:
			alert("两次密码密码不一致");
			break;
		default:
			alert(result);
			break;
		}
	}
	new util.userForm(formid, method, url, attr, success);
})();

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
			alert("用户名已经存在");
			break;
		default:
			alert("修改成功新的用户名是"+result);
			break;
		}
	}
	new util.userForm(formid, method, url, attr, success);
})();
 


