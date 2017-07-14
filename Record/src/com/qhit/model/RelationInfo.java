package com.qhit.model;

import com.jfinal.plugin.activerecord.Model;

/**
 * 公司职位信息实体类
 * 
 * @author Administrator
 * 
 */
public class RelationInfo extends Model<RelationInfo> {

	private static final long serialVersionUID = 6614690845292344987L;

	public static final RelationInfo dao = new RelationInfo();

	/**
	 * 根据公司编号查询公司招聘信息
	 * 
	 * @param cid
	 *            公司编号
	 */
	public RelationInfo searchByAll(String cid) {
		return RelationInfo.dao.findFirst("select * from PositionCompanyRelation r, company c, position p where c.cid = r.cid and p.pid = r.pid and r.cid=?", new Object[] { cid });
	}
}