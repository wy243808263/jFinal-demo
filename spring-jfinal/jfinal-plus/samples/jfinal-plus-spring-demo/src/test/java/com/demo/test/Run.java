package com.demo.test;

import com.jfinal.core.JFinal;

public class Run {

	public static void main(String[] args) {
		//直接在这个页面启动，在浏览器中输入localhost/index 进行访问
		JFinal.start("src/main/webapp", 80, "/", 5);
	}
}
