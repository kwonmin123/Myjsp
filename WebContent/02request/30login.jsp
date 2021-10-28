<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
id, password 파라미터를 post 방식 전송
 --%>
 
 
 <form action="" method="post">
	<!-- input:text+input:text+input:s -->
	id :<input type="text" name="id" id="">
	<br>
	pw :<input type="password" name="pw" id="">
	<input type="submit" value="전송">
</form>
 
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
<%--
id가 myid
password가 mypassword 일 때만
로그인 성공 메시지 출력

그렇지 않으면
'아이디나 패스워드가 일치하지 않습니다' 메시지 출력

 --%>
</body>
</html>








