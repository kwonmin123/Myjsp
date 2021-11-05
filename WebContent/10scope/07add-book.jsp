<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="sample01.MyBook" %>

<%
// application 영역에 파라미터로 받은 mybook을
// list에 추가하고 
List<MyBook> list = (List<MyBook>) application.getAttribute("books");
if (list == null) {
	list = new ArrayList<>();
	application.setAttribute("books", list);
}

String titile = request.getParameter("title");
int price =Integer.parseInt(request.getParameter("price"));
if (titile != null) {
	list.add(new MyBook(titile,price));
	application.setAttribute("books", list);
}

// member-list.jsp로 redirect
response.sendRedirect("07book-list.jsp");
%>