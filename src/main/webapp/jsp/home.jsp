<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Genkicell - Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<link rel="icon" href="/images/favicon.png" type="/image/png">
<link rel="stylesheet" href="/css/css.css">
<link rel="stylesheet" href="/css/style.css" type="text/css"
	media="screen">
<script src="/js/jquery-3.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/main.js"></script>
</head>
<body>

	<%@ include file="/jsp/header.jsp"%>
	<div class="wrapper wrapper-pad article white">
		<div class="col-3">
			<div id="home-ball-div">
				<div id="home-ball" style="bottom: 50px;">
					<img src="/images/4.png" alt="">
				</div>
				<div id="home-ball-shadow">
					<img src="/images/bouncing-ball-shadow.png" alt=""
						style="display: inline-block; width: 100.008%; overflow: hidden;">
				</div>
				<script>
					$(document).ready(homeBallBounce);
				</script>
			</div>
		</div>
		<div class="col-3-2">
			<h2>ゲンキセールとか？</h2>
			<p>ゲンキセールチェンは、IOTハードウェアにおけるデータの収集、人間の日常的生理データ、環境データ、</p>
			<p>医療データなどのデータを通して、医療機関の補助として、ユーザーの身体状況をリアルタイムで把握するこ</p>
			<p>とができるボロックチェン技術である。また、ユーザーの状況をリアルタイムで把握することや</p>
			<p>日常のデータがマークすることにより、医療連合体の形でデータの有効運用ができるというメリットがある。</p>
			<p>一方で、医療会社や研究機関にとって、データの利用許可があれば、マークされたの価値のあるデータを獲得</p>
			<p>することができる。</p>
			<p id="home-what-read-more" class="alignc-m">
				<a href="#" class="button"
					onclick="$('#home-what-read-more,#home-what-more').toggle();return !1">詳細を調べる</a>
			</p>
			<div id="home-what-more" class="br hide">
				<p>そのため、ゲンキセールチェンを通して、医療機関、会社、研究機関、</p>
				<p>ユーザーの間にデータの価値が実現され、流通することにより、ゲンキセールチェン内の</p>
				<p>共通収益を実現することができる。</p>

			</div>
		</div>
	</div>

	<div class="wrapper">
		<div id="home-why" class="shift-on-hover">
			<div id="home-why-text" class="col-2 bg-grad article white">
				<div id="home-why-Genkicell" class="content-pad shift shift-right">
					<h2>GCLの技術的強み？</h2>
					<ul>
						<li style="list-style: none">現在のヘルスケアIOT産業のボトルネック問題において、GCLは現有のボロックチェーン技術に基づき、以下のような革新を行い、ヘルスケアIOTデータの価値システムを構築することを目指している。</li>
						<li>ブラックボックスプロセス：データにおける提供側の安全とプライバシーを保つ。
							重みアルゴリズム：診断側の歴史的行動を配慮した上、全システムにおける低効率的な部分を最適化し、不正行為を防ぐ。</li>
						<li>コンセンサスメカニズム：
							DPoSにおいて重みに関する投票システムの改善により、第三方からの悪意行為を防ぐことができ、現在以来のDPoSシステムと比べたら、「トラストフリー」が実現できる。</li>
						<li>豊かなデータ標記システム：独自で開発したデータ構造は様々な方式でデータの確認ができ、その同時に、データの信頼性と有効性を確保することができる。</li>
					</ul>
				</div>
			</div>
			<div id="home-why-images" class="col-2">
				<div class="shift shift-left" data-delay="200">
					<img src="/images/5.png" alt="">
				</div>

			</div>
		</div>
		<div class="slider-pad bg-grey white alignc">
			<h2>誰がゲンキセールを使用するのか？</h2>
			<div id="home-users" class="slider">
				<div class="slider-left">
					<a href="#" onclick="sliderItemSelect(this, '-1');return !1"><img
						src="/images/arrow-slider-left-grey.svg" alt=""></a>
				</div>
				<div>
					<div class="slider-item slider-item-sel col-5">
						<div>
							<img src="/images/互联网终端.png" alt="IOTターミナル">
						</div>
						<p>IOTターミナル</p>
					</div>

					<div class="slider-item col-5">
						<div>
							<img src="/images/医疗服务机构.png" alt="医療機関">
						</div>
						<p>医療機関</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/第三方数据处理机构.png" alt="ビッグデータ会社 ">
						</div>
						<p>ビッグデータ会社</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/科研机构.png" alt="研究機関">
						</div>
						<p>研究機関</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/政府机关.png" alt="政府、組織、民間団体など">
						</div>
						<p>政府、組織、民間団体など</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/医疗人工智能.png" alt="医療人工知能企業">
						</div>
						<p>医療人工知能企業</p>
					</div>
					<div class="slider-item col-5">
						<div>
							<img src="/images/保险机关.png" alt="保険業界">
						</div>
						<p>保険業界</p>
					</div>

				</div>
				<div class="slider-right">
					<a href="#" onclick="sliderItemSelect(this, '+1');return !1"><img
						src="/images/arrow-slider-right-grey.svg" alt=""></a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>