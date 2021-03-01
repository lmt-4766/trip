<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>検索画面</title>



<link rel="stylesheet"  href="http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css?20200209">
  <link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="stylesheet">
<link rel="stylesheet"  href="tripsoek.css?20210210">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
            integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
            crossorigin="anonymous"></script>
</head>
<body>
<div class="Home">
<font color="red"style="font-size:24px">Travel </font>
</div>


<form  action="${ pageContext.request.contextPath }/traSearch" method="post">
　　　　　${message }
<div class="srarch">

   <p id="tabcontroles">旅行プラン検索</p>
	 <input type="radio" name="srarch" id="tab4_1" checked>
	 <label for="tab4_1">個別番号</label>
	 <input type="radio" name="srarch" id="tab4_2">
	 <label for="tab4_2">連番番号</label>

<div class="cp_tabpanels">
		<div class="cp_tabpanel">
		 <ul class="cp_list">
<li><font color="red">ID　　　　</font></li>
<input type="text" name="TravelId"><br>
<li><font color="red">名称　　　</font></li>
<input type="text" name="TravelName"><br><br><br>
<input type="submit"  value="検索">
</ul>
</div>

<div class="cp_tabpanel">
			<ul class="cp_list">
		<li><font color="red">ID　　　　</font></li>
<input type="text" name="TravelId">　～　<input type="text" name="TravelId" pattern="^([a-zA-Z0-9]{8,20})$"><br>
<li><font color="red">キーワード検索　　　</font></li>
<input type="text" name="TravelName"><br><br><br>

<input type="submit"  value="検索">
</ul>
</div>
</div>
<input type="button" id="sbtn5" onclick="location.href='./home.jsp'" value="戻る">

</div>

</form>

</body>
</html>