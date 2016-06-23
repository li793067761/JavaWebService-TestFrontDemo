<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/c.tld" prefix="c"%>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<c:set var="ctxFront" value="${pageContext.request.contextPath}/front"/>
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
	<div class="row-fluid">
		<form enctype="multipart/form-data">
			<input name="file" type="file" />
			<input type="button" value="Upload" />
		</form>	
		<progress></progress>
	</div>


	
</div>
<script type="text/javascript">
	$(function(){
		$.backstretch([
		                 "${ctxStatic}/images/tempPic/indexNews/background1.jpg"
				  ], { duration: 6000, fade: 750 });
	});
	
	$(':button').click(function(){
	    var formData = new FormData($('form')[0]);
	    $.ajax({
	        url: '${ctxFront}/email/upload',  //server script to process data
	        type: 'POST',
	        xhr: function() {  // custom xhr
	            myXhr = $.ajaxSettings.xhr();
	            if(myXhr.upload){ // check if upload property exists
	                myXhr.upload.addEventListener('progress',progressHandlingFunction, false); // for handling the progress of the upload
	            }
	            return myXhr;
	        },
	        //Ajax事件
	        //beforeSend: beforeSendHandler,
	        success: completeHandler,
	        error: errorHandler,
	        // Form数据
	        data: formData,
	        //Options to tell JQuery not to process data or worry about content-type
	        cache: false,
	        contentType: false,
	        processData: false
	    });
	});
	
	function progressHandlingFunction(e){
	    if(e.lengthComputable){
	        $('progress').attr({value:e.loaded,max:e.total});
	    }
	}
	function completeHandler(){
		alert("上传成功！！");
	}
	function errorHandler(){
		alert("上传出错！！");
	}
</script>
</html>