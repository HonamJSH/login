<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
</head>
<body>
<h1>WebContent/member/deletePro.jsp</h1>

<%
  // 전달된 정보 저장
  String id = request.getParameter("id");
  String pass = request.getParameter("pass");

  // MemberDAO 객체 생성 = deleteMember(id, pass);
  MemberDAO mdao = new MemberDAO();

  int result = mdao.deleteMember(id, pass);

  if(result == -1){
%>
<script type="text/javascript">
  alert("비밀번호 오류");
  history.back();
</script>
<%
}else if(result == 0){
%>
<script type="text/javascript">
  alert("비밀번호 오류");
  history.back();
</script>
<%
}else { //result == 1
  // 로그인 세션정보를 삭제(초기화)
  session.invalidate();
%>
<script type="text/javascript">
  alert("삭제완료");
  location.href="main.jsp";
</script>
<%
  }

%>

</body>
</html>