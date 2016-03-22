$(function(){
	//头部列表部分
	$(".head_u li a").click(function(){
		$(this).addClass("current").parent().siblings().children("a").removeClass("current");
		
	})
	$(".tan").click(function(){
		$(this).children(".cai").toggle();
	})
	//小彩球按钮
	$(".small").click(function(){
		$(this).next().toggle();
	})
	
	
	//数字切换
	$(".sty_i").attr("is","off");
	$(".sty_i").click(function(){
		var $this = $(this);
		//$(this).addClass("style_cur").attr("is","on");
		if($this.attr("is") == "off"){
			$this.addClass("style_cur").attr("is","on");
		}else{
			$this.removeClass("style_cur").attr("is","off");
		}
	})
	
	$(".sty_s1").click(function(){
		var $this = $(this);
		$(this).addClass("curr").siblings().removeClass("curr");
	})
	
	//快捷按钮部分  
	$(".style1").each(function() {
        var $this = $(this);
		$this.children(".sty_s11").click(function(){
			$this.children("i").addClass("style_cur").attr("is","on");
		}) //全
		$this.children(".sty_s12").click(function(){
			$this.children("i").removeClass("style_cur").attr("is","off");
			$this.children("i:gt(4)").addClass("style_cur").attr("is","on");
		}) //大
		$this.children(".sty_s13").click(function(){
			$this.children("i").removeClass("style_cur").attr("is","off");
			$this.children("i:lt(5)").addClass("style_cur").attr("is","on");
		}) //小
		$this.children(".sty_s14").click(function(){
			$this.children("i").removeClass("style_cur").attr("is","off");
			$this.children("i:odd").addClass("style_cur").attr("is","on");
		}) //奇
		$this.children(".sty_s15").click(function(){
			$this.children("i").removeClass("style_cur").attr("is","off");
			$this.children("i:even").addClass("style_cur").attr("is","on");
		}) //偶
		$this.children(".sty_s16").click(function(){
			$this.children("i").removeClass("style_cur").attr("is","off");
		}) //清
    });
	
	//组件切换部分
	//复式
	$(".zx_fs").click(function(){
		$(".index,.ds,.zs,.zxhz").hide();
		$(".fs").show();
	})
	//单式
	$(".zx_ds").click(function(){
		$(".index,.fs,.zs,.zxhz").hide();
		$(".ds").show();
	})
	//直选和值
	$(".zx_zxhz").click(function(){
		$(".index,.ds,.zs,.fs").hide();
		$(".zxhz").show();
	})
	//组三
	$(".zx_zs").click(function(){
		$(".index,.ds,.fs,.zxhz").hide();
		$(".zs").show();
	})
	
	//home页面单式清空文本框部分
	$(".del").click(function(){
		$(".txt").remove();
		$(".textarea").html("").css("color","#444");
	})
	
	
	
	
	
	
	//冷热分布图页面
	//位置切换部分
	$(".txt_i").attr("is","off");
	$(".txt_i").click(function(){
		//$(this).addClass("txt_cur");
		var $this = $(this);
		if($this.attr("is") == "off"){
			$this.addClass("txt_cur").attr("is","on");
		}else{
			$this.removeClass("txt_cur").attr("is","off");
		}
	})
	$(".sty_s2").click(function(){
		$(this).addClass("currs").siblings().removeClass("currs");
	})
	$(".dec").each(function() {
        var $this = $(this);
		$this.children(".sty_s21").click(function(){
			$this.children("i").addClass("txt_cur").attr("is","on");
		}) //五星
		$this.children(".sty_s22").click(function(){
			$this.children("i").removeClass("txt_cur").attr("is","off");
			$this.children("i:gt(0)").addClass("txt_cur").attr("is","on");
		}) //四星
		$this.children(".sty_s23").click(function(){
			$this.children("i").removeClass("txt_cur").attr("is","off");
			$this.children("i:lt(3)").addClass("txt_cur").attr("is","on");
		}) //前三
		$this.children(".sty_s24").click(function(){
			$this.children("i").removeClass("txt_cur").attr("is","off");
			$this.children("i:gt(0):lt(3)").addClass("txt_cur").attr("is","on");
		}) //中三
		$this.children(".sty_s25").click(function(){
			$this.children("i").removeClass("txt_cur").attr("is","off");
			$this.children("i:gt(1)").addClass("txt_cur").attr("is","on");
		}) //后三
		$this.children(".sty_s26").click(function(){
			$this.children("i").removeClass("txt_cur").attr("is","off");
			$this.children("i:lt(2)").addClass("txt_cur").attr("is","on");
		}) //前二
		$this.children(".sty_s27").click(function(){
			$this.children("i").removeClass("txt_cur").attr("is","off");
			$this.children("i:gt(2)").addClass("txt_cur").attr("is","on");
		}) //后二
		$this.children(".sty_s28").click(function(){
			$this.children("i").removeClass("txt_cur").attr("is","off");
			$this.children("i:gt(3)").addClass("txt_cur").attr("is","on");
		}) //后一
    });	

	
	//期号切换部分
	$(".num_i").click(function(){
		$(this).addClass("num_cur").siblings().removeClass("num_cur");
		$(this).attr("is","on").siblings().attr("is","off");
		
	})
	
	
	//用户管理页面 付费下拉菜单部分
	$(".data").each(function() {
        var $this = $(this);
		$this.val("未付费");
		$this.click(function(){
			$this.next().show();
			$this.next().children().click(function(){
				$this.val($(this).text());
				$(this).parent().hide();
			})
		})
    });
	
	//复选框部分
	$(".check").attr("is","off");
	$(".check").click(function(){
		var $this = $(this);
		if($this.attr("is") == "off"){
			$this.addClass("chec").attr("is","on");
		}else{
			$this.removeClass("chec").attr("is","off");
		}
	})
	

	
	
})