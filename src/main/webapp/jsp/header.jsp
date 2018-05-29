<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="header-wrapper">
		<div class="header-logo">
			<a href="/home.html"> <img class="header-logo-full"
				src="/images/logo8.png" alt="Genkicell logo"> <img
				class="header-logo-icon" src="/images/icon.png" alt="Genkicell logo">
			</a>
		</div>
		<div class="header-nav-open">
			<a href="#" onclick="navToggle();return !1"><img
				src="/images/menu-open.svg" alt=""></a>
		</div>
		<div class="header-nav">
			<div class="header-nav-icons">
				<div class="header-nav-logo-icon">
					<a href="#"><img src="/images/icon1.png" alt="Genkicell logo"></a>
				</div>
				<div class="header-nav-close">
					<a href="#" onclick="navToggle(!1);return !1"><img
						src="/images/close.png" alt=""></a>
				</div>
			</div>
			<div class="header-menu">
				<nav> <nav> <a href="/home.jsp/redirect.do" class="menu-current">ホーム</a> 
						<a href="/documents.jsp/redirect.do">ドキュメント</a>
						<a href="/team.jsp/redirect.do">チーム</a> 
						<a href="/video.jsp/redirect.do">ビデオを見る</a>
				<!-- <a href="./contact.html">Contact</a> --> </nav>
			</div>
			<div class="header-lang">
				<a href="" onclick="langSelectToggle();return !1">JAP &nbsp;<img
					src="/images/arrow-lang.svg" alt="" style="width: 13px"></a>
			</div>
			<div class="header-lang-select">
				<div class="header-lang-select-label">
					<a href="#" class="floatr" onclick="langSelectToggle(!1);return !1"><img
						src="/images/cross-close.svg" alt="" style="width: 9px"></a>
					言語の変更
				</div>
				<div class="header-lang-select-list">
					<ul>
						<li><a href="/homeen.html/redirect.do" class="lang-current">ENG</a></li>
						<!-- 	<li><a href="homech.html" class="lang-current">CH </a></li> -->

					</ul>
				</div>
			</div>
		</div>

		<div class="header-content">
			<img src="/images/3anim.gif">
		</div>
		<script>
			$(document).ready(moreArrowBounce);
		</script>
	</div>
</body>
</html>