<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/13tag" %>
<% request.setCharacterEncoding("utf-8"); %>

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

<!-- button.btn.btn-info*10>lorem1 -->
<button class="btn">Lorem.</button>
<button class="btn btn-primary">Perferendis!</button>
<button class="btn btn-secondary">Expedita.</button>
<button class="btn btn-success">Expedita?</button>
<button class="btn btn-info">Repellendus.</button>
<button class="btn btn-warning">Adipisci.</button>
<button class="btn btn-danger">Sit.</button>
<button class="btn btn-dark">Facilis.</button>
<button class="btn btn-light">Est.</button>
<button class="btn btn-link">Commodi.</button>

<hr>

<button class="btn btn-lg">Lorem.</button>
<button class="btn btn-primary btn-lg">Perferendis!</button>
<button class="btn btn-secondary btn-sm">Expedita.</button>
<button class="btn btn-success btn-sm">Expedita?</button>
<button class="btn btn-info btn-xs">Repellendus.</button>
<button class="btn btn-warning btn-xs">Adipisci.</button>
<button class="btn btn-danger">Sit.</button>
<button class="btn btn-dark">Facilis.</button>
<button class="btn btn-light">Est.</button>
<button class="btn btn-link">Commodi.</button>

<hr>

<!-- outline buttons -->
	<button class="btn btn-outline-primart">1</button>
	<button class="btn btn-outline-danger">2</button>
	<button class="btn btn-outline-dark">3</button>
<span style="background-color:black;" class="black">
	<button class="btn btn-outline-light">4</button>
</span>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>









