package com.jfinalplus.plugin.spring;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.support.BeanDefinitionBuilder;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.util.Assert;

/**
 * SpringKit
 */
public class SpringKit {
	/*---------------- FileSystemXmlApplicationContext -------------*/
	/**
	 * @Title: 创建 ApplicationContext
	 * @param configurations
	 * @return FileSystemXmlApplicationContext 
	 */
	public static FileSystemXmlApplicationContext newFileSystemXmlApplicationContextByConfigurations(String... configurations) {
		Assert.notNull(configurations);
		return new FileSystemXmlApplicationContext(configurations);
	}

	/*---------------- AnnotationConfigApplicationContext -------------*/
	/**
	 * @Title: 创建 ApplicationContext
	 * @param basePackages
	 * @since 3.0
	 * @return AnnotationConfigApplicationContext 
	 */
	public static AnnotationConfigApplicationContext newAnnotationConfigApplicationContextByBasePackages(String... basePackages) {
		Assert.notNull(basePackages);
		return new AnnotationConfigApplicationContext(basePackages);
	}

	/**
	 * @Title: 创建 ApplicationContext
	 * @param annotatedClasses
	 * @since 3.0
	 * @return AnnotationConfigApplicationContext 
	 */
	public static AnnotationConfigApplicationContext newAnnotationConfigApplicationContextByAnnotatedClasses(
			Class<?>... annotatedClasses) {
		Assert.notNull(annotatedClasses);
		return new AnnotationConfigApplicationContext(annotatedClasses);
	}

	/**
	 * @Title: 创建 ApplicationContext
	 * @param annotatedClasses
	 * @since 3.0
	 * @return AnnotationConfigApplicationContext 
	 */
	public static AnnotationConfigApplicationContext newAnnotationConfigApplicationContextByAnnotatedClasses(
			String... annotatedClasses) {
		return newAnnotationConfigApplicationContextByAnnotatedClasses(forNames(annotatedClasses));
	}

	/*---------------- ClassPathXmlApplicationContext -------------*/
	/**
	 * @Title: 创建 ApplicationContext  
	 * @param configLocations
	 * @return ApplicationContext 
	 */
	public static ClassPathXmlApplicationContext newClassPathXmlApplicationContextByConfigLocations(String... configLocations) {
		Assert.notNull(configLocations);
		return new ClassPathXmlApplicationContext(configLocations);
	}

	/**
	 * @Title: 生产 bean builder
	 * @param serviceClass
	 * @since 2.0
	 */
	public static BeanDefinitionBuilder genericBean(Class<?> serviceClass) {
		Assert.notNull(serviceClass);
		return BeanDefinitionBuilder.genericBeanDefinition(serviceClass);
	}

	/**
	 * @Title: 生产 bean builder
	 * @param beanClassName
	 * @since 2.0
	 */
	public static BeanDefinitionBuilder genericBean(String beanClassName) {
		Assert.notNull(beanClassName);
		return BeanDefinitionBuilder.genericBeanDefinition(beanClassName);
	}

	/**
	 * 向spring容器注册bean
	 * @Title: 
	 * @param beanName
	 * @param beanDefinition
	 * @param context
	 */
	public static void registerBean(ApplicationContext context, String beanName, BeanDefinition beanDefinition) {
		// ApplicationContext 不能为空
		Assert.notNull(context);
		// 断言 bean 没有定义
		Assert.state(!context.containsBean(beanName), "bean [" + beanName + "] is exist.");
		// BeanDefinition 不能为空
		Assert.notNull(beanDefinition);
		// 注册
		ConfigurableApplicationContext configurableApplicationContext = (ConfigurableApplicationContext) context;
		BeanDefinitionRegistry beanDefinitonRegistry = (BeanDefinitionRegistry) configurableApplicationContext.getBeanFactory();
		beanDefinitonRegistry.registerBeanDefinition(beanName, beanDefinition);
	}

	// --------------------------------------------------------
	// private function
	// --------------------------------------------------------

	static Class<?>[] forNames(String... classNames) {
		int length = 0;
		if (classNames != null) length = classNames.length;
		Class<?>[] classes = new Class[length];
		for (int i = 0; i < length; i++) {
			classes[i] = forName(classNames[i]);
		}
		return classes;
	}

	@SuppressWarnings("unchecked")
	static <T> Class<T> forName(String className) {
		try {
			return (Class<T>) Class.forName(className);
		} catch (ClassNotFoundException e) {
			throw new IllegalArgumentException(e);
		}
	}
}
