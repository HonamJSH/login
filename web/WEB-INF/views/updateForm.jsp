<%@page import="com.itwillbs.member.MemberBean"%>
<%@page import="com.itwillbs.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <script type="text/javascript">
        function check(){
            if(document.fr.pass.value == ""){
                alert("비밀번호를 입력하세요! ");
                document.fr.pass.focus();
                return false;
            }
        }

    </script>
</head>
<body>
<h1>WebContent/member/updateForm.jsp</h1>

<%
    // 세션값 제어
    String id = (String)session.getAttribute("id");

    if(id == null){
        response.sendRedirect("loginForm.jsp");
    }

    // 해당 회원의 모든정보를 가져와서 화면에 출력

    MemberDAO mdao = new MemberDAO();
    MemberBean oldMB = mdao.getMember(id);

%>

<h2> 회원정보수정 </h2>
<fieldset>
    <legend> ITWILL 회원정보 수정 </legend>

    <form action="updatePro.jsp" method="post" name="fr" onsubmit="return check();">
        <!-- readonly : 읽기전용 (submit가능) / disabled : 사용불가  (submit 불가능) -->
        아이디 : <input type="text" name="id" value="<%=oldMB.getId()%>" readonly="readonly"><br>
        비밀번호 : <input type="password" name="pass" placeholder="비밀번호를 입력하시오."><br>
        이름 : <input type="text" name="name" value="<%=oldMB.getName()%>"><br>
        나이 : <input type="text" name="age" value="<%=oldMB.getAge()%>"><br>
        이메일 : <input type="text" name="email" value="<%=oldMB.getEmail()%>"><br>
        성별 : <input type="radio" name="gender" value="남"
        <%if(oldMB.getGender().equals("남")){ %>
                    checked
        <%}%>
    >남
        <input type="radio" name="gender" value="여"
            <%if(oldMB.getGender().equals("여")){ %>
               checked
            <%}%>
        >여

        <input type="submit" value="회원수정">
        <input type="reset" value="초기화">
    </form>

</fieldset>

</body>
</html>