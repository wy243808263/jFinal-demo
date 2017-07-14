package com.qhit.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * 用户信息实体类
 * 
 * @author 王勇
 * 
 */
public class UsersInfo extends Model<UsersInfo> {

	private static final long serialVersionUID = 3377497762579119718L;

	// 方便于访问数据库，不是必须
	public static final UsersInfo dao = new UsersInfo();

	/**
	 * 用户登录
	 * 
	 * @param uname
	 *            登录名
	 * @param upassword
	 *            密码
	 * @return 用户信息
	 */
	public UsersInfo login(String uname, String upassword) {
		return UsersInfo.dao.findFirst("select * from users where uname=? and upassword=?", new Object[] { uname, upassword });
	}

	/**
	 * 用户注册
	 * 
	 * @param uname
	 *            登录名
	 * @param upassword
	 *            密码
	 * @param state
	 *            状态：1-个人用户、2-企业用户
	 */
	public boolean register(String uname, String upassword, String state) {
		return UsersInfo.dao.set("u_id", "users_sequence.nextval").set("uname", uname).set("upassword", upassword).set("state", Integer.valueOf(state)).save();
	}
}