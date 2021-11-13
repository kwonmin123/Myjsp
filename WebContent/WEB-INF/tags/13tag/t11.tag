<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="dan" type="java.lang.Integer" %>


<c:forEach begin="1" end="9" varStatus="s">
<p>${dan} x ${s.count }= ${dan*s.count} </p>

</c:forEach>
