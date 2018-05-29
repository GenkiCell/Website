<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Genkicell - Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<link rel="icon" href="/images/favicon.png" type="image/png">
<link rel="stylesheet" href="/css/css.css">
<link rel="stylesheet" href="/css/style.css" type="text/css"
	media="screen">
<script src="/js/jquery-3.js"></script>
<script src="/js/jquery-ui.js"></script>
<script src="/js/main.js"></script>
</head>

<body>
	<%@ include file="/jsp/header.jsp"%>

	<div class="wrapper wrapper-pad alignc">
		<h2>コアチーム</h2>
		<div class="slider team-slider">
			<div class="slider-left">
				<a href="#"
					onclick="sliderItemSelect(this, '-1');moreToggle('team-profiles', this);return !1"><img
					src="/images/arrow-slider-left-grey.svg" alt=""></a>
			</div>
			<div>
				<div class="slider-item slider-item-sel col-3">
					<div>
						<img src="/images/粟田翔太.png" alt="">
					</div>
					<h3>粟田 翔太</h3>
					<p>CEO 立命馆大学博士前期課程修了</p>
					<p>
						<a href="#" class="button"
							onclick="moreToggle('team-profiles', 0);return !1"> <span
							class="team-profiles-open">詳細を調べる</span> <span
							class="team-profiles-close hide">Close</span>
						</a>
					</p>
				</div>
				<div class="slider-item col-3">
					<div>
						<img src="/images/四条能伸.png" alt="">
					</div>
					<h3>四條 能伸</h3>
					<p>CTO 大阪大学工学部士博士前期課程修了</p>
					<p>
						<a href="#" class="button"
							onclick="moreToggle('team-profiles', 1);return !1"> <span
							class="team-profiles-open">詳細を調べる</span> <span
							class="team-profiles-close hide">Close</span>
						</a>
					</p>
				</div>
				<div class="slider-item col-3">
					<div>
						<img src="/images/佐佐木太裕.png" alt="">
					</div>
					<h3>佐々木 太裕</h3>
					<p>CRO</p>
					<p>
						<a href="#" class="button"
							onclick="moreToggle('team-profiles', 2);return !1"> <span
							class="team-profiles-open">詳細を調べる</span> <span
							class="team-profiles-close hide">Close</span>
						</a>
					</p>
				</div>

			</div>
			<div class="slider-right">
				<a href="#"
					onclick="sliderItemSelect(this, '+1');moreToggle('team-profiles', this);return !1"><img
					src="/images/arrow-slider-right-grey.svg" alt=""></a>
			</div>
		</div>
	</div>

	<div class="bg-grad white">
		<div id="team-profiles" class="wrapper wrapper-pad alignc hide">
			<div class="content-max-width">
				<h2>粟田 翔太</h2>
				<p>CEO 立命馆大学博士前期課程修了</p>
				<p>元SBIグループが投資した日本初上場したICOプロジェクトC0banの運営会社LastRoots
					CTOである。仮想通貨C0banの仕組みを自ら設計、開発し、C0ban専用の取引所まで作ってあった。日本天才技術強化の会員でもある。</p>
			</div>
			<div class="content-max-width">
				<h2>四條 能伸</h2>
				<p>CTO 大阪大学工学部士博士前期課程修了</p>
				<p>元SBIグループが投資した日本初上場したICOプロジェクトC0banの運営会社LastRoots CTOである。
					仮想通貨C0banの仕組みを自ら設計、開発し、C0ban専用の取引所まで作ってあった。日本天才技術強化の会員でもある。</p>
			</div>
			<div class="content-max-width">
				<h2>佐々木 太裕</h2>
				<p>CRO</p>
				<p>日本三大銀行であるみずほ銀行融資部門マネージャーの経歴を経て、みずほ証券リスク管理部門に移籍し、上場企業の資金管理、審査などの業務を担当した。2011年度みずほ銀行営業部門優秀賞受賞し、2012年度みずほ銀行法人部門最優秀賞を受賞した。2013年から、みずほ証券対ソフトバンクグループの債券投資顧問として、年間２０００億円を調達した。2015年度みずほ証券社長大賞を受賞した後、独立の投資コンサルティング会社を設立し、年間１００億円を資金調達の実績を持ち、顧客に相応しいリスクマネジメントサービスも提供している。</p>
			</div>
		</div>
	</div>



	<div class="wrapper wrapper-pad alignc">
		<div class="slider team-slider">
			<div class="slider-left">
				<a href="#"
					onclick="sliderItemSelect(this, '-1');moreToggle('team-profiles-01', this);return !1"><img
					src="/images/arrow-slider-left-grey.svg" alt=""></a>
			</div>
			<div>

				<div class="slider-item col-3">
					<div>
						<img src="/images/Charles Li.png" alt="">
					</div>
					<h3>Charles Li</h3>
					<p>市場コンサルティング顧問</p>
					<p>
						<a href="#" class="button"
							onclick="moreToggle('team-profiles-01', 0);return !1"> <span
							class="team-profiles-open">詳細を調べる</span> <span
							class="team-profiles-close hide">Close</span>
						</a>
					</p>
				</div>
				<div class="slider-item slider-item-sel col-3">
					<div>
						<img src="/images/柴田谕.png" alt="">
					</div>
					<h3>柴田 諭</h3>
					<p>日本政策研究顧問</p>
					<p>
						<a href="#" class="button"
							onclick="moreToggle('team-profiles-01', 1);return !1"> <span
							class="team-profiles-open">詳細を調べる</span> <span
							class="team-profiles-close hide">Close</span>
						</a>
					</p>
				</div>
				<div class="slider-item slider-item-sel col-3">
					<div>
						<img src="/images/藤井伸一.png" alt="">
					</div>
					<h3>藤井 伸一</h3>
					<p>CAO</p>
					<p>
						<a href="#" class="button"
							onclick="moreToggle('team-profiles-01', 2);return !1"> <span
							class="team-profiles-open">詳細を調べる</span> <span
							class="team-profiles-close hide">Close</span>
						</a>
					</p>
				</div>
			</div>
			<div class="slider-right">
				<a href="#"
					onclick="sliderItemSelect(this, '+1');moreToggle('team-profiles-01', this);return !1"><img
					src="/images/arrow-slider-right-grey.svg" alt=""></a>
			</div>
		</div>
	</div>

	<div class="bg-grad white">

		<div id="team-profiles-01" class="wrapper wrapper-pad alignc hide">

			<div class="content-max-width">
				<h2>Charles Li</h2>
				<p>市場コンサルティング顧問</p>
				<p>アメリカ生まれ、早稲田大学政治経済研究科卒業後、日本たばこに入職、Corporate Venture
					Capital部門における中国地域、アメリカ地域を担当している。主に、ボロックチェーン、人工知能及びヘルスケア系のプロジェクトの投資及び運営を営んでいる。
				</p>
			</div>
			<div class="content-max-width">
				<h2>柴田 諭</h2>
				<p>日本政策研究顧問</p>
				<p>元自治大臣佐藤观树の秘書として、政治生涯を始まり、政治家になりつづ、政治の世界にたくさんの人脈を積み重ねた。2006年後、政治家を辞め、独自にコンサルティング会社を設立し、東急グループやサイバーエジェントグループなどの大手企業に様々のコンサルティングサービルを提供している。
				</p>
			</div>

			<div class="content-max-width">
				<h2>藤井 伸一</h2>
				<p>CAO</p>
				<p>メディア業界で２０年以上の経歴を持ち、1992年株式会社DRを設立し、広告代理店業務、広告企画業務及びタレント業務を中心に展開し、日本のタレント事務所、テレビ局、出版社など深いつながりを持っている。年間平均売上は７５億円。2017年度から代表取締役を辞任し、チームメンバーとしてメディア全般を管理している。
				</p>
			</div>
		</div>
	</div>
	<div class="wrapper wrapper-pad alignc">
		<div class="slider team-slider">
			<div class="slider-left">
				<a href="#"
					onclick="sliderItemSelect(this, '-1');moreToggle('team-profiles-02', this);return !1"><img
					src="/images/arrow-slider-left-grey.svg" alt=""></a>
			</div>
			<div>


				<div class="slider-item slider-item-sel col-3">
					<div>
						<img src="/images/吉田圭一郎.png" alt="">
					</div>
					<h3>吉田 圭一郎</h3>
					<p>COO  北京大学、BBT MBA 2019年3月取得予定</p>
					<p>
						<a href="#" class="button"
							onclick="moreToggle('team-profiles-02', 0);return !1"> <span
							class="team-profiles-open">詳細を調べる</span> <span
							class="team-profiles-close hide">Close</span>
						</a>
					</p>
				</div>
			</div>
			<div class="slider-right">
				<a href="#"
					onclick="sliderItemSelect(this, '+1');moreToggle('team-profiles-02', this);return !1"><img
					src="/images/arrow-slider-right-grey.svg" alt=""></a>
			</div>
		</div>
	</div>

	<div class="bg-grad white">
		<div id="team-profiles-02" class="wrapper wrapper-pad alignc hide">


			<div class="content-max-width">
				<h2>吉田 圭一郎</h2>
				<p>COO  北京大学、BBT MBA 2019年3月取得予定</p>
				<p>北京大学日本人留学生会第七代会長、野村證券営業部出身、アナリスト、日本のVCで医療関連MAに携わる。使用可能な言語は日本語、英語、中国語。
				</p>
			</div>
		</div>
	</div>







	<div class="bg-grad" style="background: #2c2e38;">
		<div class="wrapper wrapper-pad alignc">

			<div class="slider team-slider">
				<div>

					<div class="slider-item slider-item-sel col-12">
						<div>
							<img src="/images/jcda.png" alt="理事长：中村 秀一">
						</div>
						<h3>日本高齢者予防医療研究協会</h3>
						<p>理事长：中村 秀一</p>
						<p>理事（一部）：粟田 翔太、大谷 泰夫、宇治 则孝、など</p>
						<div class="text">
							日本における高齢者社会からもたらした慢性病の解決を目標とした。人工知能及びIOE（Internet of
							everything）の手段を用いて、予防医療の理念を用いて、疾病の予測と検測を行うことである。理事長の中村
							秀一先生は元厚生労働省老健局長として、長年に医療健康業界で高齢者の健康に関する仕事を行い、一般社団法人医療介護福祉研究フォーラムの理事長として、老人健康に関していろいろ貢献した。大谷泰夫先生は国立研究開発法人、日本医療研究機構の理事として、医療研究を持続的に行った。その前に、内閣府参与、厚生労働省官房長として勤めた。宇治则孝先生はNTT前代表取り締まり役副社長の経歴を経て、日本IT協会の会長として、インフォメーション産業で強い影響力を持つ。
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>