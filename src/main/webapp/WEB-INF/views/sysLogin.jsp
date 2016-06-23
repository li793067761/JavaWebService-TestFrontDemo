<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/c.tld" prefix="c"%>
<c:set var="ctxFront" value="${pageContext.request.contextPath}/front"/>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<%@ taglib uri="/WEB-INF/tlds/spring-form.tld" prefix="sf"%>
<!DOCTYPE html>

<html lang="zh-CN">
	<head>
	</head>
	<div class="container-fluid">
		<!-- <div class="row">
			<div class="col-xs-12 col-sm-6 col-md-8">
				
			</div>
			<div class="col-xs-6 col-md-4">
				<div class="loginPanel">
			  		<div class="form-group">
			  			<input type="text" placeholder="用户名" class="form-control login-field" id="loginName" />
			  			<label class="login-field-icon fui-user" for="loginName" ></label>
			  		</div>
			  		<div class="form-group">
		                <input type="password" class="form-control login-field" value="" placeholder="Password" id="login-pass" />
		                <label class="login-field-icon fui-lock" for="login-pass"></label>
		            </div>
		            <div>
		            	<a class="btn btn-block btn-lg btn-primary" href="#fakelink" style="opacity: 1.0; ">Primary Button</a>
		            </div>
			  	</div>
			</div>
		</div> -->
		<div class="row-fluid mt10">
            <div class="col-sm-6 col-sm-offset-3 form-box  fillet ">
            	 <div class="form-top">
            		<div class="form-top-left text-center">
            			<h3>ThinkAndDo</h3>
            			<p>Just Save All </p>
            		</div>
            		<div class="form-top-right">
            			<i class="fa fa-lock"></i>
            		</div>
                </div>
	           <div class="form-bottom">
		           <form  class="login-form">
		           	<div class="form-group">
		           		<label class="sr-only" for="form-username">用户名</label>
		               	<input type="text" placeholder="用户名..." class="form-username form-control position-rel" id="form-username"/>
		               	<label class="login-field-icon fui-user" for="loginName" ></label>
		               </div>
		               <div class="form-group">
		               	<label class="sr-only" for="form-password">密码</label>
		               	<input type="password"  placeholder="密码..." class="form-password form-control position-rel" id="form-password"/>
		               	<label class="login-field-icon fui-lock" for="login-pass"></label>
		               </div>
		               <div style="color: white;float: right;">
		              	 	 <label for="checkbox1" class="checkbox">
		              	 	   记住密码
			                  <input type="checkbox" data-toggle="checkbox" id="checkbox1" value="" class="custom-checkbox"><span class="icons"><span class="icon-unchecked"></span><span class="icon-checked"></span></span>
			                </label>
		              	 	<br/>
		               </div>
		               <!-- <div class="form-group">
		            	<a class="btn btn-block btn-lg btn-primary" href="#fakelink" style="opacity: 1.0; ">Primary Button</a>
		           	   </div>  -->
		               <button type="button" id="btsub" class="btn btn-block btn-lg btn-primary">登陆!</button>
		           </form>
	          </div>
            </div>
        </div>
	</div>
	
	<div class="footer">
		Copyright@2014-2016 Chales Tech.All rights reserved
	</div>
	<script type="text/javascript">
		$(function(){
			$('#checkbox1').click(function(){
				if($('#checkbox1').prop("checked")){
					$('#checkbox1').radiocheck('uncheck')
				}else{
					$('#checkbox1').radiocheck('check')
				}
				
			});
			$(".container").css({ opacity: 1.0 });  //设置透明度
			  $.backstretch([
	                 "${ctxStatic}/images/background1.jpg",
	                 "${ctxStatic}/images/background2.jpg",
	                 "${ctxStatic}/images/background3.jpg"
			  ], { duration: 6000, fade: 750 });
		});
		
		$(function(){
			$("#btsub").click(function(){
				var userLoginName = $("#form-username").val();
				var userLoginPassword = $("#form-password").val();
				if(userLoginName === null || userLoginName === "" || userLoginName.length < 6){
					$("#form-username").css({"color": "#e74c3c","border-color":"#e74c3c"});
					$(".fui-user").css("color","#e74c3c");
					$('#form-username').grumble(
							{
								text: '登录名不能为空 ，切不能少于6个字符！',
								angle: 340,
								distance: 0,
								type: 'alt-',
								showAfter: 1000,
								hideAfter: 5000
							}
					);
					return false;
				}
				if(userLoginPassword === null || userLoginPassword === "" || userLoginPassword.length < 6){
					$("#form-password").css({"color": "#e74c3c","border-color":"#e74c3c"});
					$(".fui-lock").css("color","#e74c3c");
					$('#form-password').grumble(
							{
								text: '登录密码不能为空 ，切不能少于6个字符！',
								angle: 220,
								distance: 0,
								type: 'alt-',
								showAfter: 1000,
								hideAfter: 5000
							}
					);
					return false;
				}
				$.ajax({
					  type: "POST",
					  url: "${ctxFront}/getStart/login",
					  data: "userLoginName="+userLoginName+"&userLoginPass="+userLoginPassword,
					  dataType : 'json', 
					  success: function(data){
						  document.location.href = "${ctxFront}/getStart/index";
					  }
				});
			});
			
			$("#form-username").on("keyup blur",function(){
				var userLoginName = $("#form-username").val();
				if(userLoginName === null || userLoginName === "" || userLoginName.length < 6){
					$("#form-username").css({"color": "#e74c3c","border-color":"#e74c3c"});
					$(".fui-user").css("color","#e74c3c");
				}else{
					$("#form-username").css({"color": "#1abc9c","border-color":"#1abc9c"});
					$(".fui-user").css("color","#1abc9c");
				}
			});
			$("#form-password").on("keyup blur",function(){
				var userLoginPassword = $("#form-password").val();
				if(userLoginPassword === null || userLoginPassword === "" || userLoginPassword.length < 6){
					$("#form-password").css({"color": "#e74c3c","border-color":"#e74c3c"});
					$(".fui-lock").css("color","#e74c3c");
				}else{
					$("#form-password").css({"color": "#1abc9c","border-color":"#1abc9c"});
					$(".fui-lock").css("color","#1abc9c");
				}
			});
		});
	</script>
</html>
