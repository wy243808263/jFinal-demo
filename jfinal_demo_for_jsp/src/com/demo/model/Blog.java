/**
 * 文件说明
 * @Description:扩展说明
 * @Copyright: 2015 dreamtech.com.cn Inc. All right reserved
 * @Version: V6.0
 */
package com.demo.model;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;

/**
 * Blog Model类
 * 
 * @Author: feizi
 * @Date: 2015年4月20日 上午10:03:51
 * @ModifyUser: feizi
 * @ModifyDate: 2015年4月20日 上午10:03:51
 * @Version:V6.0 mysql> desc blog;
 *               +---------+--------------+------+-----+--------
 *               -+----------------+ | Field | Type | Null | Key | Default |
 *               Extra |
 *               +---------+--------------+------+-----+---------+--------
 *               --------+ | id | int(11) | NO | PRI | NULL | auto_increment | |
 *               title | varchar(200) | NO | | NULL | | | content | mediumtext |
 *               NO | | NULL | |
 *               +---------+--------------+------+-----+---------
 *               +----------------+
 */
public class Blog extends Model<Blog> {

	private static final long serialVersionUID = -3649555563326235483L;

	// 方便于访问数据库，不是必须
	public static final Blog dao = new Blog();

	/**
	 * 所有 sql 与业务逻辑写在 Model 或 Service 中 方法说明
	 * 
	 * @Discription:扩展说明
	 * @param pageNumber
	 * @param pageSize
	 * @return
	 * @return Page<Blog>
	 * @Author: feizi
	 * @Date: 2015年4月20日 上午10:43:20
	 * @ModifyUser：feizi
	 * @ModifyDate: 2015年4月20日 上午10:43:20
	 */
	public Page<Blog> paginate(int pageNumber, int pageSize) {
		//这里体会到了jfinal的强大之处，mysql和oracle的分页都只需下面这一句就可以了。。
		return paginate(pageNumber, pageSize, "select * ","from test_blog order by id asc");
	}
}
