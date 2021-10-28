<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
if(id!=null&&pw!=null){

	if(id.equals("myid")){
		if(pw.equals("pw")){
			out.print("<p>로그인 성공</p>");
		}
		else{ 
			out.print("<p>로그인 실패 비밀번호를 확인하세요</p>");
		}
	} else{
		out.print("<p>로그인 실패 아이디를 확인하세요</p>");
	}

	/* if(id.equals("myid")&&pw.equals("pw")){	
		out.print("로그인 성공");
	}
	else{
		out.print("로그인 실패");
	
	} */


}

%>
</body>
</html>