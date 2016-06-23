<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/c.tld" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<html>
<head>
<title>Index</title>
<script type="text/javascript" src="${ctxStatic}/js/jquery/jquery-1.9.1.min.js"></script>
</head>
<body>
	<script type="text/javascript">
		$(function(){
			location.href = "${ctx}/front/getStart/index";
		});
	</script>
</body>
</html>