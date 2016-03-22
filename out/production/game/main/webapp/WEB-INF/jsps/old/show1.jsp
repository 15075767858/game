<!-- <tr>
						<td>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">商品名称</label>
							<div class="col-sm-10">
								<input name="name" type="text" class="form-control"
									id="mingcheng" placeholder="请输入商品名称" />
							</div>
						</div>
						</td>
						</tr> -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'show1.jsp' starting page</title>
<link href="/goodsmanager/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/goodsmanager/resources/css/studentInfo.css"
	rel="stylesheet">
<link href="/goodsmanager/resources/css/bootstrap.css" rel="stylesheet">
<link href="/goodsmanager/resources/css/bootstrap-responsive.css"
	rel="stylesheet">

<style type="text/css">

</style>
</head>
<body>
	<div class="data_list">
		<div class="data_content">
			<form action="student!save" method="post"
				onsubmit="return checkForm()" enctype="multipart/form-data">
				<table width="80%" align="center">

					<tr>
						<td><label>日期：</label></td>
						<td><input type="text" id="stuBirthday"
							name="student.stuBirthday" value="" class="Wdate"
							onClick="WdatePicker()" /></td>
						<td>&nbsp;</td>						
						<td><label>名称：</label></td>
				<td><input type="text" id="stuName" name="student.stuName" value="" > </td>
						<td>&nbsp;</td>						

					</tr>						
						
					<tr>
						<td><label>规格：</label></td>
				<td><input type="text" id="stuName" name="student.stuName" value="" /></td>
						<td>&nbsp;</td>						
						<td><label>产地：</label></td>
				<td><input type="text" id="stuName" name="student.stuName" value="" /></td>


					</tr>
					<tr>
						<td><label>联系人：</label></td>
				<td><input type="text" id="stuName" name="student.stuName" value="" /></td>
						<td>&nbsp;</td>						
						<td><label>电话：</label></td>
				<td><input type="text" id="stuName" name="student.stuName" value="" /></td>

					</tr>
					<tr>
						<td><label>数量：</label></td>
<td><input type="text" id="stuName" name="student.stuName" value="" /></td>
						
						<td>
						<td><label>单位：</label></td>
						<td>
						<select style="width: 180px;"  id="classId" name="student.classId" onchange="this.nextSibling.value=this.value" >
						<option value="" >请选择单位...</option>
						
							<option value="十" >个</option>
						
							<option value="个" >十</option>
					<input style="margin-left: -180px;width: 160px;">
						
					</select>
						</td>
					</tr>
					<tr>
						<td><label>进价：</label></td>
				<td><input type="text" id="stuName" name="student.stuName" value="" /></td>
						<td>&nbsp;</td>						
						<td><label>售价：</label></td>
				<td><input type="text" id="stuName" name="student.stuName" value="" /></td>
					</tr>
					<tr>
						<td valign="top"><label>备注：</label></td>
						<td colspan="4"><textarea rows="5" style="width: 600px;"
								id="stuDesc" name="student.stuDesc"></textarea></td>
					</tr>
					<tr>
						<td><input type="hidden" id="studentId" name="studentId"
							value="" /> <input type="submit" class="btn  btn-primary"
							value="保存" /></td>
						<td colspan="4"><input type="button" class="btn  btn-primary"
							value="返回" onclick="javascript:history.back() " />&nbsp;&nbsp;<font
							id="error" color="red"></font></td>
					</tr>

				</table>
			</form>
		</div>

	</div>


</body>
<script src="/goodsmanager/resources/js/jquery-1.11.1.js"></script>
<script src="/goodsmanager/resources/js/bootstrap.js"></script>
<script src="/goodsmanager/resources/js/My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript">
	
</script>

</html>
