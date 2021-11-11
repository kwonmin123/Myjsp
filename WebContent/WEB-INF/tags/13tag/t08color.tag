<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="color" %>


<div style= color:${color};>
<jsp:doBody></jsp:doBody>
</div>
