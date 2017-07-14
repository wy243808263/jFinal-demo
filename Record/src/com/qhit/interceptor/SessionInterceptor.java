package com.qhit.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;
import com.jfinal.core.Controller;

/**
 * 用户认证拦截器
 * 
 * @author Administrator
 * 
 */
public class SessionInterceptor implements Interceptor {

	@Override
	public void intercept(ActionInvocation ai) {
		Controller controller = ai.getController();
		Object user = controller.getSession().getAttribute("UsersInfo");
		// 判断登录条件是否成立(除了登录功能不拦截之外，其他都拦截)
		if (user == null && !ai.getMethod().getName().equals("login")) {
			controller.render("/login.jsp");
		} else {
			ai.invoke();
		}
	}
}