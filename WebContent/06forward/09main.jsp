<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
out.print("됨");
String pageCode = request.getParameter("code");
if(pageCode!=null){
out.print("됨");
switch (pageCode) {
	case "a":
		%>
<jsp:forward page="09pagea.jsp"></jsp:forward>

		<%
		// 적절한 코드 작성 - 09pagea.jsp 포워딩
	break;
	case "b":
		%>
<jsp:forward page="/WEB-INF/view/06forward/09pageb.jsp"></jsp:forward>
		
		<%
		
		// 적절한 코드 작성	- 09pageb.jsp 포워딩
	break;
}
} else{
	
out.print("됨2");
}
%>

