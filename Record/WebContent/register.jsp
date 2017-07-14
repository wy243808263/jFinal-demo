<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/style.css?v=1.5.5.5_0722_14">

		<script src="${pageContext.request.contextPath }/resources/js/jquery-1.10.2.js" type="text/javascript"></script>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/libs/jquery.lib.min.js?v=1.5.5.5_0722_14"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/core.min.js?v=1.5.5.5_0722_14"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/libs/analytics.js?v=1.5.5.5_0722_14"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/libs/tongji.js?v=1.5.5.5_0722_14"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/additional-methods.js?v=1.5.5.5_0722_14"></script>
	</head>
	<body>
		<div class="login_wrapper">
			<div class="login_header">
	        	<a href=""><img src="${pageContext.request.contextPath }/resources/images/logo@2x.png" width="285" height="62" alt="拉勾招聘" /></a>
	            <div id="cloud_s"><img src="${pageContext.request.contextPath }/resources/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
	            <div id="cloud_m"><img src="${pageContext.request.contextPath }/resources/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
	        </div>
	        
	    	<input type="hidden" id="resubmitToken" value="25dcd2368b2b4152a111f782f9f493fc" />		
			
			<div class="login_box">
	        	<form id="loginForm" action="${pageContext.request.contextPath }/user/reg" method="post">
	        		<ul class="register_radio clearfix">
			            <li>
			            	找工作
			              	<input type="radio" value="1" name="type" /> 
			            </li>
			            <li>
			           	           招人
			              	<input type="radio" value="2" name="type" /> 
			            </li>
			        </ul> 
			        
	            	<input type="text" id="email" name="uname" tabindex="1" placeholder="请输入常用邮箱地址" />
	                <span class="error" style="display:none;" id="beError"></span>
	                <input type="password" id="password" name="upassword" tabindex="2" placeholder="请输入密码" />
	                
	            	<label class="fl registerJianJu" for="checkbox">
	            		<input type="checkbox" id="checkbox" name="checkbox" checked  class="checkbox valid" />
	            		我已阅读并同意<a href="javascript:;" target="_blank">《拉勾用户协议》</a>
	           		</label>
	                <input type="submit" id="submitLogin" value="注 &nbsp; &nbsp; 册" />
	                
	                <input type="hidden" id="callback" name="callback" value="">
	                <input type="hidden" id="authType" name="authType" value="">
	                <input type="hidden" id="signature" name="signature" value="">
	                <input type="hidden" id="timestamp" name="timestamp" value="">
	            </form>
	            
	            <div class="login_right">
	            	<div>已有拉勾帐号</div>
	            	<a  href="${pageContext.request.contextPath }/login.jsp" class="registor_now">直接登录</a>
	                <div class="login_others">使用以下帐号直接登录:</div>
	                <a href="ologin/auth/sina.html" target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
	               	<a href="ologin/auth/qq.html" class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
	            </div>
	        </div>
	        <div class="login_box_btm"></div>
	    </div>
	    
	    <script type="text/javascript">
	    	$(function(){
	    		$('.register_radio li input').click(function(e){
	        		$(this).parent('li').addClass('current').append('<em></em>').siblings().removeClass('current').find('em').remove();
	        	});
	        	
	        	$('#email').focus(function(){
	        		$('#beError').hide();
	        	});
	        	
	        	//验证表单
	        	$("#loginForm").validate({
	        		rules: {
	        			type:{
	    	        		required: true
	    	        	},
			    	   	email: {
			    	    	required: true,
			    	    	email: true,
			    	    	maxlength:100
			    	   	},
			    	   	password: {
			    	    	required: true,
			    	    	rangelength: [6,16]
			    	   	},
			    	   	checkbox:{required:true}
			    	},
			    	messages: {
			    		type:{
	    	        		required:"请选择使用拉勾的目的"
	    	        	},
			    	 	email: {
			    	    	required: "请输入常用邮箱地址",
			    	    	email: "请输入有效的邮箱地址，如：vivi@lagou.com",
			    	    	maxlength:"请输入100字以内的邮箱地址"
			    	   	},
			    	   	password: {
			    	    	required: "请输入密码", 
			    	    	rangelength: "请输入6-16位密码，字母区分大小写"
			    	   	},
			    	   	checkbox: {
			    	    	required: "请接受拉勾用户协议"
			    	   	}
			    	}
	        	});
	    	});
	    </script>
	</body>
</html>