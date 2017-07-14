package com.qhit.model;

import java.math.BigDecimal;

import com.jfinal.plugin.activerecord.Model;

/**
 * 个人信息实体类
 * 
 * @author 王勇
 * 
 */
public class PerInfo extends Model<PerInfo> {

	private static final long serialVersionUID = 6324369541775181744L;

	public static final PerInfo dao = new PerInfo();

	/**
	 * 保存个人信息
	 * 
	 * @return 是否成功
	 */
	public boolean savePerInfo(String id, BigDecimal u_id, String pname, String education, String workExperienc, BigDecimal phone, String email, String city) {
		PerInfo perInfo = PerInfo.dao.findById(id);

		if (perInfo == null) {
			return PerInfo.dao.set("pIid", new BigDecimal(100)).set("u_id", u_id).set("pname", pname).set("education", education).set("workExperienc", workExperienc).set("phone", phone)
					.set("email", email).set("city", city).save();
		} else {
			return PerInfo.dao.findById(id).set("pIid", new BigDecimal(id)).set("u_id", u_id).set("pname", pname).set("education", education).set("workExperienc", workExperienc).set("phone", phone)
					.set("email", email).set("city", city).update();
		}
	}
}