<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>登录</title>
		<!-- 引入样式文件 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/style.css?v=1.5.5.5_0722_14">
		<!-- 引入jquery文件 -->
		<script src="${pageContext.request.contextPath }/resources/js/jquery-1.10.2.js" type="text/javascript"></script>
	</head>
	<body id="login_bg">
		<div class="login_wrapper">
			<!-- 头部信息 -->
			<div class="login_header">
	        	<a href=""><img src="${pageContext.request.contextPath }/resources/images/logo@2x.png" width="285" height="62" alt="掘金招聘" /></a>
	            <div id="cloud_s"><img src="${pageContext.request.contextPath }/resources/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
	            <div id="cloud_m"><img src="${pageContext.request.contextPath }/resources/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
	        </div>
	        
	         <!-- 登录 -->
			 <div class="login_box">
	        	<form id="loginForm" action="${pageContext.request.contextPath }/user/login" method="post">
					<input type="text" id="email" name="uname" tabindex="1" placeholder="请输入登录邮箱地址" />
				  	<input type="password" id="password" name="upassword" tabindex="2" placeholder="请输入密码" />
				   
				    <span class="error" style="display:none;" id="beError"></span>
				    <label class="fl" for="remember">
				    <input type="checkbox" id="remember" checked="checked" name="autoLogin" /> 记住我</label>
				    <a href="javascript:;" class="fr" target="_blank">忘记密码？</a>
				    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
				</form>
				
				<!-- 第三方登录 -->
				<div class="login_right">
					<div>还没有掘金帐号？</div>
					<a  href="${pageContext.request.contextPath }/register.jsp"  class="registor_now">立即注册</a>
				    <div class="login_others">使用以下帐号直接登录:</div>
				    <a  href="javascript:;"  target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
				    <a  href="javascript:;"  class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录"></a>
				</div>
	        </div>
	        <div class="login_box_btm"></div>
	    </div>
	</body>
</html>