package com.qhit.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.core.Controller;
import com.jfinal.kit.PathKit;
import com.jfinal.upload.UploadFile;
import com.qhit.model.ApplyInfo;
import com.qhit.model.CompanyInfo;
import com.qhit.model.PerInfo;
import com.qhit.model.PositionInfo;
import com.qhit.model.RelationInfo;
import com.qhit.model.ResumesInfo;
import com.qhit.model.SubscriptionInfo;
import com.qhit.model.UsersInfo;
import com.qhit.util.Json;

public class UserController extends Controller {

	/**
	 * 登录
	 */
	public void login() {
		UsersInfo usersInfo = UsersInfo.dao.login(getPara("uname"), getPara("upassword"));
		if (usersInfo == null) {
			render("login.jsp");
		} else {
			getRequest().getSession().setAttribute("UsersInfo", usersInfo);
			redirect("/user/index");
		}
	}

	/**
	 * 用户登录
	 */
	public void userLogin() {
		UsersInfo usersInfo = UsersInfo.dao.login(getPara("email"), getPara("password"));
		Json json = new Json();
		if (usersInfo == null) {
			json.setSuccess(false);
		} else {
			json.setSuccess(true);
			getRequest().getSession().setAttribute("UsersInfo", usersInfo);
		}
		renderJson(json);
	}

	/**
	 * 进入首页
	 */
	public void index() {
		List<CompanyInfo> companyList = CompanyInfo.dao.searchByAll(getPara("kd"), "", "", "");
		List<PositionInfo> posList = PositionInfo.dao.searchByAll();
		setAttr("companyList", companyList);
		setAttr("posList", posList);
		render("/index.jsp");
	}

	/**
	 * 根据用户显示用户个人信息
	 */
	public void getInfo() {
		UsersInfo user = (UsersInfo) getRequest().getSession().getAttribute("UsersInfo");
		if (user != null) {
			PerInfo perInfo = PerInfo.dao.findById(user.getBigDecimal("u_id"));
			setAttr("perInfo", perInfo);
			render("/info.jsp");
		} else {
			render("/login.jsp");
		}
	}

	/**
	 * 根据公司编号查询公司信息
	 */
	public void shequ() {
		RelationInfo relationInfo = RelationInfo.dao.searchByAll(getPara("cid"));
		setAttr("relationInfo", relationInfo);
		render("/shequ.jsp");
	}

	/**
	 * 获取公司信息
	 */
	public void getCompanyInfo() {
		List<CompanyInfo> companyList = CompanyInfo.dao.searchByAll(getPara("kd", ""), getPara("address"), getPara("stage"), getPara("field"));
		setAttr("companyList", companyList);
		render("/gongsi.jsp");
	}

	/**
	 * 投递简历
	 */
	public void saveApply() {
		UsersInfo u = (UsersInfo) getRequest().getSession().getAttribute("UsersInfo");

		boolean flag = ApplyInfo.dao.saveApplyInfo(u.getBigDecimal("u_id"), new BigDecimal(getPara("pCRID")));
		if (flag) {
			redirect("/user/shequ?cid=" + getPara("cid"));
		} else {
			redirect("/user/shequ?cid=" + getPara("cid"));
		}
	}

	/**
	 * 用户注册
	 */
	public void reg() {
		boolean flag = UsersInfo.dao.register(getPara("uname"), getPara("upassword"), getPara("type"));
		if (flag) {
			render("/login.jsp");
		} else {
			render("register.jsp");
		}
	}

	/**
	 * 用户退出
	 */
	public void logout() {
		getRequest().getSession().invalidate();
		render("/login.jsp");
	}

	/**
	 * 根据用户编号查询个人信息
	 */
	public void getPerInfo() {
		UsersInfo usersInfo = (UsersInfo) getRequest().getSession().getAttribute("UsersInfo");

		if (usersInfo == null) {
			render("/login.jsp");
		} else {
			setAttr("perInfo", PerInfo.dao.findById(usersInfo.getBigDecimal("u_id")));
			setAttr("resumesInfo", ResumesInfo.dao.findById(usersInfo.getBigDecimal("u_id")));
			render("/jianli.jsp");
		}
	}

	/**
	 * 保存个人信息
	 */
	public void savePerInfo() {
		UsersInfo u = (UsersInfo) getRequest().getSession().getAttribute("UsersInfo");

		boolean flag = PerInfo.dao.savePerInfo(getPara("id"), u.getBigDecimal("u_id"), getPara("pname"), getPara("education"), getPara("workExperienc"), new BigDecimal(getPara("phone")),
				getPara("email"), getPara("city"));

		Json json = new Json();
		if (flag) {
			json.setSuccess(true);
		} else {
			json.setSuccess(false);
		}
		renderJson(json);
	}

	/**
	 * 上传图片
	 */
	public void upload() {
		String path = new SimpleDateFormat("yyyy/MM/dd").format(new Date());

		UploadFile file = getFile("file", PathKit.getWebRootPath() + "/temp");
		String fileName = file.getFileName();

		File source = file.getFile();
		String extension = fileName.substring(fileName.lastIndexOf("."));
		String prefix;
		if (".png".equals(extension) || ".jpg".equals(extension) || ".gif".equals(extension)) {
			prefix = "img";
			fileName = generateWord() + extension;
		} else {
			prefix = "file";
		}

		JSONObject json = new JSONObject();

		try {
			FileInputStream fis = new FileInputStream(source);
			File targetDir = new File(PathKit.getWebRootPath() + "/" + prefix + "/u/" + path);
			if (!targetDir.exists()) {
				targetDir.mkdirs();
			}

			File target = new File(targetDir, fileName);
			if (!target.exists()) {
				target.createNewFile();
			}

			FileOutputStream fos = new FileOutputStream(target);
			byte[] bts = new byte[300];
			while (fis.read(bts, 0, 300) != -1) {
				fos.write(bts, 0, 300);
			}
			fos.close();
			fis.close();
			json.put("error", 0);
			json.put("url", file.getFileName());
		} catch (FileNotFoundException e) {
			json.put("error", 1);
			json.put("message", "上传出现错误，请稍后再上传");
		} catch (IOException e) {
			json.put("error", 1);
			json.put("message", "文件写入服务器出现错误，请稍后再上传");
		}
		renderJson(json.toJSONString());
	}

	/**
	 * 下载文件
	 */
	public void download() {
		// String path = getPara(0);
		// String img = PathKit.getWebRootPath() + "/img/u/" + path.replaceAll("_", "/");
		// ZipUtil.zip(img, PathKit.getWebRootPath() + "/img/temp/" + path);
		// renderFile("/img/temp/" + path + ".zip");
	}

	private String generateWord() {
		String[] beforeShuffle = new String[] { "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
				"W", "X", "Y", "Z" };
		List<String> list = Arrays.asList(beforeShuffle);
		Collections.shuffle(list);
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < list.size(); i++) {
			sb.append(list.get(i));
		}
		String afterShuffle = sb.toString();
		String result = afterShuffle.substring(5, 9);
		return result;
	}

	/**
	 * 保存简历
	 */
	public void saveResumesInfo() {
		// 工作经历
		String positionName = getPara("positionName");
		String WEStartTime = getPara("startYear") + "-" + getPara("startMonth");
		String WEEndTime = getPara("endYear") + "-" + getPara("endMonth");
		BigDecimal rid = "".equals(getPara("id")) ? null : new BigDecimal(getPara("id"));

		String companyName = getPara("companyName");

		// 期望工作
		String type = getPara("positionType");// 工作性质
		String expectCity = getPara("city");// 工作城市
		String expectPosition = getPara("positionName");// 期望职位
		String expectSalary = getPara("salarys");// 期望月薪

		// 项目经验
		String projectName = getPara("projectName");
		String thePost = getPara("positionName");
		String projectYearStart = getPara("startYear") + "-" + getPara("startMonth");
		String projectYearEnd = getPara("endYear") + "-" + getPara("endMonth");
		String projectRemark = getPara("projectRemark");// 项目描述

		// 教育背景
		String schoolName = getPara("schoolName");
		String education = getPara("education");
		String professional = getPara("professional");
		String startYear = getPara("startYear");
		String endYear = getPara("endYear");

		// 作品展示
		String workLink = getPara("url");
		String workDescription = getPara("workName");

		// 自我描述
		String selfDescription = getPara("myRemark");

		UsersInfo u = (UsersInfo) getRequest().getSession().getAttribute("UsersInfo");

		boolean flag = ResumesInfo.dao.saveResumesInfo(rid, u.getBigDecimal("u_id"), type, expectCity, expectPosition, expectSalary, positionName, companyName, WEStartTime, WEEndTime, projectName,
				thePost, projectYearStart, projectYearEnd, projectRemark, selfDescription, schoolName, education, professional, startYear, endYear, workLink, workDescription);
		if (flag) {
			renderJson(flag);
		} else {
			renderJson(flag);
		}
	}

	/**
	 * 查询当前用户订阅信息
	 */
	public void getSubscription() {
		UsersInfo usersInfo = (UsersInfo) getRequest().getSession().getAttribute("UsersInfo");

		if (usersInfo == null) {
			render("/login.jsp");
		} else {
			List<SubscriptionInfo> yueInfo = SubscriptionInfo.dao.getByUserId(usersInfo.getBigDecimal("u_id"));
			setAttr("yueInfoList", yueInfo);
			render("/dingyue.jsp");
		}
	}

	/**
	 * 根据订阅编号查询订阅信息
	 */
	public void getById() {
		SubscriptionInfo info = SubscriptionInfo.dao.findById(getPara("id"));
		renderJson(info);
	}

	/**
	 * 保存用户订阅信息
	 */
	public void saveSubscription() {
		UsersInfo u = (UsersInfo) getRequest().getSession().getAttribute("UsersInfo");

		boolean flag = SubscriptionInfo.dao.saveSubscription(getPara("oldId", ""), u.getBigDecimal("u_id"), getPara("positionName"), getPara("city"), getPara("financeStage"),
				getPara("industryField"), getPara("salary"), getPara("email"), new BigDecimal(getPara("sendMailPer")));

		Json json = new Json();
		if (flag) {
			json.setMsg("操作成功");
			json.setSuccess(true);
		} else {
			json.setMsg("操作失败");
			json.setSuccess(false);
		}
		renderJson(json);
	}

	/**
	 * 根据订阅编号删除订阅信息
	 */
	public void deleteSubscription() {
		boolean flag = SubscriptionInfo.dao.deleteById(getPara("id"));
		Json json = new Json();
		if (flag) {
			json.setMsg("操作成功");
			json.setSuccess(true);
		} else {
			json.setMsg("操作失败");
			json.setSuccess(false);
		}
		renderJson(json);
	}
}