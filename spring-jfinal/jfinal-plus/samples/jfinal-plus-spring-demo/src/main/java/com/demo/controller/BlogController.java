package com.demo.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.demo.plugin.IocInterceptor;
import com.demo.service.TestService;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

@Before(IocInterceptor.class)
public class BlogController extends Controller {
	@Autowired
	private TestService service;

//	@Autowired
//	@Inject
	@Resource
	public void setApplicationContext(ApplicationContext ctx) {
		System.out.println("HelloController attr[ApplicationContext] 已出入。。");
	}

	public void index() {
		service.update();
		renderText("Hello JFinal World.");
	}

	public void t() {
		renderText("Hello JFinal World.");
	}
}
