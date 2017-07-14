package com.cnvp.paladin.interceptor;

import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import com.cnvp.paladin.model.SysRes;
import com.cnvp.paladin.model.SysUser;
import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import com.jfinal.core.JFinal;
/**
 * 停用JFinal中的shiro拦截器，用AuthorizationFilter4Shiro替代
 * 直接在shiro的Filter其中注册AuthorizationFilter4Shiro
 * 这样可以结合shiro.ini做灵活的配置，同时也可以使用shiro的其他默认拦截器
 */
@Deprecated
public class Shiro implements Interceptor {

	@Override
	public void intercept(ActionInvocation ai) {		
		/* 继续完善权限控制体系
		 * 1、配置资源代码，绑定actionKey
		 * 2、把所有actionKey=>code_route放入缓存
		 * 3、shiro拦截器中，根据actionKey在缓存中找到code_route
		 * 4、根据code_route用shiro内置方法进行验证
		 * */
		// 获取Shiro Subject
		Subject currentUser = SecurityUtils.getSubject();
		if (!currentUser.isAuthenticated()) {
			// 判断是否登陆
			System.err.println("会话超时or未登录");
			String cp = JFinal.me().getContextPath();
			cp =  ("".equals(cp) || "/".equals(cp)) ? "" : cp;
			String url = cp+"/Passport/login?from="+ai.getController().getRequest().getRequestURL();
			ai.getController().redirect(url);
		} else {
			SysUser user = (SysUser) currentUser.getPrincipal();
			// 根据ak读取权限代码
			Map<String,String> ak_coderoutes = SysRes.dao.getAk_CodeRoutes();
			String code_route = ak_coderoutes.get(ai.getActionKey());			
			//进行权限判断
			if(user.getStr("account").equals("superadmin")){
				ai.invoke();
			}else if(code_route==null){
				ai.getController().renderText(ai.getActionKey()+"由于该ActionKey未被配置到系统资源中，故默认没有权限");
			}else if(currentUser.isPermitted(code_route)){
				ai.invoke();
			}else{
				ai.getController().renderText("未授权，请联系管理员");
			}
			return;
		}
		
	}

}
