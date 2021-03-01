<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>検索結果</title>
<link rel="style"  href="search_results.css?20210224">
</head>
<body>

<div style="border:double;">
<p align="center">旅行プラン＞フライトの予約＞ホテル予約＞内容確認＞予約完了</p>
<div class="table">
 <table class="form-tables" >

    <tr><th>ID</th><td>${ tb.travelId} <input type="submit" value="空席確認"></td></tr>
	<tr><th>名称</th><td>${ tb.travelName}</td></tr>
	<tr><th>内容</th><td>${ tb.traveltest }</td></tr>
	<tr><th></th><td></td></tr>
	<tr><th></th><td></td></tr>
	<tr><th>出発日</th><td>${ tb.traveldate }</td></tr>
	<tr><th>滞在日(行き)</th><td>${ tb.traveldates }</td></tr>
	<tr><th>滞在日(帰り)</th><td>${ tb.traveldatess }</td></tr>
	<tr><th>募集人数(大人)</th><td>${ tb.travelpeople }</td></tr>
	<tr><th>募集人数(子供)</th><td>${ tb.travelchildren }</td></tr>
	<tr><th>予算（円）</th><td>${ tb.travelprice }</td></tr>
	<tr><th>行先(都市)</th><td>${ tb.traveltown }（${ tb.travelCity}）</td></tr>

	</table>

</div>
</div>
</body>
</html>