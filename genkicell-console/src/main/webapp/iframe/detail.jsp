<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/style/bootstrap.min.css">
	 <script type="text/javascript" src="/js/bootstrpa.js"></script>
	  <script type="text/javascript" src="/js/jqeury.js"></script>
</head>
  <style type="text/css">
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}
 
#myImg:hover {opacity: 0.7;}

#myImg2 {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}
 
#myImg2:hover {opacity: 0.7;}

#myImg3 {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}
 
#myImg3:hover {opacity: 0.7;}
 
/* 弹窗背景 */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}
 
/* 图片 */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}
 
/* 文本内容 */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}
 
/* 添加动画 */
.modal-content, #caption { 
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}
 
@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}
 
@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}
 
/* 关闭按钮 */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}
 
.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}
 
/* 小屏幕中图片宽度为 100% */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>
<script type="text/javascript" src="/js/tan.js"></script>
</head>
<body>
	<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="row-fluid" style="font-weight:bold ;text-align:center;line-height:40px;">
				
				
				<div class="smart-body" style="font-size:17px;">
					<div class="row">
						<div class="col-xs-2">
						  	姓名：<p>${verification.firstName } ${verification.lastName }</p>
						</div>
						<div class="col-xs-2">
						  	邮箱：<p>${user.username }</p>
						</div>
						<div class="col-xs-2">
						 性别：<p>${verification.gender }</p>
						</div>
						<div class="col-xs-2">
						 	国籍：<p>${city.cnty }</p>
						</div>
					</div>
				</div>



			</div>
			<div class="row-fluid" style="margin-left:5%; margin-top:10px; font-weight:bold">
				<div class="span8">
					<div class="span6" style="float:left;">注册时间：<p>${user.registtime }</p></div>
					<div class="span6" style="margin-left:15%;">材料申请时间：<p> ${verification.updatetime } </p></div>
				</div>
				<div class="span4">
				</div>
			</div>
			<div class="row-fluid" style="margin-left:15%; margin-right: 5.5%; margin-top:20px;">
				<div class="span4" style=" float:left;width:33.3%; ">
					<div style="text-align:left; margin-left:16%;">证件照（正面）</div>
					<img id="myImg" src="${verification.imgUrlfront}"  style="width:60%;height:250px;border:1px solid black;"/>	 
						<!-- 弹窗 -->
						<div id="myModal" class="modal">
						  <!-- 关闭按钮 -->
						  <span class="close" onclick="document.getElementById('myModal').style.display='none'">&times;</span>
						  <!-- 弹窗出的图片 -->
						  <img class="modal-content" id="img01">						
						</div>
				</div>
				<div class="span4" style=" float:left;maigin-left:20%;width:33.3%;">
					<div style="text-align:left;margin-left:16%;">证件照（背面）</div>
					<img id="myImg2" src="${verification.imgUrlBack}"  style="width:60%;height:250px;border:1px solid black;"/>	 
						<!-- 弹窗 -->
						<div id="myModal2" class="modal">
						  <!-- 关闭按钮 -->
						  <span class="close" onclick="document.getElementById('myModal2').style.display='none'">&times;</span>
						  <!-- 弹窗出的图片 -->
						  <img class="modal-content" id="img02">						
						</div>
				</div>
				<div class="span4" style=" float:left;margin-left:0%;width:33.3%;">
				<div style="margin-left:19%;">手持证件照</div>
				
					<img id="myImg3" src="${verification.imgUrlSelf}"  style="width:60%;height:250px;border:1px solid black;"/>	 
						<!-- 弹窗 -->
						<div id="myModal3" class="modal">
						  <!-- 关闭按钮 -->
						  <span class="close" onclick="document.getElementById('myModal3').style.display='none'">&times;</span>
						  <!-- 弹窗出的图片 -->
						  <img class="modal-content" id="img03">						
						</div>


				</div>
			</div>
			<div class="row-fluid" style="margin-top:340px;">
				<div class="span6" style="float:left; margin-left:44%;">
					<input class="btn btn-default" style="background-color:#4C9FD1; color:white;" type="submit" value="通过审核">

				</div>
				<div class="span6" style="float:left; margin-left:2%;">
					<input class="btn btn-default" style="background-color:#4C9FD1; color:white;" type="submit" value="返回">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid" style="margin-top:390px;  margin-left:45.6%;">
						<div class="span12">
							 <input type="checkbox" style="margin-left:3%;"> 资料作假<br/>
							  <input type="checkbox" style="margin-left:3%;"> 证件模糊照<br/>
							   <input type="checkbox" style="margin-left:3%;">......
						</div>
					</div>
					<div class="row-fluid" style="margin-left:41.5%;margin-top:10px;">
						<div class="span12" style="margin-left:1%;">
							<div>备注：</div>
							<textarea style="width:35%;height:100px;"></textarea>
						</div>
					</div>
					<div class="row-fluid" style="margin-left:47%;margin-top:20px;">
						<div class="span12"  style="margin-left:3%;">
								<input class="btn btn-default" type="submit" style="background-color:#4C9FD1; color:white;" value="拒绝审核">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>

</html>