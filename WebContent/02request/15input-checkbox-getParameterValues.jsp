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
<!-- code 작성 -->
<!--form>(input:c[value])*5+br+input:s -->
<form action="">
	<input type="checkbox" name="movies" id="" value="ironman">ironman
	<input type="checkbox" name="movies" id="" value="hulk">hulk
	<input type="checkbox" name="movies" id="" value="thor">thor
	<input type="checkbox" name="movies" id="" value="spiderman">spiderman
	<input type="checkbox" name="movies" id="" value="venom">venom
	<br>
	<input type="submit" value="전송">
</form>
<hr>
<ul>
<%
String[] movies = request.getParameterValues("movies");
if (movies != null) {
	for (String movie : movies) {
		out.print("<li>");
		out.print(movie);
		out.print("</li>");
	}
}
%>
</ul>
</body>
</html>