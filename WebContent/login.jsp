<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>ようこそ！</title>
<script src="/ssj_ex12-7/js/scrollTop.js"></script>
<!--
<script src="/ssj_ex12-7/js/language.js"></script>
-->
<div class="Home">
<font color="red"style="font-size:24px">Travel </font>
<br><br><br><br><br>
<marquee width="1860"  scrollamount="4" height="90"><img src="OIP3YIBB6NG_1.jpg">
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
<style>
 import url(input.css)
	</style>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"
            integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
            crossorigin="anonymous"></script>

<div style="position: absolute; top:200px; right: 580px; max-width: 100%; max-height: 100%; padding: 30px;">

<p>ようこそ！！ ${ loginId } 様 </p>
<p>保有ポイント：       </p>
<input type="submit" id="button" onClick="disp();return false;" href="./logout" value="アカウント">

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css">
<div id="page_top"><a href="#"></a></div>

<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/2.9.0/css/flag-icon.css" rel="stylesheet">
<ul class="avi">
    <li><a class="active" href="#home">ホーム</a></li>
    <li><a href="#"><i class="fa fa-globe" aria-hidden="true"></i>国内</a>
  <ul>
    <li><a href="#">観光</a></li>
    <li><a href="#">交通</a></li>
    <li><a href="#">飲食</a></li>
    <li><a href="#">宿泊</a></li>
    <li><a href="#">天気</a></li>
   </ul>
  </li>
<li><a href="#"><i class="fa fa-globe" aria-hidden="true"></i>海外</a>
<ul>
<li><a href="#">観光</a></li>
<li><a href="#">交通</a></li>
<li><a href="#">飲食</a></li>
<li><a href="#">宿泊</a></li>
<li><a href="#">天気</a></li>
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


</ul>
<style>
 import url(input.css)
	</style>

	 <link rel="stylesheet"  href="http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css">
  <link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="stylesheet">
  <link rel="stylesheet"  href="input.css">



</head>
<body>

<div class="image">
<img id="img" src="無題2.png" width="2019" height="400">

<div style="position: absolute; top: 10px; right:90px; max-width: 100%; max-height: 100%; padding: 0px;">
<a href="#">店舗一覧</a>
<a href="#">よくある質問</a>
<a class="language" href="#ja"><i class="flag-icon flag-icon-jp flag-icon-squared"></i>日本語</a>
<a class="language" href="#us"><i class="flag-icon flag-icon-us flag-icon-squared"></i>英語</a>

</div>

<div style="position: absolute; top: 80px; right:100px; max-width: 100%; max-height: 100%; padding: 0px;">
<form action="login.jsp" method="post">
<input  type="text"  id="sbox4"  name="s" />
<button type="submit" id="sbtn2"><i class="fas fa-search"></i></button>

<language initial="en" lang="ja,en,ch"></language>



</form>

</div>
</div>



<script> //画面が自動的入れ替える
var list=new Array("829e058473e899c592d9718111d8526f103caeff.jpg","無題2.png","OIPC73W9MSZ.jpg");
var num=-1;

slideshow_timer();

function slideshow_timer(){
	if (num==2){
	num=0;
	}
	else{
		num++;
	}
		document.getElementById("img").src=list[num];
		setTimeout("slideshow_timer()",10000);
	}

</script>
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
<div id="center">


<script type="text/javascript">

jQuery(function() {
	  var appear = false;
	  var pagetop = $('#page_top');
	  $(window).scroll(function () {
	    if ($(this).scrollTop() > 100) {  //100pxスクロールしたら
	      if (appear == false) {
	        appear = true;
	        pagetop.stop().animate({
	          'bottom': '50px' //下から50pxの位置に
	        }, 300); //0.3秒かけて現れる
	      }
	    } else {
	      if (appear) {
	        appear = false;
	        pagetop.stop().animate({
	          'bottom': '-50px' //下から-50pxの位置に
	        }, 300); //0.3秒かけて隠れる
	      }
	    }
	  });
	  pagetop.click(function () {
	    $('body, html').animate({ scrollTop: 0 }, 500); //0.5秒かけてトップへ戻る
	    return false;
	  });
	});

</script>
</div>
</body>
</html>