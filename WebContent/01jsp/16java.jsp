<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="sample01.MyPerson" %>    
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <style>
    	body{
    	background-color: black;
    	
    	}
        h1 {
            border: 5px solid red;
        }
        .blinking{ color: white;-webkit-animation:blink 1.5s ease-in-out infinite alternate; -moz-animation:blink 1.5s ease-in-out infinite alternate; animation:blink 1.5s ease-in-out infinite alternate; } @-webkit-keyframes blink{ 0% {opacity:0;} 100% {opacity:1;} } @-moz-keyframes blink{ 0% {opacity:0;} 100% {opacity:1;} } @keyframes blink{ 0% {opacity:0;} 100% {opacity:1;} }


    </style>
    <script>
        $(document).ready(function() {
            $("button").click(function () {
          
                $("h1").animate({borderWidth: "30px"}, "slow"); // 또는 fast
            })
        });
    </script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button>점심시간</button>
<h1 class="blinking">
    맛점하세요~~~
</h1>
<%
List<MyPerson> list = new ArrayList<MyPerson>();
list.add(new MyPerson("hong",22));
list.add(new MyPerson("kim",33));
list.add(new MyPerson("lee",55));

for(MyPerson p : list){

%>

<p><%=p.getName() %> 님 : <%=p.getAge() %>세</p>
<% 
}
%>
</body>
</html>