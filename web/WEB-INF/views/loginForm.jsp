<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>로그인-테스트</title>
</head>
<body>
<h1></h1>
<h2> 로그인 페이지 </h2>

<fieldset>
  <legend> 로그인 </legend>
  <form action="loginPro.jsp" method="post">
    아이디 : <input type="text" name="id"><br>
    비밀번호 : <input type="password" name="pass"><br>
    <input type="submit" value="로그인">
    <input type="button" value="회원가입" onclick=" location.href='insertForm.jsp'; ">
  </form>
</fieldset>

</body>
</html>
