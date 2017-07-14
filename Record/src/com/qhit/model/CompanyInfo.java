package com.qhit.model;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;
import com.qhit.util.StringUtil;

/**
 * 公司信息实体类
 * 
 * @author Administrator
 * 
 */
public class CompanyInfo extends Model<CompanyInfo> {

	private static final long serialVersionUID = 7830515754993928569L;

	public static final CompanyInfo dao = new CompanyInfo();

	/**
	 * 查询全部公司信息
	 * 
	 * @param name
	 *            公司名称
	 * @return 公司信息
	 */
	public List<CompanyInfo> searchByAll(String name, String address, String stage, String field) {
		String sql = "select * from company c,positioncompanyrelation r where c.cid = r.cid";
		try {
			if (!StringUtil.isEmpty(name)) {
				sql += " and c.COMPANYNAME like '%" + new String(name.getBytes("ISO-8859-1"), "UTF-8") + "%'";
			}
			if (!StringUtil.isEmpty(address)) {
				sql += " and c.BUSINESSADDRESS = '" + new String(address.getBytes("ISO-8859-1"), "UTF-8") + "'";
			}
			if (!StringUtil.isEmpty(stage)) {
				sql += " and c.STAGE = '" + new String(stage.getBytes("ISO-8859-1"), "UTF-8") + "'";
			}
			if (!StringUtil.isEmpty(field)) {
				sql += " and c.FIELD = '" + new String(field.getBytes("ISO-8859-1"), "UTF-8") + "'";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return CompanyInfo.dao.find(sql);
	}
}