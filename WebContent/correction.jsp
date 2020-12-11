<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>一覧</title>
</head>
<body>
<font size="5 "><a href="newUser.jsp" >新規登録＞</a></font>
<font size="6 "color="red"><a href="Comfirm.jsp">確認</a></font>
<br>
${message }
 <form  action="${ pageContext.request.contextPath }/accountSearch" method="post" />
	<table class="form-table" border="5">
		<tr>
			<th>ID</th>
			<th>パスワード</th>
			<th>氏名</th>
			<th>読み</th>
			<th>性別</th>
			<th>メールアドレス</th>
			<th>誕生日</th>
			<th>電話</th>
			<th>郵便番号</th>
			<th>住所</th>
			<th>新規登録</th>

		</tr>


			<tr>
				<td>${ ab.loginId }</td>
				<td>${ ab.password }</td>
				<td>${ ab.name }</td>
				<td>${ ab.yomi}</td>
				<td>${ ab.sex }</td>
				<td>${ ab.address }</td>
				<td>${ ab.birthday }</td>
				<td>${ ab.tel }</td>
				<td>${ ab.zip }</td>
				<td>${ ab.address }</td>
				<td>${ ab.start_time}</td>
				<td><input type="submit" value="確定" /></td>

            </tr>

	</table>
	<a href="${ pageContext.request.contextPath }/newUser.jsp">新規登録ページへ</a>
	<a href="${ pageContext.request.contextPath }/home.jsp">Topページへ</a>


</body>
</html>
