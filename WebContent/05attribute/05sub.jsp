<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<div>
	<ul class="menu">
	
		<%-- 
		
		a 요소를 갖는 li.menu-item 요소를
		"menuItems" 이름의 request attribute를 사용하여
		만들기
		
		 --%>
		 
		 <%
		 	ArrayList<String> items = (ArrayList<String>) request.getAttribute("alist");
		 	
		 	for (String item : items) {
		 %>
		 
		 		<li class="menu-item">
		 			<a href=""><%= item %></a>
		 		</li>
		 
		 <%
		 	}
		 %>
	</ul>
</div>