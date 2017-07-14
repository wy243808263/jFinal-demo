package com.qhit.model;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Record;
import com.qhit.util.StringUtil;

/**
 * 简历信息实体类
 * 
 * @author Administrator
 * 
 */
public class ResumesInfo extends Model<ResumesInfo> {

	private static final long serialVersionUID = -2093231591836070634L;

	public static final ResumesInfo dao = new ResumesInfo();

	/**
	 * 保存简历
	 * 
	 * @return
	 */
	public boolean saveResumesInfo(BigDecimal rid, BigDecimal u_id, String type, String expectCity, String expectPosition, String expectSalary, String companyName, String positionName,
			String WEStartTime, String WEEndTime, String projectName, String thePost, String projectYearStart, String projectYearEnd, String projectRemark, String SelfDescription, String schoolName,
			String education, String professional, String startYear, String endYear, String workLink, String workDescription) {
		Record record = new Record();

		if (!StringUtil.isEmpty(expectCity)) {
			record.set("ExpectedCity", expectCity);
		}
		if (!StringUtil.isEmpty(type)) {
			record.set("ExpectedWorkingProperty", type);
		}
		if (!StringUtil.isEmpty(expectSalary)) {
			record.set("ExpectedMonthly", expectSalary);
		}
		if (!StringUtil.isEmpty(expectSalary)) {
			record.set("WEPosition", expectPosition);
		}
		if (!StringUtil.isEmpty(companyName)) {
			record.set("WECompany", companyName);
		}
		if (!StringUtil.isEmpty(WEStartTime)) {
			record.set("WEStartTime", WEStartTime);
		}
		if (!StringUtil.isEmpty(WEEndTime)) {
			record.set("WEEndTime", WEEndTime);
		}
		if (!StringUtil.isEmpty(projectName)) {
			record.set("PEProject", projectName);
		}
		if (!StringUtil.isEmpty(thePost)) {
			record.set("PEPost", thePost);
		}
		if (!StringUtil.isEmpty(projectYearStart)) {
			record.set("PEProjectStartTime", projectYearStart);
		}
		if (!StringUtil.isEmpty(projectYearEnd)) {
			record.set("PEProjectEndTime", projectYearEnd);
		}
		if (!StringUtil.isEmpty(projectRemark)) {
			record.set("PEProjectDescription", projectRemark);
		}
		if (!StringUtil.isEmpty(SelfDescription)) {
			record.set("SelfDescription", SelfDescription);
		}

		if (!StringUtil.isEmpty(schoolName)) {
			record.set("EBSchool", schoolName);
		}
		if (!StringUtil.isEmpty(education)) {
			record.set("EBEducation", education);
		}
		if (!StringUtil.isEmpty(professional)) {
			record.set("EBMajor", professional);
		}
		if (!StringUtil.isEmpty(startYear)) {
			record.set("EBStartTime", startYear);
		}
		if (!StringUtil.isEmpty(endYear)) {
			record.set("EBEndTime", endYear);
		}

		if (!StringUtil.isEmpty(workLink)) {
			record.set("WorksURL", workLink);
		}
		if (!StringUtil.isEmpty(workDescription)) {
			record.set("WorkSexplain", workDescription);
		}

		record.set("EndUpdateTime", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		record.set("Completion", 100);
		record.set("u_id", u_id);

		if (rid != null) {
			record.set("rid", rid);
			return Db.update("resumes", "rid", record);
		} else {
			return Db.save("resumes", "rid", record);
		}
	}
}