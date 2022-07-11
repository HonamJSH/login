<%@page import="com.itwillbs.member.MemberBean"%>
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
<h1>WebContent/member/info.jsp</h1>
<%

    String id = (String) session.getAttribute("id");

    if(id == null){
        response.sendRedirect("loginForm.jsp");
    }
    // 로그인한 사용자의 모든 정보를 DB에서 가져와서 화면에 출력

    // DAO 객체를 생성
    MemberDAO mdao = new MemberDAO();

    // DAO 객체 안에있는 회원정보를 가져오는 메서드 호출
    MemberBean mb = mdao.getMember(id);

%>
<h3> 아이디 : <%=mb.getId() %> </h3>
<h3> 비밀번호 : <%=mb.getPass() %></h3>
<h3> 이름 : <%=mb.getName() %></h3>
<h3> 나이 : <%=mb.getAge() %></h3>
<h3> 성별 : <%=mb.getGender() %></h3>
<h3> 이메일 : <%=mb.getEmail() %></h3>
<h3> 회원가입일 : <%=mb.getReg_date() %></h3>


<h2><a href="main.jsp">메인페이지로 이동</a></h2>
</body>
</html>