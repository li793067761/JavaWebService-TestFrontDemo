<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/tiles.tld" prefix="tiles"%>
<head>
</head>
<body style="margin:0px;">
 <div><tiles:insertAttribute name="header" /> </div>
 <div><tiles:insertAttribute name="menu" /></div>
 <div><tiles:insertAttribute name="body" /></div>
 <div><tiles:insertAttribute name="footer" /> </div>
</body>
