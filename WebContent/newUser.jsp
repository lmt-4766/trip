<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録</title>
<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
 <br>
<font size="6"color="red"><a href="newUser.jsp" >新規登録＞</a></font>
<font size="5 "><a href="Comfirm.jsp">確認</a></font>

</head>
<body>
<br>
${message }
<form  action="${ pageContext.request.contextPath }/accountSearch" method="post" >

<table class="form-table">
    <tbody>

      <tr>
        <th>ID　　　　<font color="red">（必須）</font></th>
        <td><input type="text"  name="loginId" pattern="^([a-zA-Z0-9]{8,20})$"  title="8～20文字の半角英数字でご入力ください。" required
      >
        </td>
      </tr>
      <tr>
        <th>パスワード<font color="red">（必須）</font></th>
        <td><input type="password" name="password" pattern="^([a-zA-Z0-9]{6,8})$"  title="6～8文字の半角英数字でご入力ください。" required>
        </td>
      </tr>
      <tr>
        <th>氏名　　<font color="red">（必須）</font></th>
        <td><input  type="text"  name="name" required>
        </td>
      </tr>
      <tr>
        <th>読み方　　<font color="red">（必須）</font></th>
         <td><input  type="text" name="yomi" pattern="^[ァ-ン]+$" title="全角カタカナでご入力ください。" required>
        </td>
      </tr>
      <tr>
        <th>性別</th>
        <td><input type="checkbox" name="sex" value="man">男性
            <input type="checkbox" name="sex" value="wonman">女性
        </td>
      </tr>

      <tr>
        <th>メールアドレス　　<font color="red">（必須）</font></th>
        <td><input type="email" name="email" required>
        </td>
      </tr>
      <tr>
        <th>誕生日</th>
        <td><input type="date" name="birthday">
        </td>
      </tr>
      <tr>
        <th>電話　　<font color="red">（必須）</font></th>
        <td><input type="tel" name="tel" pattern="\d{2,3}-\d{3,4}-\d{4,4}"  title="11桁半角数字でご入力ください。" required>
        </td>
      </tr>
      <tr>
        <th>郵便番号</th>
        <td>〒<input type="number" name="zip" size=10 pattern="\d{3}-\d{4}" onKeyUp="AjaxZip3.zip2addr(this,'','address','address');">
        </td>
      </tr>
      <tr>
        <th>住所</th>
        <td>
         <input type="text" name="address" size="40" >
        </td>
      </tr>
      <tr>
    </tbody>
  </table>
  <input type="reset" value="リセット" />
 <input type="submit" value="確認" />


 <p><a href="${ pageContext.request.contextPath }/home.jsp">Topページへ</a></p>

<style>

@import url(new.css);
  </style>
  </form>


  </script>
</body>
</html>