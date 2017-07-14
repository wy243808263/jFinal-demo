#jfinal-plus-spring
作用于 spring 和 jfinal ioc plugin。
支持 ioc @Inject @Value @Autowired
   ioc @Resource

#使用 Maven
```xml 
	<dependency>
	  <groupId>com.jfinalplus</groupId>
	  <artifactId>jfinal-plus-spring</artifactId>
	  <version>x.x.x</version>
	</dependency>
```

## 1、JFinalConfig 配置
```java 
public class HelloJFinalConfig extends JFinalConfig {

	@Autowired
	private ApplicationContext ctx;
	
	...
	@Override
	public void configConstant(Constants me) {
		...
		// 需要 web.xml 配置 org.springframework.web.context.ContextLoaderListener
		IocKit.processJFinalConfig(this);// or IocKit.processJFinalConfig(this,ctx);
		...
	}
	
	@Override
	public void configPlugin(Plugins me) {
		me.add(new SpringPlugin(ctx));
	}
	...
}
```

## 2、创建 Interceptor (由于 2.0之前和2.0 的版本有区别所用不提供 Ioc 对象，需自己创建)如: 
```java
// jfinal v2.0 之前
public class IocInterceptor implements Interceptor {

	@Override
	public void intercept(ActionInvocation ai) {
		IocKit.invokeForProcessInjection(ai);
	}
}
```

## 3、Controller
``` java
@Before(IocInterceptor.class)
public class HelloController extends Controller {
	
	// @Autowired 
	ApplicationContext ctx;

	@Autowired
	public void setApplicationContext(ApplicationContext ctx) {
		System.out.println("HelloController attr[ApplicationContext] 已注入。。");
	}
}
```

## 4、更多支持
- oschina [开源社区 ](http://www.oschina.net/p/spring-jfinal)
- JFinal [官方网站 ](http://www.jfinal.com/) 
- 关注官方微信号马上体验 demo 功能  
![JFinal Weixin SDK](http://static.oschina.net/uploads/space/2015/0211/181947_2431_201137.jpg)