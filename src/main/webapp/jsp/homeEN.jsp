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

<body style="background: #2c2e38; color: #fff !important;">


	<!-- 导航 -->
	<%@ include file="/jsp/header.jsp"%>
	
	
	<div id="#1" class="introduce-section mt7"></div>
	<div class="introduce-section-team">
		<img src="/images/henxian.png" alt="">
	</div>



	<div class="wrapper wrapper-pad article">
		<div class="col-3">
			<div id="home-ball-div">
				<div id="home-ball" style="bottom: 50px;">
					<img src="/images/1.png" alt="">
				</div>
				<div id="home-ball-shadow">
					<img src="/Zeepin%20-%20Home_files/bouncing-ball-shadow.png" alt=""
						style="display: inline-block; width: 100.008%; overflow: hidden;">
				</div>
				<script>
					$(document).ready(homeBallBounce);
				</script>
			</div>
		</div>
		<div class="col-3-2">
			<h4>What is GCL?</h4>
			<p>Genkicell Chain realizes the data access for Internet of
				things by using the blockchain technology. In addition, the daily
				physical signs, environmental space, medical information and other
				data obtained through the technology will assist the medical
				institutions to realize long-term care and timely effective
				intervention for users' health condition.</p>
			<p>When the data has been tagged, the data transfer can be
				realized through medical association and other forms to improve the
				ratio of fixed customer for medical institutions.</p>

			<p id="home-what-read-more" class="alignc-m">
				<a href="#" class="button"
					onclick="$('#home-what-read-more,#home-what-more').toggle();return !1">Learn
					More</a>
			</p>
			<div id="home-what-more" class="br hide">
				<p>Therefore, Genkicell will strive to realize the transfer of
					value data between individuals, medical institutions and commercial
					institutions and the common benefits of users in the ecosystem.</p>

			</div>
		</div>
	</div>

	<div class="wrapper">
		<div id="home-why" class="shift-on-hover">
			<div id="home-why-text" class="col-2 bg-grad article white">
				<div id="home-why-zeepin" class="content-pad shift shift-right"
					style="left: 0px;">
					<h2>Why GCL？</h2>
					<ul>
						<li>Based on the bottleneck of the existing one health
							industry, GCL has made the following innovations based on the
							existing blockchain to build a one health value ecosystem:</li>
						<li>Black box process design: ensure data provider's privacy
							and security.</li>
						<li>Weight algorithm: to optimize the low efficiency links
							and eliminate malicious behaviors in the whole ecology by
							considering the historical behaviors of the diagnosis party.</li>
						<li>Consensus mechanism: By adding the weight system in the
							improved DPoS voting mechanism, the malicious behavior of the
							third party can be effectively prevented, and it is more trusted
							than the original DPoS.</li>
						<li>Multi-party tagged data: the unique transaction structure
							will realize the basic function of multi-party authentication
							data, and ensure the reliability and validity of the data in the
							ecosystem.</li>
					</ul>
				</div>
			</div>
			<div id="home-why-images" class="col-2">
				<div class="shift shift-left" data-delay="200" style="left: 0px;">
					<img src="/images/GCL的优势.png" alt="">
				</div>


			</div>
		</div>
		<div class="slider-pad bg-grey green alignc">
			<h2>Who use GCL?</h2>
			<div id="home-users" class="slider">
				<div class="slider-left">
					<a href="#" onclick="sliderItemSelect(this, '-1');return !1"><img
						src="" alt=""></a>
				</div>
				<div>
					<div class="slider-item slider-item-sel col-5">
						<div>
							<img src="/images/互联网终端.png" alt="物联网终端">
						</div>
						<p>IoT Terminal</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/医疗服务机构.png" alt="医疗服务机构">
						</div>
						<p>Medical institutions</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/第三方数据处理机构.png" alt="第三方数据处理机构">
						</div>
						<p>Third party data analyze institution</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/科研机构.png" alt="科研机构">
						</div>
						<p>Scientific research institution</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/政府机关.png" alt="政府组织 保险行业">
						</div>
						<p>Goverment organization</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/医疗人工智能.png" alt="医疗人工智能企业">
						</div>
						<p>Medical artificial intelligence</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/保险机关.png" alt="保险机关">
						</div>
						<p>The insurance company</p>
					</div>
				</div>
				<div class="introduce-section-team">
					<!-- <img src="images/底部背景.png" alt=""> -->
				</div>
			</div>
		</div>
	</div>

	<div class="footer-arrow"></div>


	<%@ include file="/jsp/footer.jsp"%>


</body>

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


</html>