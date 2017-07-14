/**
  * 文件说明
  * @Description:扩展说明
  * @Copyright: 2015 dreamtech.com.cn Inc. All right reserved
  * @Version: V6.0
  */
package com.demo.config;

import com.demo.controller.blog.BlogController;
import com.demo.controller.index.IndexController;
import com.demo.model.Blog;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.activerecord.dialect.OracleDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

/**  
 * 核心Config配置文件
 * @Author: feizi
 * @Date: 2015年4月20日 上午9:39:38 
 * @ModifyUser: feizi
 * @ModifyDate: 2015年4月20日 上午9:39:38 
 * @Version:V6.0
 */
public class CoreConfig extends JFinalConfig {

	/**
	 * 配置常量
	 * @Discription:扩展说明
	 * @Author: feizi
	 * @Date: 2015年4月20日 上午9:39:38
	 * @ModifyUser：feizi
	 * @ModifyDate: 2015年4月20日 上午9:39:38
	 * @see com.jfinal.config.JFinalConfig#configConstant(com.jfinal.config.Constants)
	 */
	@Override
	public void configConstant(Constants me) {
		//加载系统属性配置文件 随后可用getProperty(...)获取值
		loadPropertyFile("system_config_info.txt");
		//设置开发模式
		me.setDevMode(getPropertyToBoolean("devMode", false));
		//设置视图类型为Jsp，否则默认为FreeMarker
		me.setViewType(ViewType.JSP);
	}

	/**
	 * 配置路由
	 * @Discription:扩展说明
	 * @Author: feizi
	 * @Date: 2015年4月20日 上午9:39:38
	 * @ModifyUser：feizi
	 * @ModifyDate: 2015年4月20日 上午9:39:38
	 * @see com.jfinal.config.JFinalConfig#configRoute(com.jfinal.config.Routes)
	 */
	@Override
	public void configRoute(Routes me) {
		//第三个参数为该Controller的视图存放路径
		me.add("/", IndexController.class,"/index");
		me.add("/blog", BlogController.class);
	}

	/**
	 * 配置插件
	 * @Discription:扩展说明
	 * @Author: feizi
	 * @Date: 2015年4月20日 上午9:39:38
	 * @ModifyUser：feizi
	 * @ModifyDate: 2015年4月20日 上午9:39:38
	 * @see com.jfinal.config.JFinalConfig#configPlugin(com.jfinal.config.Plugins)
	 */
	@Override
	public void configPlugin(Plugins me) {
		/**
		 * 配置Mysql支持
		 */
		/*//配置c3p0数据库连接池插件
		C3p0Plugin cp = new C3p0Plugin(getProperty("jdbcUrl"), getProperty("user"), getProperty("password"));
		me.add(cp);
		
		//配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
		me.add(arp);
		
		//映射Blog表到Blog模型
		arp.addMapping("Blog", Blog.class);*/
		
		
		/**
		 * 配置Oracle支持
		 */
		//配置c3p0数据库连接池插件
		C3p0Plugin cp = new C3p0Plugin(getProperty("jdbcUrl"), getProperty("user"), getProperty("password"),getProperty("jdbcDriver")); 
		/*//配置Oracle驱动
		cp.setDriverClass(getProperty("jdbcDriver"));*/
		me.add(cp);
		
		//配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
		me.add(arp);
		
		//配置Oracle方言
		arp.setDialect(new OracleDialect());
		
		//配置属性名（字段名）大小写不敏感容器工厂
		arp.setContainerFactory(new CaseInsensitiveContainerFactory());
		
		//映射test_blog表到Blog模型（我在Oracle数据库中建的表是这个表名）
		arp.addMapping("TEST_BLOG","ID", Blog.class);
	}

	/**
	 * 配置全局拦截器
	 * @Discription:扩展说明
	 * @Author: feizi
	 * @Date: 2015年4月20日 上午9:39:38
	 * @ModifyUser：feizi
	 * @ModifyDate: 2015年4月20日 上午9:39:38
	 * @see com.jfinal.config.JFinalConfig#configInterceptor(com.jfinal.config.Interceptors)
	 */
	@Override
	public void configInterceptor(Interceptors me) {
	}

	/**
	 * 配置处理器
	 * @Discription:扩展说明
	 * @Author: feizi
	 * @Date: 2015年4月20日 上午9:39:38
	 * @ModifyUser：feizi
	 * @ModifyDate: 2015年4月20日 上午9:39:38
	 * @see com.jfinal.config.JFinalConfig#configHandler(com.jfinal.config.Handlers)
	 */
	@Override
	public void configHandler(Handlers me) {
	}

	/**
	 * 建议使用 JFinal 手册推荐的方式启动项目
	 * 运行此 main 方法可以启动项目，此main方法可以放置在任意的Class类定义中，不一定要放于此
	 */
	public static void main(String[] args) {
		JFinal.start("WebRoot", 80, "/", 5);
	}
}
