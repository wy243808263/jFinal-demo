/**
  * 文件说明
  * @Description:扩展说明
  * @Copyright: 2015 dreamtech.com.cn Inc. All right reserved
  * @Version: V6.0
  */
package com.demo.controller.blog;

import com.demo.interceptor.BlogInterceptor;
import com.demo.model.Blog;
import com.demo.validator.BlogValidator;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

/**  
 * BlogController
 * @Author: feizi
 * @Date: 2015年4月20日 上午10:45:27 
 * @ModifyUser: feizi
 * @ModifyDate: 2015年4月20日 上午10:45:27 
 * @Version:V6.0
 */
@Before(BlogInterceptor.class)
public class BlogController extends Controller {
	
	/**
	 * 默认
	  * 方法说明
	  * @Discription:扩展说明
	  * @return void
	  * @Author: feizi
	  * @Date: 2015年4月20日 上午10:56:15
	  * @ModifyUser：feizi
	  * @ModifyDate: 2015年4月20日 上午10:56:15
	 */
	public void index(){
		Page<Blog> blogPage = Blog.dao.paginate(getParaToInt(0, 1), 10);
		setAttr("blogPage", blogPage);
		render("blog.jsp");
	}
	
	public void add(){
		
	}
	
	/**
	 * 保存
	  * 方法说明
	  * @Discription:扩展说明
	  * @return void
	  * @Author: feizi
	  * @Date: 2015年4月20日 上午10:56:25
	  * @ModifyUser：feizi
	  * @ModifyDate: 2015年4月20日 上午10:56:25
	 */
	@Before(BlogValidator.class)
	public void save(){
		Blog blog = this.getModel(Blog.class);
		//Oracle数据库使用序列
		blog.set("id", "test_seq_blog.nextval");
		blog.save();
		forwardAction("/blog");
	}
	
	/**
	 * 编辑
	  * 方法说明
	  * @Discription:扩展说明
	  * @return void
	  * @Author: feizi
	  * @Date: 2015年4月20日 上午10:56:32
	  * @ModifyUser：feizi
	  * @ModifyDate: 2015年4月20日 上午10:56:32
	 */
	public void edit(){
		Blog blog = Blog.dao.findById(getParaToInt());
		setAttr("blog", blog.put("page_title", "修改"));
	}
	
	/**
	 * 查看
	  * 方法说明
	  * @Discription:扩展说明
	  * @return void
	  * @Author: feizi
	  * @Date: 2015年4月20日 下午5:34:03
	  * @ModifyUser：feizi
	  * @ModifyDate: 2015年4月20日 下午5:34:03
	 */
	public void view(){
		this.setAttr("blog", Blog.dao.findById(getParaToInt()).put("page_title", "查看"));
	}
	
	/**
	 * 修改
	  * 方法说明
	  * @Discription:扩展说明
	  * @return void
	  * @Author: feizi
	  * @Date: 2015年4月20日 上午10:56:40
	  * @ModifyUser：feizi
	  * @ModifyDate: 2015年4月20日 上午10:56:40
	 */
	@Before(BlogValidator.class)
	public void update(){
		Blog blog = this.getModel(Blog.class);
		blog.update();
		forwardAction("/blog");
	}
	
	/**
	 * 删除
	  * 方法说明
	  * @Discription:扩展说明
	  * @return void
	  * @Author: feizi
	  * @Date: 2015年4月20日 上午10:56:47
	  * @ModifyUser：feizi
	  * @ModifyDate: 2015年4月20日 上午10:56:47
	 */
	public void delete(){
		Blog.dao.deleteById(getParaToInt());
		forwardAction("/blog");
	}
}
