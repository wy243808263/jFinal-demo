package com.qhit.model;

import java.math.BigDecimal;
import java.util.List;

import com.jfinal.plugin.activerecord.Model;
import com.qhit.util.StringUtil;

/**
 * 订阅信息实体类
 * 
 * @author Administrator
 * 
 */
public class SubscriptionInfo extends Model<SubscriptionInfo> {

	private static final long serialVersionUID = -8612433056985099669L;

	public static final SubscriptionInfo dao = new SubscriptionInfo();

	/**
	 * 查询当前用户订阅信息
	 * 
	 * @param u_id
	 *            用户编号
	 * @return 用户订阅信息
	 */
	public List<SubscriptionInfo> getByUserId(BigDecimal u_id) {
		return SubscriptionInfo.dao.find("select * from dingyue d, users u where u.u_id = d.u_id and d.u_id=?", u_id);
	}

	/**
	 * 保存当前用户订阅信息
	 * 
	 * @return 是否成功
	 */
	public boolean saveSubscription(String did, BigDecimal u_id, String position_name, String BusinessAddress, String stage, String field, String Monthly, String email, BigDecimal releaseTime) {
		if (StringUtil.isEmpty(did)) {
			return SubscriptionInfo.dao.set("did", 100).set("u_id", u_id).set("position_name", position_name).set("BusinessAddress", BusinessAddress).set("stage", stage).set("field", field)
					.set("Monthly", Monthly).set("email", email).set("releaseTime", releaseTime).save();
		} else {
			return SubscriptionInfo.dao.findById(did).set("position_name", position_name).set("BusinessAddress", BusinessAddress).set("stage", stage).set("field", field).set("Monthly", Monthly)
					.set("email", email).set("releaseTime", releaseTime).update();
		}
	}
}