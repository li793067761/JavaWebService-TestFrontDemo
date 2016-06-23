<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/c.tld" prefix="c"%>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${ctxStatic}/js/jquery/jquery-1.9.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
${name1} 
<!-- 	<input type="button" id="thread1">
		<label id="text1"></label><br/>
	<input type="button" id="thread2">
		<label id="text2"></label><br/>
	<script type="text/javascript">
		$("#thread1").click(function(){
			$.ajax({ url: "${pageContext.request.contextPath}/front/getStart/testThread", success: function(){
			    $("#text1").append(data);
			}});
		});
		$("#thread2").click(function(){
			
		});	
	</script> -->
</body>
</html>