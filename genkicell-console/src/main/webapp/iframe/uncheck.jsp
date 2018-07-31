<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../style/css.css">
</head>
<body>
<body>
		<div class="conr_right">
		<div class="ssnr">
			<ul>
				<li><input name="" type="text" class="wby1" placeholder="请输入关键字" /></li>
				<li><input name="" type="submit" value="查询" class="btn1" /></li>
			</ul>
		</div>
		<div class="jsnr">
			<table width="100%" border="0" cellspacing="0" class="bgys1">
			  <tr>
				<td bgcolor="#cccccc"><div align="center">ID</div></td>
				<td bgcolor="#cccccc"><div align="center">姓名</div></td>
				<td bgcolor="#cccccc"><div align="center">性别</div></td>
				<td bgcolor="#cccccc"><div align="center">年龄</div></td>
				<td bgcolor="#cccccc"><div align="center">国籍</div></td>
				<td bgcolor="#cccccc"><div align="center">状态</div></td>
				<td bgcolor="#cccccc"><div align="center">操作</div></td>
				<td bgcolor="#cccccc"><div align="center">材料更新时间</div></td>
			  </tr>
			  <c:forEach items="${users }" var="user">
			  <tr>
			  	<td><div align="center">${user.id }</div></td>
			  	<td><div align="center">${user.firstName} ${user.lastName }</div></td>
				<td><div align="center">${user.gender }</div></td>
				<td><div align="center">${user.age }</div></td>
				<td><div align="center">${user.citys.cnty }</div></td>
				<td><div align="center">未审核</div></td>
				<td>
					<div align="center">
						<a href="detail.do?userId=${user.id }" class="cknr">查看</a>
					</div>
				</td>
				<td><div align="center">${user.updatetime }</div></td>
			  </tr>
			  </c:forEach>
		 </table>
		</div>
		<div class="fynr">
			<ul>
				<li><a href="">&lt;</a></li>
				<li><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">4</a></li>
				<li><a href="">5</a></li>
				<li><a href="">6</a></li>
				<li><a href="">7</a></li>
				<li><a href="">8</a></li>
				<li><a href="">9</a></li>
				<li><a href="">10</a></li>
				<li><a href="">></a></li>
			</ul>
		</div>	.
	</div>
</body>
</body>
</html>