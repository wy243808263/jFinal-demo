package com.jfinalplus.plugin.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.util.Assert;

import com.jfinal.plugin.IPlugin;

/**
 * SpringPlugin.
 */
public class SpringPlugin implements IPlugin {

	private static boolean isStarted = false;
	private ApplicationContext ctx;

	public SpringPlugin() {}

	public SpringPlugin(ApplicationContext ctx) {
		this.setApplicationContext(ctx);
	}

	public void setApplicationContext(ApplicationContext ctx) {
		Assert.notNull(ctx, "ApplicationContext can not be null.");
		this.ctx = ctx;
	}

	public boolean start() {
		if (isStarted) return true;

		Assert.notNull(ctx, "ApplicationContext can not be null.");
		IocKit.init(ctx);
		return isStarted = true;
	}

	public boolean stop() {
		ctx = null;
		isStarted = false;
		return true;
	}
}
