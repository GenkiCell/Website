<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery.SuperSlide.2.1.js"></script> -->
<link href="style/css.css" rel="stylesheet" type="text/css" />
</head>
</head>
<body>
	<div class="top"></div>
	<div class="cont">
		<div class="cont_left">
			<div class="left_dh">
				<h2>KYC管理</h2>
				<ul>
					<li class="hover"><a href="uncheckList.do"
						target="iFrame1">待审核申请</a></li>
					<li><a href="iframe/white.jsp" target="iFrame1">白名单</a></li>
					<li><a href="iframe/black.jsp" target="iFrame1">黑名单</a></li>
				</ul>
				<h2>管理员帐户</h2>
				<ul>
					<li><a href="iframe/roles.jsp" target="iFrame1">角色管理</a></li>
					<li><a href="iframe/staff.jsp" target="iFrame1">员工管理</a></li>
				</ul>
			</div>
		</div>

		<div class="iframe">
			<iframe src="uncheckList.do" frameborder="0" name="iFrame1"
				id="iFrame1"></iframe>
		</div>
	</div>

	<script>
		$('.left_dh ul li').click(function() {
			$('.left_dh li').removeClass('hover');
			$(this).addClass('hover');
		})
	</script>

</body>
</html>