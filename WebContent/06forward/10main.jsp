<%@page import="com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>




<%
String[] foodlist ={"rice","bread","kimchi"};
request.setAttribute("food", foodlist);

List<String> songlist =(Arrays.asList("lovesong","hiphop","dance","ballad"));
System.out.print(songlist);
request.setAttribute("song", songlist);
String code = request.getParameter("code");

%>

<%
if ("food".equals(code)) {
%>
	<jsp:forward page="10pagea.jsp"></jsp:forward>
<% 
} else if ("song".equals(code)){
%>
	<jsp:forward page="10pageb.jsp"></jsp:forward>
<%
}
%>