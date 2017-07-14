package com.cnvp.paladin.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;

import com.cnvp.paladin.core.BaseController;
import com.cnvp.paladin.interceptor.Global;
import com.cnvp.paladin.kit.StringKit;
import com.jfinal.aop.Before;
import com.jfinal.aop.ClearInterceptor;
import com.jfinal.aop.ClearLayer;
import com.jfinal.kit.EncryptionKit;

@ClearInterceptor(ClearLayer.ALL)
public class PassportController extends BaseController {

	
	@Before(Global.class)
	public void login() {
		String from = getPara("from");
		if (StringKit.notBlank(from))
			setAttr("from", from);
	}
	public void logout() {
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		redirect("/Passport/login");
	}
	public void dologin() {
		Subject subject = SecurityUtils.getSubject(); 
	    UsernamePasswordToken token = new UsernamePasswordToken(getPara("account"),EncryptionKit.md5Encrypt(getPara("password")));
	    try {  
	        //4、登录，即身份验证  
	        subject.login(token);
	        String from = getPara("from");
	        if (StringKit.isBlank(from))
	        	redirect("/");
        	else
	        	redirect(from);
	    } catch (AuthenticationException e) {
	        //5、身份验证失败
	    	alertAndGoback("用户名或密码错误，请重新登录");
	    }  
	}

}
