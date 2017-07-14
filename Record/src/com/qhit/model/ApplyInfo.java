package com.qhit.model;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.jfinal.plugin.activerecord.Model;

/**
 * 应聘信息实体类
 * 
 * @author 王勇
 * 
 */
public class ApplyInfo extends Model<ApplyInfo> {

	private static final long serialVersionUID = 4568211120994070774L;

	public static final ApplyInfo dao = new ApplyInfo();

	/**
	 * 保存应聘信息
	 * 
	 * @return 是否成功
	 */
	public boolean saveApplyInfo(BigDecimal u_id, BigDecimal pCRid) {
		return ApplyInfo.dao.set("aid", 100).set("u_id", u_id).set("pCRid", pCRid).set("applyTime", new SimpleDateFormat("yyyy-MM-dd").format(new Date())).save();
	}
}