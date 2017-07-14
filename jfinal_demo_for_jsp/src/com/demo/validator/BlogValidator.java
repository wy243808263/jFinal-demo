/**
  * 文件说明
  * @Description:扩展说明
  * @Copyright: 2015 dreamtech.com.cn Inc. All right reserved
  * @Version: V6.0
  */
package com.demo.validator;

import com.demo.model.Blog;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**  
 * BlogValidator
 * @Author: feizi
 * @Date: 2015年4月20日 上午11:01:03 
 * @ModifyUser: feizi
 * @ModifyDate: 2015年4月20日 上午11:01:03 
 * @Version:V6.0
 */
public class BlogValidator extends Validator {

	/**
	 * 方法说明
	 * @Discription:扩展说明
	 * @Author: feizi
	 * @Date: 2015年4月20日 上午11:01:03
	 * @ModifyUser：feizi
	 * @ModifyDate: 2015年4月20日 上午11:01:03
	 * @see com.jfinal.validate.Validator#validate(com.jfinal.core.Controller)
	 */
	@Override
	protected void validate(Controller c) {
		validateRequiredString("blog.title", "titleMsg", "请输入Blog标题！");
		validateRequiredString("blog.content", "contentMsg", "请输入Blog内容！");
	}

	/**
	 * 方法说明
	 * @Discription:扩展说明
	 * @Author: feizi
	 * @Date: 2015年4月20日 上午11:01:03
	 * @ModifyUser：feizi
	 * @ModifyDate: 2015年4月20日 上午11:01:03
	 * @see com.jfinal.validate.Validator#handleError(com.jfinal.core.Controller)
	 */
	@Override
	protected void handleError(Controller c) {
		c.keepModel(Blog.class);
		
		String actionKey = this.getActionKey();
		if("/blog/save".equals(actionKey)){
			c.render("add.jsp");
		}else if("/blog/update".equals(actionKey)){
			c.render("edit.jsp");
		}
		
	}

}
