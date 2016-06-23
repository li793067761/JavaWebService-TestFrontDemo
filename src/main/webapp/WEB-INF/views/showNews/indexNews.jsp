<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/c.tld" prefix="c"%>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<html lang="zh-CN">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	</head>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span4">
		</div>
		<div class="span4" align="center">
			<img src="${ctxStatic}/images/tempPic/indexNews/logo.png" align="middle"/>
		</div>
		<div class="span4">
		</div>
	</div>
		<div class="row-fluid">
		<div class="span4">
		</div>
		<div class="span4" align="center" style="color: white;">
			<blockquote>
				<p>
					Mind Storage是一个开源的知识储藏及技术交流网站
				</p> <small style="color: white;">关键词 <cite style="color: white;">开源</cite></small>
			</blockquote>
		</div>
		<div class="span4">
		</div>
	</div>
</div>
<script type="text/javascript">
	$(function(){
		$.backstretch([
		                 "${ctxStatic}/images/tempPic/indexNews/background1.jpg"
				  ], { duration: 6000, fade: 750 });
	});
</script>
</html>