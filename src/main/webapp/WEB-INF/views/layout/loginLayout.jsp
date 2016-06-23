<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/tiles.tld" prefix="tiles"%>
<%@ taglib uri="/WEB-INF/tlds/c.tld" prefix="c"%>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/css/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/css/bootstrap/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/css/flat-ui/flat-ui.css" />
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/css/commons.css" />
	<link rel="stylesheet" type="text/css" href="${ctxStatic}/css/grumble/grumble.css" />
	
	<!--[if lte IE 6]>
		<link href="${ctxStatic}/css/bootstrap/css/bootstrap-ie6.css" type="text/css" rel="stylesheet" />
		.container 
		  { 
		    zoom:1; 
		  }
	<![endif]-->
	
	<!--[if lte IE 7]>
		<link href="${ctxStatic}/css/bootstrap/css/ie.css" type="text/css" rel="stylesheet" />
	<![endif]-->
	
	<script type="text/javascript" src="${ctxStatic}/js/jquery/jquery-1.9.1.min.js"></script>
	<%-- <script type="text/javascript" src="${ctxStatic}/js/jquery/jquery.placeholder.js"></script> --%>
	<script type="text/javascript" src="${ctxStatic}/js/jquery/jquery.backstretch.min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/js/flat-ui/flat-ui.js"></script>
	<script type="text/javascript" src="${ctxStatic}/js/grumble/jquery.grumble.min.js"></script>
	<script type="text/javascript" src="${ctxStatic}/js/grumble/Bubble.js"></script>
	<!--[if IE]>
		<script type="text/javascript" src="${ctxStatic}/js/html5 ie/html5.js"></script>
		<script type="text/javascript" src="${ctxStatic}/js/css3 ie/respond.js"></script>
	< ![endif]-->
	
</head>
<body class="fillHeight">
		<tiles:insertAttribute name="content" />
		<%-- <div style="height:10%"><tiles:insertAttribute name="footer" /> </div> --%>
</body>
