package com.qhit.model;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;

/**
 * 职位信息实体类
 * 
 * @author Administrator
 * 
 */
public class PositionInfo extends Model<PositionInfo> {

	private static final long serialVersionUID = 1L;

	public static final PositionInfo dao = new PositionInfo();

	/**
	 * 查询所有热门职位
	 * 
	 * @return
	 */
	public List<PositionInfo> searchByAll() {
		return PositionInfo.dao.find("select * from position");
	}
}