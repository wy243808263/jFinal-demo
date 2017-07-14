/**
  * 文件说明
  * @Description:扩展说明
  * @Copyright: 2015 dreamtech.com.cn Inc. All right reserved
  * @Version: V6.0
  */
package com.demo.controller.index;

import com.jfinal.core.Controller;

/**  
 * IndexController业务类
 * @Author: feizi
 * @Date: 2015年4月20日 上午10:01:31 
 * @ModifyUser: feizi
 * @ModifyDate: 2015年4月20日 上午10:01:31 
 * @Version:V6.0
 */
public class IndexController extends Controller {

	public void index(){
		render("index.jsp");
	}
}
