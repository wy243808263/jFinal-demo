package com.demo.common;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;

import com.demo.controller.BlogController;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.render.ViewType;
import com.jfinalplus.plugin.spring.IocKit;
import com.jfinalplus.plugin.spring.SpringPlugin;

public class CommonConfig extends JFinalConfig {

	@Resource
	private ApplicationContext ctx;

	@Override
	public void configConstant(Constants me) {
		IocKit.processJFinalConfig(this);
		
		System.out.println("configConstant 缓存 properties");
		loadPropertyFile("common.properties");

		System.out.println("configConstant 设置字符集");
		me.setEncoding("UTF-8");

		System.out.println("configConstant 设置是否开发模式");
		me.setDevMode(getPropertyToBoolean("devMode", true));
		me.setViewType(ViewType.JSP);
	}

	@Override
	public void configRoute(Routes me) {
		System.out.println("configRoute");
		me.add("/blog", BlogController.class);
		me.add("/b", BlogController.class);
	}

	@Override
	public void configPlugin(Plugins me) {
		System.out.println("configPlugin 配置ActiveRecord插件");
		me.add(new SpringPlugin(ctx));
	}

	@Override
	public void configInterceptor(Interceptors me) {
		System.out.println("configInterceptor");
	}

	@Override
	public void configHandler(Handlers me) {
		System.out.println("configHandler");
	}

}
