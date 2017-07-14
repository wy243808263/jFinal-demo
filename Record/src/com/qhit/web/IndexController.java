package com.qhit.web;

import com.jfinal.core.Controller;

public class IndexController extends Controller {

	/**
	 * 初始化页面
	 */
	public void index() {
		redirect("/user/index");
	}
}