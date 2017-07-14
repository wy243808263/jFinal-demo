/**
  * 文件说明
  * @Description:扩展说明
  * @Copyright: 2015 dreamtech.com.cn Inc. All right reserved
  * @Version: V6.0
  */
package com.demo.interceptor;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;

/**  
 * BlogInterceptor
 * @Author: feizi
 * @Date: 2015年4月20日 上午10:59:12 
 * @ModifyUser: feizi
 * @ModifyDate: 2015年4月20日 上午10:59:12 
 * @Version:V6.0
 */
public class BlogInterceptor implements Interceptor {

	/**
	 * 方法说明
	 * @Discription:扩展说明
	 * @Author: feizi
	 * @Date: 2015年4月20日 上午10:59:12
	 * @ModifyUser：feizi
	 * @ModifyDate: 2015年4月20日 上午10:59:12
	 * @see com.jfinal.aop.Interceptor#intercept(com.jfinal.core.ActionInvocation)
	 */
	public void intercept(ActionInvocation ai) {
		System.out.println("================Before invoking " + ai.getActionKey());
		ai.invoke();
		System.out.println("================After invoking " + ai.getActionKey());
	}

}
