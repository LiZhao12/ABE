<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>班级管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
<body>
	<jsp:include page="/component/assembly/top.jsp"></jsp:include>
	<jsp:include page="/component/assembly/left.jsp"></jsp:include>
	<div class="right">
		
		<form action="<%=path %>/web/class!add" method="post">
			班级名字：<input type="text" name="cla.scName"/><br/>
			班主任id（教职工档案id）：<input type="text" name="cla.itId"/><br/>
			年级id：<input type="text" name="cla.sgId"/><br/>
			<input type="submit" value="添加"/>
		</form>
		<div>
		<table>
			<thead>
				<tr>
					<td colspan="7">
						家长档案信息
					</td>
				</tr>
				<tr>
					<th>班级编号</th>
					<th>班级名称</th>
					<th>年级</th>
					<th>班主任</th>
					<th>班级创建时间</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${scs}" var="c" varStatus="sta">
				<tr>
					<td>${c.scId }</td>
					<td>${c.scName }</td>
					<td>${c.schoolGrade.sgName }</td>
					<td>${c.infoTeacher.itName }</td>
					<td>${c.scCreateTime }</td>
					<td>${c.scState}</td>
					<td>
						<a onclick="">修改</a>
						<a href="<%=path %>/web/class!delete?id=${c.scId }" onclick="return confirm('确定删除吗?')">删除</a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="7">
						首页
						上一页
						跳转
						下一页
						末页
					</td>
				</tr>
			</tfoot>
		</table>
		</div>
		<div>
			修改班级信息
			<form action="<%=path %>/web/class!update" method="post">
				<table>
				  <tr>
				    <td>班级编号：</td>
				    <td><input type="text" name="cla.scId" readonly="readonly" /></td>
				  </tr>
				  <tr>
				    <td>班级名称：</td>
				    <td><input type="text" name="cla.scName"  /></td>
				  </tr>
				  <tr>
				    <td>年级：(应使用ajax列表形式选择)</td>
				    <td><input type="text" name="cla.sgId"  /></td>
				  </tr>
				  <tr>
				    <td>班主任：(应使用ajax列表形式选择)</td>
				    <td><input type="text" name="cla.itId" /></td>
				  </tr>
				  <tr>
				    <td>状态：</td>
				    <td><input type="text" name="cla.scState" /></td>
				  </tr>
				  <tr>
				  	<td colspan="2"><input type="submit" value="提交"/></td>
				  </tr>
				</table>
			</form>
		</div>
	</div>
	<jsp:include page="/component/assembly/bottom.jsp"></jsp:include>
	
</body>
</html>
