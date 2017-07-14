package com.demo.config;

import com.demo.controllor.StudentController;
import com.demo.model.Classes;
import com.demo.model.Student;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.c3p0.C3p0Plugin;

public class DemoConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void configHandler(Handlers arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void configInterceptor(Interceptors arg0) {
		// TODO Auto-generated method stub

	}

	/*
	@Override
	public void configPlugin(Plugins me) {
		C3p0Plugin cp = new C3p0Plugin("jdbc:oracle:thin:@localhost:1521:orcl",
				"test", "test");
		// ����Oracle����
		cp.setDriverClass("oracle.jdbc.driver.OracleDriver");
		me.add(cp);
		ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
		me.add(arp);
		// ����Oracle����
		arp.setDialect(new OracleDialect());
		// ����������(�ֶ���)��Сд��������������
		arp.setContainerFactory(new CaseInsensitiveContainerFactory());
		arp.addMapping("student", "studentid", Student.class);
		arp.addMapping("classes", "classesid", Classes.class);
	}
*/
	public void configPlugin(Plugins me) {
		C3p0Plugin cp = new C3p0Plugin("jdbc:mysql://localhost:3306/test",
				"root", "123456");
		me.add(cp);
		ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
		me.add(arp);
        arp.setContainerFactory(new CaseInsensitiveContainerFactory());
        arp.addMapping("student", "studentid", Student.class);
        arp.addMapping("classes", "classesid", Classes.class);
	}

	@Override
	public void configRoute(Routes me) {
		me.add("/", StudentController.class);
		me.add("/student", StudentController.class);
	}

}
