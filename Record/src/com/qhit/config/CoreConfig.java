package com.qhit.config;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.activerecord.dialect.OracleDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;
import com.qhit.interceptor.SessionInterceptor;
import com.qhit.model.ApplyInfo;
import com.qhit.model.CompanyInfo;
import com.qhit.model.PerInfo;
import com.qhit.model.PositionInfo;
import com.qhit.model.RelationInfo;
import com.qhit.model.ResumesInfo;
import com.qhit.model.SubscriptionInfo;
import com.qhit.model.UsersInfo;
import com.qhit.web.IndexController;
import com.qhit.web.UserController;

/**
 * 核心Config配置文件
 * 
 * @author 王勇
 * 
 */
public class CoreConfig extends JFinalConfig {

	/**
	 * 配置常量
	 */
	@Override
	public void configConstant(Constants me) {
		// 加载系统属性配置文件 随后可用getProperty(...)获取值
		loadPropertyFile("system_config_info.txt");
		// 设置开发模式
		me.setDevMode(getPropertyToBoolean("devMode", false));
		// 设置视图类型为Jsp，否则默认为FreeMarker
		me.setViewType(ViewType.JSP);
	}

	/**
	 * 配置路由
	 */
	@Override
	public void configRoute(Routes me) {
		// 第三个参数为该Controller的视图存放路径
		me.add("/", IndexController.class);
		me.add("/user", UserController.class);
	}

	/**
	 * 配置插件
	 */
	@Override
	public void configPlugin(Plugins me) {
		C3p0Plugin cp = new C3p0Plugin(getProperty("jdbcUrl"), getProperty("user"), getProperty("password"), getProperty("jdbcDriver"));
		me.add(cp);

		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
		me.add(arp);

		// 配置Oracle方言
		arp.setDialect(new OracleDialect());

		// 配置属性名(字段名)大小写不敏感容器工厂
		arp.setContainerFactory(new CaseInsensitiveContainerFactory());

		// 配置表
		// 用户表
		arp.addMapping("users", "u_id", UsersInfo.class);
		// 个人信息perInfo
		arp.addMapping("perInfo", "pIid", PerInfo.class);
		// 简历表resumes
		arp.addMapping("resumes", "rid", ResumesInfo.class);
		// 订阅表dingyue
		arp.addMapping("dingyue", "did", SubscriptionInfo.class);
		// 公司表company
		arp.addMapping("company", "cid", CompanyInfo.class);
		// 职位-公司表PositionCompanyRelation
		arp.addMapping("PositionCompanyRelation", "pCRid", RelationInfo.class);
		// 应聘表apply
		arp.addMapping("Apply", "aid", ApplyInfo.class);
		// 职位表position
		arp.addMapping("position", "pid", PositionInfo.class);
	}

	/**
	 * 配置全局拦截器
	 */
	@Override
	public void configInterceptor(Interceptors me) {
		//me.add(new SessionInterceptor());// 拦截用户是否登录
	}

	/**
	 * 配置处理器
	 */
	@Override
	public void configHandler(Handlers me) {
	}
}