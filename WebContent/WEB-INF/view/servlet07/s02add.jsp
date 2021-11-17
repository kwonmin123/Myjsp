<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-3">
			<h1>할 일 목록 APP</h1>
		<nav class="nav flex-column">
          <a class="nav-link" href="${pageContext.request.contextPath }/S07todo/main">메인</a>
          <a class="nav-link" href="${pageContext.request.contextPath }/S07todo/add">추가</a>
          <a class="nav-link" href="${pageContext.request.contextPath }/S07todo/list">목록</a>
        </nav>
        
		</div>
		<form form action="${pageContext.request.contextPath }/S07todo/add" method="post" class="form-inline">
  <div class="form-group mb-2">
    <label for="add-todo" class="sr-only">todo</label>
    <input name="todo" type="text"  id="add-todo" placeholder="add todo">
  </div>
  <button type="submit" class="btn btn-primary mb-2">추가</button>
</form>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>