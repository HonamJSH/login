<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>WebContent/member/loginPro.jsp</h1>
<%
    // 한글처리
    request.setCharacterEncoding("UTF-8");

%>
<jsp:useBean id="loginMB" class="com.itwillbs.member.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="loginMB"/>

<%
    // DB연결에 해당하는 처리동작을 수행하는 객체를 생성
    MemberDAO mdao = new MemberDAO();

    int result = mdao.loginCheck(loginMB.getId(), loginMB.getPass());

    if(result == -1){
%>
<script type="text/javascript">
    var value = confirm("아이디가 없습니다. 회원가입 하시겠습니까?");
    if(value){
        location.href='insertForm.jsp';
    }else{
        history.back();
    }
</script>
<%
}else if(result == 0){
%>
<script type="text/javascript">
    alert(' 비밀번호 오류! ');
    history.back();
</script>
<%
    }else{ // result == 1
        // 로그인정보를 세션 객체에 저장
        session.setAttribute("id", loginMB.getId() );
        // 회원가입 -> main.jsp 이동
        response.sendRedirect("main.jsp");
    }

%>
</body>
</html>
