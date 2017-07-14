package com.demo.plugin;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinalplus.plugin.spring.IocKit;

// jfinal v2.0 
public class IocInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		IocKit.invokeForProcessInjection(inv);
	}
}
