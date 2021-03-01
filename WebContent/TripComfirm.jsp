<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>国内ツアー　検索</title>
</head>
<body>
<div class="table">
<link rel="stylesheet"  href="tripsoek.css?20210222">
<font size="5 "><a href="ComfirmTravel.jsp" >新規登録＞</a></font>
<font size="6 "color="red"><a href="TripComfirm.jsp">確認</a></font>
<br>
${message }
 <form  action="${ pageContext.request.contextPath }/tripSearch" method="post" />

<table class="form-tables" border="5">
    <tr>
			<th>ID</th>
			<th>名称</th>
			<th>内容</th>
			<th>出発日</th>
			<th>滞在日(行き)</th>
			<th>滞在日(帰り)</th>
			<th>募集人数(大人)</th>
			<th>募集人数(子供)</th>
			<th>金額（円）</th>
			<th>行先(都市)</th>
	</tr>

	<tr>
				<td>${ tb.travelId}</td>
				<td>${ tb.travelName}</td>
				<td>${ tb.traveltest }</td>
				<td>${ tb.traveldate }</td>
				<td>${ tb.traveldates }</td>
				<td>${ tb.traveldatess }</td>
				<td>${ tb.travelpeople }</td>
				<td>${ tb.travelchildren }</td>
				<td>${ tb.travelprice }</td>
				<td>${ tb.traveltown }（${ tb.travelCity}）</td>
              <a href="Tra_details.jsp"><button type="button"  id="sbtn4" >プランの詳細</button></a>
	</tr>

	</table>

 <p><a href="${ pageContext.request.contextPath }/home.jsp">Topページへ</a></p>


</div>
</body>
</html>
