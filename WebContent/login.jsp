<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>マイページ</title>
 <link rel="stylesheet"  href="test.css?20201125">

<div class="Home">
<font color="red"style="font-size:24px">Travel </font>
<br><br><br><br><br>
<marquee width="2000"  scrollamount="4" height="90"><img src="OIP3YIBB6NG_1.jpg">
<font color="red"style="font-size:18px">

【国内】★関東エリア 二泊三日東京を満喫！！ 北海道エリア 摩周湖 美瑛白金の青い池 ホーツク海の流氷、★

【国際】★ 乗り降り自由のローマ観光ツアー！！     サンタ・マリア・マッジョーレ大聖堂の参拝★

</font>
</marquee>
</div>
<script type="text/javascript">
function disp(){
	if(window.confirm('ログアウします。本当にいいんですね？')){
		location.href="home.jsp";
	}else{
		window.alert('キャンセルされました'); // 警告ダイアログを表示
	}
}

</script>

<style type="text/css">
html, body {
  height: 50%;
}
body {
  margin: 0;
  padding: 10px;
}
* {
  box-sizing: border-box;
}
.tab-wrap {
  -webkit-transform:  translateX(3%);
  top:50px;
  margin-top:-70px;
  height:0%;
  min-height: 300px;
  display: flex;
  position: relative;
  z-index:2;
  flex-wrap: wrap;
  flex-direction: column;
}
.tab-label {
  width: 150px;
  color: White;
  background: LightGray;
  font-weight: bold;
  white-space: nowrap;
  text-align: center;
  border:1px solid Gray;
  border-radius: 4px 0 0 4px;
  margin: 5px 5px 5px 5px;
  padding: 10px;
  order: -1;
  position: relative;
  z-index:-1;
  cursor: pointer;
  float:left;
}
.tab-content {
  display:none;

}
.tab-contents {
  display:none;
}
/* アクティブなタブ */
.tab-switch:checked+.tab-label {   /* 字体色の変更 */
  color: blue;
  background: White;
  border-right-color: White;
}
.tab-switch:checked+.tab-label+.tab-content {
  width: calc(100% - 150px); /* - ボタン幅 */
  height: 75%;
  padding: 15px;
  border-left: 1px solid Gray;
  display:block;
}
/* ラジオボタン非表示 */
.tab-switch {
  display: none;
}

</style>

<style>
 import url(input.css)
	</style>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"
            integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
            crossorigin="anonymous"></script>

<div style="position: absolute; top:210px; right: 500px; max-width: 100%; max-height: 100%; padding: 0px;">
<p>ようこそ！！ <a href="correction.jsp">${ loginId } </a> 様</p>
<p>保有ポイント：       p</p>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css?20201125">
<div id="page_top"><a href="#"></a></div>

<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css?20201119" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/2.9.0/css/flag-icon.css?20201125" rel="stylesheet">
<ul class="avi">
    <li><a class="active" href="#home">ホーム</a></li>
    <li><a href="#"><i class="fa fa-globe" aria-hidden="true"></i>国内</a>
  <ul>
    <li><a href="#">観光ツアー</a></li>
    <li><a href="#">交通</a></li>
    <li><a href="#">宿泊</a></li>
    <li><a href="#">日帰り</a></li>
   </ul>
  </li>
<li><a href="#"><i class="fa fa-globe" aria-hidden="true"></i>海外</a>
<ul>
<li><a href="#">観光ツアー</a></li>
<li><a href="#">交通</a></li>
<li><a href="#">宿泊</a></li>
<li><a href="#">宿泊+チケット</a></li>
</ul>
</li>
<li><a href="#">目的地</a></li>
<li><a href="#">季節イベント</a>
<ul>
<li><a href="#">北海道</a></li>
<li><a href="#">東北</a></li>
<li><a href="#">関東</a></li>
<li><a href="#">中部</a></li>
<li><a href="#">近隣</a></li>
<li><a href="#">中国</a></li>
<li><a href="#">四国</a></li>
<li><a href="#">九州</a></li>
</ul>
</li>
<li><a onClick="disp();return false;">ログアウト</a></li>



</ul>

<style>
 import url(input.css)
 import url(test.css)
	</style>

	 <link rel="stylesheet"  href="http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css?20201125">
  <link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="stylesheet">
  <link rel="stylesheet"  href="input.css?20201125">



</head>
<body>
<div class="image">

<div style="position: absolute; top: 30px; right:10px; max-width: 100%; max-height: 100%; padding: 0px;">
<a href="#">店舗一覧</a>
<a href="#">よくある質問</a>
<a class="language" href="#ja"><i class="flag-icon flag-icon-jp flag-icon-squared"></i>日本語</a>
<a class="language" href="#us"><i class="flag-icon flag-icon-us flag-icon-squared"></i>英語</a>

</div>

<div style="position: absolute; top: 80px; right:10px; max-width: 100%; max-height: 100%; padding: 0px;">
<form action="login.jsp" method="post">
<input  type="search"  id="sbox1"  name="s" />
<button type="button" id="sbtn2"><i class="fas fa-search"></i></button>

<language initial="en" lang="ja,en,ch"></language>



</form>

</div>

<div class="demo-cont">
  <!-- slider start -->
  <div class="fnc-slider example-slider">
    <div class="fnc-slider__slides">
      <!-- slide start -->
      <div class="fnc-slide m--blend-green m--active-slide">
        <div class="fnc-slide__inner">

        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-dark">
        <div class="fnc-slide__inner">


        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-red">
        <div class="fnc-slide__inner">

        </div>
      </div>
      <!-- slide end -->
      <!-- slide start -->
      <div class="fnc-slide m--blend-blue">
        <div class="fnc-slide__inner">
        </div>
      </div>
      <!-- slide end -->
    </div>
    <nav class="fnc-nav">
      <div class="fnc-nav__bgs">
        <div class="fnc-nav__bg m--navbg-green m--active-nav-bg"></div>
        <div class="fnc-nav__bg m--navbg-dark"></div>
        <div class="fnc-nav__bg m--navbg-red"></div>
        <div class="fnc-nav__bg m--navbg-blue"></div>
      </div>
      <div class="fnc-nav__controls">
        <button class="fnc-nav__control">
          Black Widow
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          Captain America
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          Iron Man
          <span class="fnc-nav__control-progress"></span>
        </button>
        <button class="fnc-nav__control">
          Thor
          <span class="fnc-nav__control-progress"></span>
        </button>
      </div>
    </nav>
  </div>
  <!-- slider end -->
</div>

<script type="text/javascript">
(function() {

	  var $$ = function(selector, context) {
	    var context = context || document;
	    var elements = context.querySelectorAll(selector);
	    return [].slice.call(elements);
	  };

	  function _fncSliderInit($slider, options) {
	    var prefix = ".fnc-";

	    var $slider = $slider;
	    var $slidesCont = $slider.querySelector(prefix + "slider__slides");
	    var $slides = $$(prefix + "slide", $slider);
	    var $controls = $$(prefix + "nav__control", $slider);
	    var $controlsBgs = $$(prefix + "nav__bg", $slider);
	    var $progressAS = $$(prefix + "nav__control-progress", $slider);

	    var numOfSlides = $slides.length;
	    var curSlide = 1;
	    var sliding = false;
	    var slidingAT = +parseFloat(getComputedStyle($slidesCont)["transition-duration"]) * 1000;
	    var slidingDelay = +parseFloat(getComputedStyle($slidesCont)["transition-delay"]) * 1000;

	    var autoSlidingActive = false;
	    var autoSlidingTO;
	    var autoSlidingDelay = 5000; // default autosliding delay value
	    var autoSlidingBlocked = false;

	    var $activeSlide;
	    var $activeControlsBg;
	    var $prevControl;

	    function setIDs() {
	      $slides.forEach(function($slide, index) {
	        $slide.classList.add("fnc-slide-" + (index + 1));
	      });

	      $controls.forEach(function($control, index) {
	        $control.setAttribute("data-slide", index + 1);
	        $control.classList.add("fnc-nav__control-" + (index + 1));
	      });

	      $controlsBgs.forEach(function($bg, index) {
	        $bg.classList.add("fnc-nav__bg-" + (index + 1));
	      });
	    };

	    setIDs();

	    function afterSlidingHandler() {
	      $slider.querySelector(".m--previous-slide").classList.remove("m--active-slide", "m--previous-slide");
	      $slider.querySelector(".m--previous-nav-bg").classList.remove("m--active-nav-bg", "m--previous-nav-bg");

	      $activeSlide.classList.remove("m--before-sliding");
	      $activeControlsBg.classList.remove("m--nav-bg-before");
	      $prevControl.classList.remove("m--prev-control");
	      $prevControl.classList.add("m--reset-progress");
	      var triggerLayout = $prevControl.offsetTop;
	      $prevControl.classList.remove("m--reset-progress");

	      sliding = false;
	      var layoutTrigger = $slider.offsetTop;

	      if (autoSlidingActive && !autoSlidingBlocked) {
	        setAutoslidingTO();
	      }
	    };

	    function performSliding(slideID) {
	      if (sliding) return;
	      sliding = true;
	      window.clearTimeout(autoSlidingTO);
	      curSlide = slideID;

	      $prevControl = $slider.querySelector(".m--active-control");
	      $prevControl.classList.remove("m--active-control");
	      $prevControl.classList.add("m--prev-control");
	      $slider.querySelector(prefix + "nav__control-" + slideID).classList.add("m--active-control");

	      $activeSlide = $slider.querySelector(prefix + "slide-" + slideID);
	      $activeControlsBg = $slider.querySelector(prefix + "nav__bg-" + slideID);

	      $slider.querySelector(".m--active-slide").classList.add("m--previous-slide");
	      $slider.querySelector(".m--active-nav-bg").classList.add("m--previous-nav-bg");

	      $activeSlide.classList.add("m--before-sliding");
	      $activeControlsBg.classList.add("m--nav-bg-before");

	      var layoutTrigger = $activeSlide.offsetTop;

	      $activeSlide.classList.add("m--active-slide");
	      $activeControlsBg.classList.add("m--active-nav-bg");

	      setTimeout(afterSlidingHandler, slidingAT + slidingDelay);
	    };



	    function controlClickHandler() {
	      if (sliding) return;
	      if (this.classList.contains("m--active-control")) return;
	      if (options.blockASafterClick) {
	        autoSlidingBlocked = true;
	        $slider.classList.add("m--autosliding-blocked");
	      }

	      var slideID = +this.getAttribute("data-slide");

	      performSliding(slideID);
	    };

	    $controls.forEach(function($control) {
	      $control.addEventListener("click", controlClickHandler);
	    });

	    function setAutoslidingTO() {
	      window.clearTimeout(autoSlidingTO);
	      var delay = +options.autoSlidingDelay || autoSlidingDelay;
	      curSlide++;
	      if (curSlide > numOfSlides) curSlide = 1;

	      autoSlidingTO = setTimeout(function() {
	        performSliding(curSlide);
	      }, delay);
	    };

	    if (options.autoSliding || +options.autoSlidingDelay > 0) {
	      if (options.autoSliding === false) return;

	      autoSlidingActive = true;
	      setAutoslidingTO();

	      $slider.classList.add("m--with-autosliding");
	      var triggerLayout = $slider.offsetTop;

	      var delay = +options.autoSlidingDelay || autoSlidingDelay;
	      delay += slidingDelay + slidingAT;

	      $progressAS.forEach(function($progress) {
	        $progress.style.transition = "transform " + (delay / 1000) + "s";
	      });
	    }

	    $slider.querySelector(".fnc-nav__control:first-child").classList.add("m--active-control");

	  };

	  var fncSlider = function(sliderSelector, options) {
	    var $sliders = $$(sliderSelector);

	    $sliders.forEach(function($slider) {
	      _fncSliderInit($slider, options);
	    });
	  };

	  window.fncSlider = fncSlider;
	}());

	/* not part of the slider scripts */

	/* Slider initialization
	options:
	autoSliding - boolean
	autoSlidingDelay - delay in ms. If audoSliding is on and no value provided, default value is 5000
	blockASafterClick - boolean. If user clicked any sliding control, autosliding won't start again
	*/
	fncSlider(".example-slider", {autoSlidingDelay: 4000});



</script>
</div>



<script type="text/javascript">

	//****************

//	    下準備

	//****************

	myDate = new Date();
	//今日の日付データ取得

	myWeekTbl = new Array("日","月","火","水","木","金","土");
	//曜日テーブル定義
	myMonthTbl= new Array(31,28,31,30,31,30,31,31,30,31,30,31);
	//月テーブル定義
	myYear = new Date().getFullYear();
	//年を取得


	if (((myYear%4)==0 && (myYear%100)!=0) || (myYear%400)==0){
	//うるう年だったら...
	myMonthTbl[1] = 29;
	//２月を２９日とする
	}

	myMonth = new Date().getMonth();
	prevmonth=myMonth-1;

	//月を取得(0月～11月)
	myToday = myDate.getDate();
	//今日の'日'を退避
	myDate.setDate(1);
	//日付を'１日'に変えて、
	myWeek = myDate.getDay();
	//'１日'の曜日を取得
	myTblLine = Math.ceil((myWeek+myMonthTbl[myMonth])/7);
	//カレンダーの行数
	myTable = new Array(7*myTblLine);
	//表のセル数分定義


	for(i=0; i<7*myTblLine; i++) myTable[i]="　";
	//myTableを掃除する
	for(i=0; i<myMonthTbl[myMonth]; i++)myTable[i+myWeek]=i+1;
	//日付を埋め込む
	//***********************

//	    カレンダーの表示

	//***********************
	document.write("<table  align='right'>");
	document.write("<border='3'>");

	//表の作成開始
	document.write("<tr><td colspan='7' bgcolor='#7fffd4'>");
	//先月
	document.write("<a href='#' myYear='"+myYear+"' myMonth='"+myMonth+"' onclick='backmm(this);return false;'></a>");
	//見出し行セット
	document.write("<strong>",myYear, "年", (myMonth+1), "月カレンダー</strong>");
	//次月
	document.write("<a href='#'myYear='"+myYear+"' myMonth='"+myMonth+"' onclick='nextmm(this);return false;'></a>");
	document.write("</td></tr></tr>");



	document.write("<tr>");
	//曜日見出しセット
	for(i=0; i<7; i++){
	//一行(１週間)ループ
	document.write("<td align='center' ");

	if(i==0)document.write("bgcolor='#fa8072'>");
	//日曜のセルの色
	else document.write("bgcolor='#ffebcd'>");
	//月～土のセルの色
	document.write("<strong>",myWeekTbl[i],"</strong>");
	//'日'から'土'の表示
	document.write("</td>");

	}
	document.write("</tr>");
	for(i=0; i<myTblLine; i++){
	//表の「行」のループ
	document.write("<tr>");
	//行の開始
	for(j=0; j<7; j++){
	//表の「列」のループ
	document.write("<td align='center' ");
	//列(セル)の作成
	myDat = myTable[j+(i*7)];
	//書きこむ内容の取得
	if (myDat==myToday)document.write("bgcolor='#00ffff'>");
	//今日のセルの色
	else if(j==6) document.write("bgcolor='#0080c0'>");
	//土の色
	else if(j==0) document.write("bgcolor='#ffb6c1'>");
	//日曜のセルの色
	else document.write("bgcolor='#ffffe0'>");
	//平日のセルの色
	document.write("<strong>",myDat,"</strong>");
	//日付セット
	document.write("</td>");
	//列(セル)の終わり
	}

	document.write("</tr>");
	//行の終わり

	}

	document.write("</table>");
	//表の終わり
	//-->

	</script>

<div id="centers">

<script type="text/javascript">

jQuery(function() {
    var pagetop = $('#page_top');
    pagetop.hide();
    $(window).scroll(function () {
        if ($(this).scrollTop() > 500) {  //500pxスクロールしたら表示
            pagetop.fadeIn();
        } else {
            pagetop.fadeOut();
        }
    });
    pagetop.click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 500); //0.5秒かけてトップへ移動
        return false;
    });
});


</script>

<div class="TabBlock" style="display:block"  role="search">

<div class="tab-wrap">
   <input id="TAB-01" type="radio" name="TAB" class="tab-switch" checked="checked" /><label class="tab-label" for="TAB-01"  style="border-radius: 10px;">国内旅行</label>
    <div class="tab-content">
     <font color="red">出発日　</font>
     <label>
     <input type="date" name="data"><br>
     </label>
      <br>

   <div class="Selectset">
    <font color="red">行　き　</font>
      <select class="Area">
      <option value="Area">地方</option>
      <option value="Hokkaido">北海道</option>
      <option value="Tohoku">東北</option>
      <option value="Kanto">関東</option>
      <option value="Central">中部</option>
      <option value="Neighboring">近隣</option>
      <option value="China">中国</option>
      <option value="Shikoku">四国</option>
      <option value="Kyushu">九州</option>
      </select>

      <!-- 北海道 -->

      <select id="Hokkaido" class="subbox">
      <option value="Adult">都市を選択</option>
      <option value="Excursion">北海道周遊</option>
      <option value="City">札幌市内</option>
      <option value="Dohoku">道北</option>
      <option value="Donan">道南</option>
      <option value="Michio">道央</option>
      <option value="Doto">道東</option>

      </select>

       <!-- 東北 -->
      <select id="Tohoku" class="subbox">
      <option value="Excursion">東北周遊</option>
      <option value="Miyagi">宮城県</option>
      <option value="Yamagata">山形県</option>
      <option value="Iwate">岩手県</option>
      <option value="Akida">秋田県</option>
      <option value="Aomori">青森県</option>
      <option value="Fukushima">福島県</option>

      </select>

       <!-- 関東 -->

      <select id="Kanto" class="subbox">
      <option value="Excursion">関東周遊</option>
      <option value="Tokyo">東京都</option>
      <option value="Tiba">千葉県</option>
      <option value="Izu Islands">伊豆諸島</option>
      <option value="Tochigi">栃木県</option>
      <option value="Kanagawa">神奈川県</option>

      </select>

       <!-- 中部 -->

      <select id="Central" class="subbox">
      <option value="Yamanasi">山梨県</option>
      <option value="Nigata">新潟県</option>
      <option value="Nagano">長野県</option>
      <option value="Fuji">富士県</option>
      <option value="Ishikawa">石川県</option>
      <option value="Fukui">福井県</option>

      </select>

      <!-- 近畿 -->
      <select id="Kanto" class="subbox">
      <option value="USJ">USJ</option>
      <option value="Kyoto">京都府</option>
      <option value="Oosa">大阪府</option>
      <option value="Nara">奈良県</option>
      <option value="Wakayama">和歌山県</option>

      </select>

      <!-- 中国 -->
      <select id="China" class="subbox">
      <option value="Tottori">鳥取県</option>
      <option value="Shimane">島根県</option>
      <option value="Okayama">岡山県</option>
      <option value="Hiroshima">広島県</option>
      <option value="Yamaguchi">山口県</option>

      </select>

       <!-- 四国 -->
      <select id="Shikoku" class="subbox">
      <option value="Kagawa">香川県</option>
      <option value="Ehime">愛媛県</option>
      <option value="Tokushima">徳島県</option>
      <option value="Kochi">愛知県</option>
      </select>

       <!-- 九州 -->
      <select id="Kyushu" class="subbox">
      <option value="Fukuoka">福岡県</option>
      <option value=" Saga">佐賀県</option>
      <option value="Nagasaki">長崎県</option>
      <option value="Kumamoto">熊本県</option>
      <option value="Ooitaken">大分県</option>
      <option value="Miyasaki">宮崎県</option>
      <option value="Kagoshima">鹿児島県</option>
      <option value="Yuronjima">与論島</option>
      <option value="Excursion">九州周遊</option>
      <option value="Amami Islands">奄美諸島</option>
      </select>

      </div>
      <!-- ▼すべてのプルダウンメニューを書き終えた後にJavaScriptを記述▼ -->
<script type="text/javascript">

   // ▼サブBOXを全て非表示にする
   var allSubBoxes = document.querySelectorAll(".subbox");
   for( var i=0 ; i<allSubBoxes.length ; i++) {
      allSubBoxes[i].style.display = 'none';
   }

   // ▼全てのプルダウンボックスごとに処理
   var mainBoxes = document.querySelectorAll('.Selectset');
   for( var i=0 ; i<mainBoxes.length ; i++) {

      var mainSelect = mainBoxes[i].querySelectorAll(".Area");   // メインのプルダウンメニュー（※後でvalue属性値を参照するので、select要素である必要があります。）
      mainSelect[0].onchange = function () {
         // ▼同じ親要素に含まれている全サブBOXを消す
         var subBox = this.parentNode.querySelectorAll(".subbox");   // 同じ親要素に含まれる.subbox（※select要素に限らず、どんな要素でも構いません。）
         for( var j=0 ; j<subBox.length ; j++) {
            subBox[j].style.display = 'none';
         }

         // ▼指定されたサブBOXだけを表示する
         if( this.value ) {
            var targetSub = document.getElementById( this.value );   // 「メインのプルダウンメニューで選択されている項目のvalue属性値」と同じ文字列をid属性値に持つ要素を得る
            targetSub.style.display = 'inline';
         }
      }

   }

</script>

 <br><font color="red">参加人数</font>

  <div class="spinner_area">
 <font color="red">　大人　</font>
     <input type="button" value="+" class="btnspinner" data-cal="1" data-target=".com">
     <input type="number" value="0" class="com" data-max="20" data-min="0">
     <input type="button" value="-" class="btnspinner" data-cal="-1" data-target=".com">(12才以上)

     <br><br><font color="red">　子供　</font>
     <input type="button" value="+" class="btnspinner" data-cal="1" data-target=".com1">
     <input type="number" value="0" class="com1" data-max="10" data-min="0">
     <input type="button" value="-" class="btnspinner" data-cal="-1" data-target=".com1">(0～11才)

</div>
<script type="text/javascript">
$(function(){
var arySpinnerCtrl = [];
var spin_speed = 20; //変動スピード

//長押し押下時
$('.btnspinner').on('touchstart mousedown click', function(e){
    if(arySpinnerCtrl['interval']) return false;
    var target = $(this).data('target');
    arySpinnerCtrl['target'] = target;
    arySpinnerCtrl['timestamp'] = e.timeStamp;
    arySpinnerCtrl['cal'] = Number($(this).data('cal'));
    //クリックは単一の処理に留める
    if(e.type == 'click'){
        spinnerCal();
        arySpinnerCtrl = [];
        return false;
    }
    //長押し時の処理
    setTimeout(function(){
        //インターバル未実行中 + 長押しのイベントタイプスタンプ一致時に計算処理
        if(!arySpinnerCtrl['interval'] && arySpinnerCtrl['timestamp'] == e.timeStamp){
            arySpinnerCtrl['interval'] = setInterval(spinnerCal, spin_speed);
        }
    }, 500);
});

//長押し解除時 画面スクロールも解除に含む
$(document).on('touchend mouseup scroll', function(e){
    if(arySpinnerCtrl['interval']){
        clearInterval(arySpinnerCtrl['interval']);
        arySpinnerCtrl = [];
    }
});

//変動計算関数
function spinnerCal(){
    var target = $(arySpinnerCtrl['target']);
    var num = Number(target.val());
    num = num + arySpinnerCtrl['cal'];
    if(num > Number(target.data('max'))){
        target.val(Number(target.data('max')));
    }else if(Number(target.data('min')) > num){
        target.val(Number(target.data('min')));
    }else{
        target.val(num);
    }
}

});

</script>
<script type="text/javascript">
$(function(){
var arySpinnerCtrl = [];
var spin_speed = 20; //変動スピード

//長押し押下時
$('.btn').on('touchstart mousedown click', function(e){
    if(arySpinnerCtrl['interval']) return false;
    var target = $(this).data('target');
    arySpinnerCtrl['target'] = target;
    arySpinnerCtrl['timestamp'] = e.timeStamp;
    arySpinnerCtrl['cal'] = Number($(this).data('cal'));
    //クリックは単一の処理に留める
    if(e.type == 'click'){
        spinnerCal();
        arySpinnerCtrl = [];
        return false;
    }
    //長押し時の処理
    setTimeout(function(){
        //インターバル未実行中 + 長押しのイベントタイプスタンプ一致時に計算処理
        if(!arySpinnerCtrl['interval'] && arySpinnerCtrl['timestamp'] == e.timeStamp){
            arySpinnerCtrl['interval'] = setInterval(spinnerCal, spin_speed);
        }
    }, 500);
});

//長押し解除時 画面スクロールも解除に含む
$(document).on('touchend mouseup scroll', function(e){
    if(arySpinnerCtrl['interval']){
        clearInterval(arySpinnerCtrl['interval']);
        arySpinnerCtrl = [];
    }
});

//変動計算関数
function spinnerCal(){
    var target = $(arySpinnerCtrl['target']);
    var num = Number(target.val());
    num = num + arySpinnerCtrl['cal'];
    if(num > Number(target.data('max'))){
        target.val(Number(target.data('max')));
    }else if(Number(target.data('min')) > num){
        target.val(Number(target.data('min')));
    }else{
        target.val(num);
    }
}

});

</script>

    <br><font color="red">滞在日数　</font>
    <input type="date" name="data">　～　<input type="date" name="data"><br>
    <button type="submit" id="sbtn3"><i class="fas fa-search">　検索</i></button>


    </div>


    <input id="TAB-02" type="radio" name="TAB" class="tab-switch" /><label class="tab-label" for="TAB-02"style="border-radius: 10px;">海外旅行</label>
    <div class="tab-content">
        コンテンツ 2
    </div>
    <input id="TAB-03" type="radio" name="TAB" class="tab-switch" /><label class="tab-label" for="TAB-03"style="border-radius: 10px;">チケット+宿泊</label>
    <div class="tab-content">
        コンテンツ 3
    </div>
    <input id="TAB-04" type="radio" name="TAB" class="tab-switch" /><label class="tab-label" for="TAB-04"style="border-radius: 10px;">一人旅行</label>
    <div class="tab-content">
        コンテンツ 3
    </div>

</div>

<div class="add-control">
  <input type="checkbox" class="chk" id="open-close" name="btns" /><label class="btns btns-open-close" for="open-close"></label>
  <div class="tab-add">
     <form name="f1">

  <p>部屋条件</p>
     <input type="button" value="シングルベッド" style="background:#FFFFFF" onClick="yesno(0)">
     <input type="button" value="ツインルーム" style="background:#FFFFFF" onClick="yesno(1)">
     <input type="button" value="トリプルルーム" style="background:#FFFFFF" onClick="yesno(2)">
     <input type="button" value="和洋室" style="background:#FFFFFF" onClick="yesno(3)">
     <input type="button" value="和室" style="background:#FFFFFF" onClick="yesno(4)">
     <input type="button" value="海を見える" style="background:#FFFFFF" onClick="yesno(5)">
 <br><br><p>食事条件</p>
     <input type="button" value="朝夕食付き" style="background:#FFFFFF" onClick="yesno(6)">
     <input type="button" value="夕食付き" style="background:#FFFFFF" onClick="yesno(7)">
     <input type="button" value="朝食付き" style="background:#FFFFFF" onClick="yesno(8)">
     <input type="button" value="食付無" style="background:#FFFFFF" onClick="yesno(9)">
 <br><br><p>こだわり</p>
     <input type="button" value="露天風呂付き" style="background:#FFFFFF" onClick="yesno(10)">
     <input type="button" value="送迎付き" style="background:#FFFFFF" onClick="yesno(11)">
      <input type="button" value="有線LAN " style="background:#FFFFFF" onClick="yesno(12)">



</form>
</div>

   <script language="javascript">

   var f=new Array(15);
   f[0]=0;
   f[1]=0;
   f[2]=0;
   f[3]=0;
   f[4]=0;
   f[5]=0;
   f[6]=0;
   f[7]=0;
   f[8]=0;
   f[9]=0;
   f[10]=0;
   f[11]=0;
   f[12]=0;
   function yesno(b){
	   if(f[b]==0){
		   document.f1.elements[b].style.background= 'LightGray';
		   document.f1.elements[b].style.color='#FFFFFF';
		   f[b]=1;
	   } else {
	   document.f1.elements[b].style.background='#FFFFFF';
	   document.f1.elements[b].style.color='#000000';
	   f[b]=0;
	   }
   }


   </script>

  </div>
</div>
    </div>



</body>
</html>