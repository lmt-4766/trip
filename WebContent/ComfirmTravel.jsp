<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>国内ツアー　検索</title>
 <link rel="stylesheet"  href="http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css?20201218">
  <link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="stylesheet">

<script src="https://code.jquery.com/jquery-1.12.4.min.js"
            integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
            crossorigin="anonymous"></script>

            <link rel="stylesheet"  href="tripDB.css?20210222">

</head>
<body>

<div class="tab-wrap">
${message }
    <div class="tab-content">
     <form  action="${ pageContext.request.contextPath }/tripSearch"  name="form1" method="post" >
     <font color="red">ID　　　　</font>
     <input type="text" name="TravelId" pattern="^([a-zA-Z0-9]{8,20})$" required>
     <font color="red">　※　8～20文字の半角英数字でご入力ください。</font><br><br><br>

     <font color="red">名称　　　</font>
     <input type="text" name="TravelName" required><br><br>


     <br><font color="red">内容　　　</font>
     <textarea name="Traveltest" cols="30" rows="8" maxlength="38"  pattern="^([a-zA-Z0-9]{8,38})$" ></textarea>

     <br><br><font color="red">出発日　　</font>
     <input type="date" name="Traveldate"><br><br><br><br>

      <br><font color="red">滞在日数　</font>
    <input type="date" name="Traveldates">　～　<input type="date" name="Traveldatess"><br><br><br>

     <br><font color="red">募集人数</font>

  <div class="spinner_areas" >
 <font color="red">大人　　　</font>
     <input type="button" value="+" class="btnspinner" data-cal="1" data-target=".com">
     <input type="number" name="Travelpeople" value="0" class="com" data-max="20" data-min="0">
     <input type="button" value="-" class="btnspinner" data-cal="-1" data-target=".com">(12才以上)<br><br>

     <br><font color="red">子供　　　</font>
     <input type="button" value="+" class="btnspinner" data-cal="1" data-target=".com1">
     <input type="number" name="Travelchildren" value="0" class="com1" data-max="10" data-min="0">
     <input type="button" value="-" class="btnspinner" data-cal="-1" data-target=".com1">(0～11才)<br><br>


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
<script type="text/javascript" >
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



    <div class="Money">
   <br><font color="red">金額　　　</font>
      <select  name="Travelprice" >
      <option value="Money">指定しない</option>
      <option value="20,000～30,000">2万円</option>
      <option value="50,000">5万円</option>
      <option value="60,000">6万円</option>
      <option value="70,000">7万円</option>
      <option value="100,000">10万円</option>
      <option value="110,000">11万円</option>
      <option value="120,000～140,000">12万円</option>
      <option value="150,000～190,000">15万円</option>
      <option value="200,000">20万円</option>
      </select>

      </div>

     <br><br><font color="red">行先　　　　</font>
     <div class="Selectset" >

      　<select class="Area" >
      <option value="">行先を選択</option>
      <option value="Japan">国内</option>
      <option value="Word">海外</option><br><br>
      </select>

      <select id="Japan" class="subboxs" name="TravelCity">
      <option value="">都市を選択</option>
      <option value="北海道">北海道</option>
      <option value="東北">東北</option>
      <option value="関東">関東</option>
      <option value="中部">中部</option>
      <option value="近畿">近畿</option>
      <option value="中国">中国</option>
      <option value="四国">四国</option>
      <option value="九州">九州</option>
      </select>

      <!-- 北海道 -->


      <select id="北海道" class="subbox">
      <option value="Adult">都市を選択</option>
      <option value="北海道周遊">北海道周遊</option>
      <option value="札幌市内">札幌市内</option>
      <option value="道北">道北</option>
      <option value="道南">道南</option>
      <option value="道央">道央</option>
      <option value="道東">道東</option>
       </select>


       <!-- 東北 -->
      <select id="東北" class="subbox">
      <option value="Adult">都市を選択</option>
      <option value="東北周遊">東北周遊</option>
      <option value="宮城県">宮城県</option>
      <option value="山形県">山形県</option>
      <option value="岩手県">岩手県</option>
      <option value="秋田県">秋田県</option>
      <option value="青森県">青森県</option>
      <option value="福島県">福島県</option>

      </select>

       <!-- 関東 -->

         <select id="関東" class="subbox">
      <option value="Adult">都市を選択</option>
      <option value="関東周遊">関東周遊</option>
      <option value="東京都">東京都</option>
      <option value="千葉県">千葉県</option>
      <option value="伊豆諸島">伊豆諸島</option>
      <option value="栃木県">栃木県</option>
      <option value="神奈川県">神奈川県</option>
       </select>


       <!-- 中部 -->

      <select id="中部" class="subbox" >
      <option value="Adult">都市を選択</option>
      <option value="山梨県">山梨県</option>
      <option value="新潟県">新潟県</option>
      <option value="長野県">長野県</option>
      <option value="富士県">富士県</option>
      <option value="石川県">石川県</option>
      <option value="福井県">福井県</option>

      </select>

      <!-- 近畿 -->
      <select id="近畿" class="subbox" >
      <option value="Adult">都市を選択</option>
      <option value="USJ">USJ</option>
      <option value="京都府">京都府</option>
      <option value="大阪府">大阪府</option>
      <option value="奈良県">奈良県</option>
      <option value="和歌山県">和歌山県</option>

      </select>

      <!-- 中国 -->
      <select id="中国" class="subbox">
      <option value="Adult">都市を選択</option>
      <option value="鳥取県">鳥取県</option>
      <option value="島根県">島根県</option>
      <option value="岡山県">岡山県</option>
      <option value="広島県">広島県</option>
      <option value="山口県">山口県</option>

      </select>

       <!-- 四国 -->
      <select id="四国" class="subbox" >
      <option value="Adult">都市を選択</option>
      <option value="香川県">香川県</option>
      <option value="愛媛県">愛媛県</option>
      <option value="徳島県">徳島県</option>
      <option value="愛知県">愛知県</option>
      </select>

       <!-- 九州 -->
      <select id="九州" class="subbox" name=DB"Traveltown">
      <option value="Adult">都市を選択</option>
      <option value="福岡県">福岡県</option>
      <option value=" 佐賀県">佐賀県</option>
      <option value="長崎県">長崎県</option>
      <option value="熊本県">熊本県</option>
      <option value="大分県">大分県</option>
      <option value="宮崎県">宮崎県</option>
      <option value="鹿児島県">鹿児島県</option>
      <option value="与論島">与論島</option>
      <option value="九州周遊">九州周遊</option>
      <option value="奄美諸島">奄美諸島</option>
      </select>

<input type="button" value="選択" onclick="clickDisplayAlert()">
<p id="h1" name="Traveltown"></p>
<script type="text/javascript">
function clickDisplayAlert() {

	  // button要素をクリックしたら発動


	 // セレクトボックスで選択したvalue値を変数に格納
	    var city = $('#九州').val();

	// p要素にvauleを出力
	    $('p').text(city);


	};

	    </script>

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

         var subBoxs = this.parentNode.querySelectorAll(".subboxs");   // 同じ親要素に含まれる.subbox（※select要素に限らず、どんな要素でも構いません。）
         for( var x=0 ; x<subBoxs.length ; x++) {
            subBoxs[x].style.display = 'none';
         }

         // ▼指定されたサブBOXだけを表示する
         if( this.value ) {
            var targetSub = document.getElementById( this.value );   // 「メインのプルダウンメニューで選択されている項目のvalue属性値」と同じ文字列をid属性値に持つ要素を得る
            targetSub.style.display = 'inline';
         }
      }

   }
   //二番セレクトボックス
   var allSubBoxed = document.querySelectorAll(".subboxs");
   for( var i=0 ; i<allSubBoxed.length ; i++) {
      allSubBoxed[i].style.display = 'none';
   }

   var mainBoxess = document.querySelectorAll('.Selectset');
   for( var i=0 ; i<mainBoxess.length ; i++) {

      var mainSelects = mainBoxess[i].querySelectorAll(".subboxs");   // メインのプルダウンメニュー（※後でvalue属性値を参照するので、select要素である必要があります。）
      mainSelects[0].onchange = function () {

         // ▼同じ親要素に含まれている全サブBOXを消す
         var subBoxs = this.parentNode.querySelectorAll(".subbox");   // 同じ親要素に含まれる.subbox（※select要素に限らず、どんな要素でも構いません。）
         for( var j=0 ; j<subBoxs.length ; j++) {
            subBoxs[j].style.display = 'none';

         }

         // ▼指定されたサブBOXだけを表示する
         if( this.value ) {
            var targetSubs = document.getElementById( this.value );   // 「メインのプルダウンメニューで選択されている項目のvalue属性値」と同じ文字列をid属性値に持つ要素を得る
            targetSubs.style.display = 'inline';
         }

      }
   }

   function sample2(){

	   var allSubBoxes = document.querySelectorAll(".subbox");
	   for( var i=0 ; i<allSubBoxes.length ; i++) {
	      allSubBoxes[i].style.display = 'none';
	   }
	   var allSubBoxes = document.querySelectorAll(".subboxs");
	   for( var i=0 ; i<allSubBoxes.length ; i++) {
	      allSubBoxes[i].style.display = 'none';
	   }


   }

</script>



     <input type="reset" onclick="sample2()">
     <input type="submit" value="登録" >


</div>
</form>
    </div>
    </div>

</body>
</html>
