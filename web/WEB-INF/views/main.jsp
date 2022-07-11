<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>WebContent/member/main.jsp</h1>

<h2> 메인페이지 </h2>

<%
    String id = (String)session.getAttribute("id");

    if(id == null){
        response.sendRedirect("loginForm.jsp");
    }
%>

로그인 아이디 : <%=id %><br>
<input type="button" value="로그아웃" onclick=" location.href='logout.jsp'; ">

<hr><hr>

<h2><a href='info.jsp'> 회원 정보 확인하기</a></h2>

<hr><hr>

<h2><a href='updateForm.jsp'> 회원 정보 수정하기</a></h2>

<hr><hr>

<h2><a href='deleteForm.jsp'> 회원 정보 삭제하기</a></h2>

<%
    if(id != null){
        if(id.equals("admin")){

            //if(id !=null && id.equals("admin")){}

%>
<hr><hr>
<hr><hr>

<!-- 관리자로 로그인했을때만 이 메뉴를 볼 수 있게   -->
<h2><a href='list.jsp'> 회원전체 목록보기</a></h2>

<%
        }
    }
%>
</body>
</html>