<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>垂直堆叠的导航</title>
<link rel="stylesheet" href="/goodsmanager/resources/css/bootstrap.min.css">
<style type="text/css">
.pro{width:300px;}
</style>
</head>
<body>
<ul class="pager">
<li class="previous "><a>鑫港仪器仪表管理系统</a></li>
<li class="next"><a>注销</a></li>
<li class="next"><a>登陆</a></li>
</ul>
<button class="btn " type="button">按钮</button>

<div class="pro" >
<ul class="nav nav-pills nav-stacked">
    <li class="active"><a href="##">商品介绍</a></li>
     <li><a href="javascript:clickajax()">规格参数</a></li>
     <li><a href="##">商品评价</a></li>
     <li><a href="##">售后保证</a></li>
</ul>
</div>
<ul class=" nav nav-tabs nav-justified nav-pills">
<li class="active"><a>css</a></li>
<li ><a href="">css</a></li>
<li ><a href="">css</a></li>
<li ><a href="">css</a></li>
</ul>
<div class="table-responsive " >
<table class="table table-bordered table-striped table-hover">
<thead>
<tr>
<th>日期</th>
<th>名称</th>
<th>规格</th>
<th>产地</th>
<th>联系人</th>
<th>电话</th>
<th>数量</th>
<th>单位</th>
<th>售价</th>
<th>合计</th>
<th>备注</th>
<th>删除</th>
</tr>
</thead>
<tbody>
<tr>
<td>啊</td>
<td>啊</td>
<td>啊</td>
<td>啊</td>
<td>啊</td>
<td>啊</td>
<td>啊</td>
<td>啊</td>
<td>啊</td>
<td>啊</td>
<td>啊</td>
<td></td>
</tr>
</tbody>
</table>
</div>
<!-- <div class="pro" >
<ul class="nav nav-pills nav-stacked">
 -->
<div class="pager">
<ul class="pagination pagination-lg ">
<li><a>&laquo;第一页</a></li>
<li><a href="#">11</a></li>
<li><a>12</a></li>
<li><a>13</a></li>
<li><a>14</a></li>
<li><a>15</a></li>
<li class="disabled"><a>最后一页&raquo;</a></li>
</ul>
 </div>
  
 <ul class="pager">
<li ><a>&laquo;上一页</a></li>
<li ><a>下一页&raquo;</a></li>
</ul>
<ul class="pager">
<li class="previous"><a>&laquo;上一页</a></li>
<li class="next"><a>下一页&raquo;</a></li>
</ul>
<ul class="pager">
<li class="disabled"><a>&laquo;上一页</a></li>
<li ><a>下一页&raquo;</a></li>
</ul>

<p id="info"> </p>

  <script src="/goodsmanager/resources/js/jquery-1.11.1.js"></script> 
    <script src="/goodsmanager/resources/js/bootstrap.js"></script> 
<script type="text/javascript">
function clickajax(){
$.getJSON("http://127.0.0.1:8080/goodsmanager/test/findGoodsAll", function(data){
	var b;
	for(var x=0;x<data.length;x++){
	b=b+data[x].mingcheng+data[x].guige;
	}
	$("#info").html(b);
  });
}
</script>
</body>
</html>
