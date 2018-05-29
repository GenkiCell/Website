<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="utf-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>GenkiCell</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">

<link rel="stylesheet" href="/css/style.css" type="text/css" />
</head>

<body>

	<%@ include file="/jsp/header.jsp"%>

	<div id="#10" class="introduce-section mt7  mt10"></div>

	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>


<script type="text/javascript" src="/javascript/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		window.scroll(function(event) {
			$(".mt7").height($(window).height())
		});

		window.onload = function(){
			$(".mt7").height($(window).height())
		}
	})
</script>