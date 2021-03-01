<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>マイページ</title>

<div class="Home">

</div>

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

<style>
 import url(input.css)
	</style>


<script src="https://code.jquery.com/jquery-1.12.4.min.js"
            integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
            crossorigin="anonymous"></script>
<style>
 import url(input.css)
	</style>

	 <link rel="style"  href="http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css?20201218">
  <link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="style">
  <link rel="style"  href="input.css?20210224">



</head>
<body>

<font color="red"style="font-size:37px">Travel </font>
<div class="cents">
<a href="#"style="text-decoration:none;">店舗一覧</a>
<a href="#" style="text-decoration:none;">よくある質問</a>
<a class="language" href="#ja" style="text-decoration:none;"><i class="flag-icon flag-icon-jp flag-icon-squared"></i>日本語</a>
<a class="language" href="#us" style="text-decoration:none;"><i class="flag-icon flag-icon-us flag-icon-squared"></i>英語</a>

</div>
<script src="language.js"></script>

<language initial="en" lang="ja,en,ch"></language>
<div  class="centes">
<form action="login.jsp" method="post">
<input  type="search"  id="sbox1"  name="s" />
<button type="button" id="sbtn2"><i class="fas fa-search"></i></button>



</form>

</div>
<br><br><br><br><br>
<marquee width="2000"  scrollamount="4" height="90"><img src="OIP3YIBB6NG_1.jpg">
<font color="red"style="font-size:18px">

【国内】★関東エリア 二泊三日東京を満喫！！ 北海道エリア 摩周湖 美瑛白金の青い池 ホーツク海の流氷、★

【国際】★ 乗り降り自由のローマ観光ツアー！！     サンタ・マリア・マッジョーレ大聖堂の参拝★

</font>
</marquee>
${ message }
<form action="${ pageContext.request.contextPath }/login" method="post">
<br><font size="4 "><a href="newUser.jsp" style="text-decoration:none;">　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　新規登録</a></font>
<input type="text" name="loginId" placeholder="ID">
<input type="password" name="password"   placeholder="パスワード">
<input type="submit"  value="ログイン" >

</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="style" href="https://use.fontawesome.com/releases/v5.6.4/css/all.css?20201118">
<div id="page_top"><a href="#"></a></div>

<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css?20201118" rel="style">
<link href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/2.9.0/css/flag-icon.css?20201118" rel="style">
<ul class="avi">
    <li><a class="active"><i class="fa fa-globe" aria-hidden="true"></i>国内旅行</a>
  <ul>
    <li><a href="DomesticTravel.jsp">観光ツアー</a></li>
    <li><a href="#">交通</a></li>
    <li><a href="#">宿泊</a></li>
    <li><a href="#">日帰り</a></li>
   </ul>
  </li>
<li><a href="#"><i class="fa fa-globe" aria-hidden="true"></i>海外旅行</a>
<ul>
<li><a href="OverseasTravel.jsp">観光ツアー</a></li>
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

</ul>

<img id="img" src="無題2.png" width="1990" height="800"  class="image">

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
	<div id="center">

<p id="tabcontrol">
   <a href="#tabpage1" style="text-decoration:none;">ニュース</a><font color="red" size="5px">new</font>
</p>
<div id="tabbody">


   <div id="tabpage1">
        <li><span style="color:rgb(255,255,255);background-color: rgb(71, 196, 12);border-radius: 10px;">　国内　</span>　<a href="https://www.travelvoice.jp/20200923-147124/" style="text-decoration:none;">緊急事態宣言下の国内旅行消費額83%減、宿泊旅行者は81%減、旅行単価は26%減</a>(2020.09.23)</li><br>
	    <li><span style="color:rgb(255,255,255);background-color: rgb(233, 76, 85);border-radius: 10px;">　お知らせ　</span>　<a href="https://www.travelvoice.jp/20200923-147024" style="text-decoration:none;">海外渡航で携帯電話レンタル需要が増加、コロナ隔離期間中の連絡手段として、
	    電話番号の登録が必須、テレコムスクエアが新プラン</a><span class="audate">(2020.09.23)</span></li><br>
	    <li><span style="color:rgb(255,255,255);background-color: rgb(233, 76, 85);border-radius: 10px;">　お知らせ　</span>　<a href="https://www.travelvoice.jp/20200923-147111/" style="text-decoration:none;">ANAセールス、国内旅行に新型コロナ保険を付保、旅行中の医療相談や旅行後14日内の感染２万円補償など</a>（2020.09.23)</li><br>
	    <li><span style="color:rgb(255,255,255);background-color: rgb(233, 76, 85);border-radius: 10px;">　お知らせ　</span>　<a href="https://www.travelvoice.jp/20200923-147105/" style="text-decoration:none;">エアカナダ、国際戦往復航空券に無料新型コロナ保険、対象はカナダ公民、治療費としては最大1600万円を補償</a> (2020.09.23)</li><br>
	     <li><span style="color:rgb(255,255,255);background-color: rgb(233, 76, 85);border-radius: 10px;">　お知らせ　</span>　<a href="https://www.travelvoice.jp/20200924-147147/" style="text-decoration:none;">ANAとJALが中国線再開、成田/広州線で、ANAは成田/青島線も</a> (2020.09.24)</li><br>

   </div>
</div>
<div class="container">
        <a href="${ pageContext.request.contextPath }/home.jsp" style="text-decoration:none;"><h3 id="show"></h3></a>
        <div id="calender"></div>
        <button id="prev">先月</button>
        <button id="next">来月</button>
    </div>
    <script src="style.js"></script>

<div class="TabBlocks" style="display:block"  role="search">
<p id="tabcontrols">
<br>国内線 購入・予約確認・変更

</p>
   <ul class="cp_list">
    <li><a href="#" style="text-decoration:none;">予約確認・購入・座席指定</a></li><br>
    <li><a href="#" style="text-decoration:none;">搭乗手続き</a></li><br>
    <li><a href="#" style="text-decoration:none;">その他のご予約をお持ちのお客様</a></li>
   </ul>

</div>


   <div class="cp_tab">
  <br> <p id="tabcontroles">運用状況の確認・検索</p>
	 <input type="radio" name="cp_tab" id="tab4_1" checked>
	 <label for="tab4_1">路線で検索</label>
	 <input type="radio" name="cp_tab" id="tab4_2">
	 <label for="tab4_2">便名で検索</label>

	<div class="cp_tabpanels">
		<div class="cp_tabpanel">
		 <ul class="cp_list">
          <li> 出発地:
      <select class="Area">
      <option value="HND">羽田空港</option>
      <option value="ITM">伊丹空港</option>
      <option value="KIX">関西空港</option>
      <option value="CTS">新千歳空港</option>
      <option value="NRT">成田空港</option>
      <option value="NGO">中部国際空港</option>
      <option value="FUK">福岡空港</option>
      <option value="OKA">那覇空港</option>

      </select>
       </li>
          <li> 到着地:
    <select class="Area">
      <option value="HND">羽田空港</option>
      <option value="ITM">伊丹空港</option>
      <option value="KIX">関西空港</option>
      <option value="CTS">新千歳空港</option>
      <option value="NRT">成田空港</option>
      <option value="NGO">中部国際空港</option>
      <option value="FUK">福岡空港</option>
      <option value="OKA">那覇空港</option>

      </select>
       </li>
        <br> <input type="date">
        <input type="button" id="sbtn4" value="検索">
         </ul>
		</div>
		<div class="cp_tabpanel">
			<ul class="cp_list">
    <li>便名：<input type="text" id="sbox5"></li>
     <div class="Selectset">
    <li> 出発地:
      <select class="Area">
      <option value="HND">羽田空港</option>
      <option value="ITM">伊丹空港</option>
      <option value="KIX">関西空港</option>
      <option value="CTS">新千歳空港</option>
      <option value="NRT">成田空港</option>
      <option value="NGO">中部国際空港</option>
      <option value="FUK">福岡空港</option>
      <option value="OKA">那覇空港</option>

      </select>
       </li>
    <li> 到着地:
    <select class="Area">
      <option value="HND">羽田空港</option>
      <option value="ITM">伊丹空港</option>
      <option value="KIX">関西空港</option>
      <option value="CTS">新千歳空港</option>
      <option value="NRT">成田空港</option>
      <option value="NGO">中部国際空港</option>
      <option value="FUK">福岡空港</option>
      <option value="OKA">那覇空港</option>

      </select>
       </li>
    <br> <input type="date">
    <input type="button" id="sbtn4" value="検索">
   </ul>
		</div>
	</div>
 </div>

  <div class="TabBlockss" style="display:block"  role="search">
  <p id="tabcontrolss">
  <br>ご搭乗に関する注意事項
 </p>
    <ul class="cp_list">
    <li><a href="#" style="text-decoration:none;">搭乗手続きの流れ</a></li><br>
    <li><a href="#" style="text-decoration:none;">スキップサービスについて</a></li><br>
    <li><a href="#" style="text-decoration:none;">荷物について</a></li><br>
    <li><a href="#" style="text-decoration:none;">乗り継ぎ便の手続きについて</a></li><br>
    <li><a href="#" style="text-decoration:none;">各空港からのお知らせ</a></li>
   </ul>

</div>

<div class="plan">
 <span style="color:rgb(255,255,255);background-color: rgb(233, 76, 85);border-radius: 40px;">　　お勧めプラン　</span><br><br>
</div>

<div class="TabBlockb">
 <br><br><p align="center"><font color="red" size="6px">北海道</font></p>

  <div class="plans">
<img src="42819147_2.jpg" align="button" vspace="15" hspace="30" height="300">
<p align="left"><font color="red"><a href="#" style="text-decoration:none;">札幌周遊 3日間 83,000円～120,000円</a></font></p>
</div>

</div>
<div class="TabBlockbs">
 <br><br><p align="center"><font color="red" size="6px">関東</font></p>
  <div class="planss">
<img src="8344948429_1da5a6f0e7_b.jpg" align="button" vspace="15" hspace="30" height="300">
<p align="left"><font color="red"><a href="#" style="text-decoration:none;">東京周遊 4日間 17,8000円～48,000円</a></font></p>
</div>

</div>
<div class="TabBlockbes">
 <br><br><p align="center"><font color="red" size="6px">関西</font></p>
  <div class="planes">
<img src="osa_dotonbori_night.jpg" align="button" vspace="15" hspace="30" height="300">
<p align="left"><font color="red"><a href="#" style="text-decoration:none;">大阪周遊 2日間 20,000円～43,000円</a></font></p>
</div>
</div>
<div class="TabBlockbe">
 <br><br><p align="center"><font color="red" size="6px">ハワイ</font></p>
  <div class="plane">
  <img src="mainvisual_img01.jpg" align="button" vspace="15" hspace="30" height="300">
<p align="left"><font color="red" ><a href="#" style="text-decoration:none;">ハワイ 7日間  110,000円～112,000円</a></font></p>
</div>
</div>
<div class="TabBlockbea">
 <br><br><p align="center"><font color="red" size="6px">イタリア</font></p>
 <div class="planea">
<img src="bigstock-175613131.jpg" align="button" vspace="15" hspace="30" height="300">
<p align="left"><font color="red"><a href="#" style="text-decoration:none;">ローマ 5日間  95,700円～190,000円</a></font></p>
<div class="planeq">
<br><br><br><span style="color:rgb(255,255,255);background-color: rgb(71, 196, 12);border-radius: 10px;"><font color="white" >
<a href="#" style="text-decoration:none;">　プランもっと見る　</a></font></span>
</div>
</div>
</div>
<div class="TabBlockbed">
 <br><br><p align="center"><font color="red" size="6px">イタリア</font></p>
  <div class="planed">
<img src="bigstock-175613131.jpg" align="button" vspace="15" hspace="30" height="300">
<p align="left"><font color="red" ><a href="#" style="text-decoration:none;">ローマ 7日間 195,800円～230,000円</a></font></p>
</div>
</div>

<div class="Tabse">

<div class="Tabses">
<p align="left"><font color="red" size="15px"><a  style="text-decoration:none;">　国内旅行</a></font></p>
<font  size="6px"><a href="${ pageContext.request.contextPath }/home.jsp" style="text-decoration:none;">　　　国内旅行トップ 　</a></font>
<font  size="6px"><a href="#" style="text-decoration:none;">　バスツアー　</a></font>
<font  size="6px"><a href="#" style="text-decoration:none;">　鉄道ツアー　</a></font>
<font  size="6px"><a href="#" style="text-decoration:none;">　鉄道+ホテル　</a></font>
<font  size="6px"><a href="#" style="text-decoration:none;">　レンタカー　</a></font>
<font  size="6px"><a href="#" style="text-decoration:none;">　旅プロ（比較サイト）　</a></font><br>
<font  size="6px"><a href="#" style="text-decoration:none;">　　　日帰り旅行　</a></font>
<br><br><font  size="6px"><a href="#" style="text-decoration:none;">　　国内ツアー　</a></font>
<br><br><font  size="4px"><a href="#" style="text-decoration:none;">　　　　　沖縄旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　沖縄離島　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　北海道旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ハウステンボス旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　九州旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　東北旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　関東・甲信越旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　東海・北陵旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　近畿・関西旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　山陰・山陽旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　四国旅行　</a></font>
<br><br><font  size="6px"><a href="#" style="text-decoration:none;">　　旅館/ホテル　</a></font>
<p align="left"><font  color="darkgray" size="15px">__________________________________________________________</font></p>
<p align="left"><font color="red" size="15px"><a  style="text-decoration:none;">　法人・団体・組織向けサービス</a></font></p>

<br><font  size="4px"><a href="#" style="text-decoration:none;">　　　　法人・団体・組織向けサービス　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　海外出張・業務渡航　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　会議　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　社員旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　海外視察・学会・見本市　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　福利厚生　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　公務出張　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　スポーツイベント・スポーツ大会　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　修学旅行・教育旅行　</a></font><br>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　エンターテインメント事業　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　グループ旅行　</a></font>
<p align="left"><font  color="darkgray" size="15px">__________________________________________________________</font></p>
<p align="left"><font color="red" size="15px"><a  style="text-decoration:none;">　テーマ別旅行</a></font></p>

<br><font  size="4px"><a href="#" style="text-decoration:none;">　　　航空会社丸分かり　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　世界遺産50選　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　クルーズ旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ビジネス・ファーストクラス　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　海外券航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　世界一周　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　海外・沖縄ウェディング　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　スポーツ観戦・体験　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　世界遺産・秘境ツアー　</a></font>
<br><font  size="4px"><a href="#" style="text-decoration:none;">　　　トレッキング・自然体験ツアー　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ポランティア　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　バリアフリー旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　留学・ホームスティ　</a></font>
<p align="left"><font  color="darkgray" size="15px">__________________________________________________________</font></p>
<p align="left"><font color="red" size="15px"><a style="text-decoration:none;">　海外旅行</a></font></p>
<font  size="6px"><a href="#" style="text-decoration:none;">　　海外ツアー 　</a></font>
<br><font  size="6px"><a href="#" style="text-decoration:none;">　　ハワイ　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　　　　　　　 ハワイ旅行</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　　グアム・サイパン　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　グアム旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　サイパン旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　パラオ諸島旅行</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　　オセアニア・南太平洋　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　オーストラリア旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ニュージーランド旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ニューカレドニア旅行</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　　ヨーロッパ　　　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　イタリア旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ローマ旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　スイス旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　スペイン旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ドイツ旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　イギリス旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ギリシャ旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ポルトガル旅行　</a></font>
<br><font  size="4px"><a href="#" style="text-decoration:none;">　　　　　　　　　　　　　　　　　　　　　　
　　 ポーランド旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　オランダ旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ベルギー旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　チェコ旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　オーストラリア旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ハンガリー旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　オランダ旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ロシア旅行</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　　アジア　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　　　　　　　韓国旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　台湾旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　タイ旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　プーケット旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　シンガポール旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ベトナム旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　香港旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　中国旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　上海旅行　</a></font>
<br><font  size="4px"><a href="#" style="text-decoration:none;">　　　　　　　　　　　　　　　　　　　　　
　　　北京旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　パリ島旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　インド旅行　　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　マレーシア旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　フィリピン旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ラオス旅行</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　　北米　　　　　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　 アメリカ旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ニューヨーク旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ロサンゼルス旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ラスベガス旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　オーランド旅行　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　カナダ旅行</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　　アフリカ　　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　　　 エジプト旅行　</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　　中東　　　　　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　 ドバイ旅行</a></font>

<br><br><p align="left"><font color="red" size="15px"><a style="text-decoration:none;">海外格安航空券</a></font></p>
<br><font  size="6px"><a href="#" style="text-decoration:none;">　ハワイ　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　　　　　　　ハワイ（ホノルル）格安航空券</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　グアム・サイパン　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　グアム格安航空券　</a></font>


<br><font  size="6px"><a href="#" style="text-decoration:none;">　オセアニア・南太平洋　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　オーストラリア格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　オークランド格安航空券</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　ヨーロッパ　　　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　イタリア格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ローマ格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　スイス格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　スペイン格安航空券　</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　アジア　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　　　　　　　韓国格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　台湾格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　タイ格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　プーケット格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　シンガポール格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ベトナム格安航空券　</a></font>
<br><font  size="4px"><a href="#" style="text-decoration:none;">　　　　　　　　　　　　　　　　　　　　　
　 香港格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　上海格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　北京格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　マレーシア格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　フィリピン格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ラオス格安航空券</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　北米　　　　　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　 アメリカ格安航空券　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　ニューヨーク格安航空券　</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　アフリカ　　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　　　エジプト格安航空券　</a></font>

<br><font  size="6px"><a href="#" style="text-decoration:none;">　中東　　　　　　　</a></font>
<font  size="4px"><a href="#" style="text-decoration:none;">　　　　 ドバイ格安航空券</a></font>


</div>
</div>
</div>


</body>
</html>