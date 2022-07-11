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
<h1>WebContent/member/updatePro.jsp</h1>

<%
  // 한글처리 (form태그 정보를 post방식 전달)
  request.setCharacterEncoding("UTF-8");

  // 전달된 정보(파라미터) 저장 - 수정할 데이터값(이름, 나이, 성별, 이메일)
  // -> 자바빈 객체를 사용해서 한번에 저장(액션태그)
%>
<jsp:useBean id="mb" class="com.itwillbs.member.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="mb"/>
<%
  System.out.println("수정할 데이터: "+mb);
  // MemberDAO 객체를 생성 - updateMember(bean);
  MemberDAO mdao = new MemberDAO();
  int result = mdao.updateMember(mb);

  System.out.println(" 수정 처리결과 : " + result);
  // 수정 처리 결과(정수데이터)에 따른 페이지 이동

  if(result == -1){
%>
<script type="text/javascript">
  alert('회원정보가 없습니다!');
  history.back();
</script>
<%
}else if(result == 0){
%>
<script type="text/javascript">
  alert('비밀번호 오류입니다!');
  history.back();
</script>
<%

}else{ //result == 1
%>
<script type="text/javascript">
  alert('회원정보 수정완료!');
  location.href='main.jsp';
</script>
<%
  }

%>

</body>
</html>
