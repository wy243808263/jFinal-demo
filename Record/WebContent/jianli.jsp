<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath }/resources/css/style.css">
		<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath }/resources/css/external.min.css">
		<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath }/resources/css/popup.css">
		
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/jquery-1.10.2.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/jquery.lib.min.js"></SCRIPT>
		<SCRIPT type=text/javascript>
			var ctx = "${pageContext.request.contextPath}";
		</SCRIPT>
	</head>
	<body>
		<div id="body">
			<div id="header">
				<div class="wrapper">
					<a class="logo" href="http://www.lagou.com/"></a>
					<ul id="navheader" class="reset">
						<li><a href="${pageContext.request.contextPath }/user/index">首页</a></li>
						<li><a href="${pageContext.request.contextPath }/user/getCompanyInfo">公司</a></li>
						<li><a href="${pageContext.request.contextPath }/luntan.jsp" rel="nofollow" target="_blank">论坛</a></li>
						<li class="current"><a href="${pageContext.request.contextPath }/user/getPerInfo" rel="nofollow">我的简历</a></li>
					</ul>
					<dl class="collapsible_menu">
						<dt>
							<span id="nowrap">${UsersInfo.uname}&nbsp;</span> <span id="noticeDot-0" class="red dn"></span> <i></i>
						</dt>
						<dd>
							<a href="http://www.lagou.com/resume/myresume.html" rel="nofollow">我的简历</a>
						</dd>
						<dd>
							<a href="http://www.lagou.com/mycenter/collections.html">我收藏的职位</a>
						</dd>
						<dd class="btm">
							<a href="${pageContext.request.contextPath }/user/getSubscription">我的订阅</a>
						</dd>
						<dd>
							<a href="http://www.lagou.com/mycenter/saveUserType.do?type=1">我要招人</a>
						</dd>
						<dd>
							<a href="http://www.lagou.com/user/accountBind.html">帐号设置</a>
						</dd>
						<dd class="logout">
							<a href="${pageContext.request.contextPath }/user/logout" rel="nofollow">退出</a>
						</dd>
					</dl>
					<div id="noticeTip" class="dn">
						<span class="bot"></span> 
						<span class="top"></span> 
						<a href="http://www.lagou.com/mycenter/delivery.html?tag=0&amp;r=0" target="_blank"><strong>0</strong>条新投递反馈</a> 
						<a class="closeNT" href="javascript:;"></a>
					</div>
				</div>
			</div>
			<!-- end #header -->
			<div id="container">
				<div class="clearfix">
					<div class="content_l">
						<div id="resume_name" class="fl">
							<div class="nameShow fl">
								<h1 title="${perInfo.pname}的简历">${perInfo.pname}的简历</h1>
								<span class="rename">重命名</span> | <a href="http://www.lagou.com/resume/preview.html" target="_blank">预览</a>
							</div>
							<form id="resumeNameForm" class="fl dn">
								<input class="nameEdit c9" value="${perInfo.pname}的简历" type="text" name="resumeName" /> <input value="保存" type="submit" /> | <a href="http://www.lagou.com/resume/preview.html" target="_blank">预览</a>
							</form>
						</div>
						<!--end #resume_name-->
						<div id="lastChangedTime" class="fr c5">
							最后一次更新： <span>${perInfo.perInfo}</span>
						</div>
						<!--end #lastChangedTime-->
						<div id="resumeScore">
							<div class="score fl">
								<canvas id="doughnutChartCanvas" height="120" width="120"></canvas>
								<div style="DISPLAY: none" class="scoreVal">
									<span>${perInfo.Completion}</span>分
								</div>
							</div>
							<div class="which fl">
								<div>工作经历最能体现自己的工作能力，且完善后才可投递简历哦！</div>
								<span rel="workExperience"><a>马上去完善</a></span>
							</div>
						</div>
						<!--end #resumeScore-->
						<div id="basicInfo" class="profile_box">
							<h2>基本信息</h2>
							<span class="c_edit"></span>
							<div class="basicShow">
								<span>${perInfo.pname} | 男 | ${perInfo.education } | ${perInfo.workExperienc }<br />${perInfo.phone } | ${perInfo.email } <br /></span>
								<div class="m_portrait">
									<div></div>
									<img alt="xxx" src="${pageContext.request.contextPath }/resources/images/default_headpic.png" width="120" height="120" />
								</div>
							</div>
							<!--end .basicShow-->
							<div class="basicEdit dn">
								<form id="profileForm" action="${pageContext.request.contextPath }/user/saveResumesInfo" method="post">
									<table>
										<tbody>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input id="name" type="text" name="name" placeholder="姓名" value="${perInfo.pname}"/></td>
												<td valign="top"></td>
												<td>
													<ul class="profile_radio clearfix reset">
														<li class="current">
															男<em></em> 
															<input value="男" checked type="radio" name="gender" />
														</li>
														<li>
															女<em></em> 
															<input value="女" type="radio" name="gender" />
														</li>
													</ul>
												</td>
											</tr>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input id="topDegree" value="${perInfo.education }" type="hidden" name="topDegree" /> 
												<input id="select_topDegree" class="profile_select_190 profile_select_normal" value="本科" type="button" />
													<div id="box_topDegree" class="boxUpDown boxUpDown_190 dn">
														<ul>
															<li>大专</li>
															<li>本科</li>
															<li>硕士</li>
															<li>博士</li>
															<li>其他</li>
														</ul>
													</div></td>
												<td valign="top"><span class="redstar">*</span></td>
												<td>
													<input id="workyear" type="hidden" name="workyear" value="${perInfo.workExperienc }"/> 
													<input id="select_workyear" class="profile_select_190 profile_select_normal" type="button" />
													<div id="box_workyear" class="boxUpDown boxUpDown_190 dn">
														<ul>
															<li>应届毕业生</li>
															<li>1年</li>
															<li>2年</li>
															<li>3年</li>
															<li>4年</li>
															<li>5年</li>
															<li>6年</li>
															<li>7年</li>
															<li>8年</li>
															<li>9年</li>
															<li>10年</li>
															<li>10年以上</li>
														</ul>
													</div>
												</td>
											</tr>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td colspan="3"><input id="tel" value="${perInfo.phone }" type="text" name="tel" placeholder="手机号码" /></td>
											</tr>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td colspan="3"><input id="email" value="${perInfo.email }" type="text" name="email" placeholder="请输入接收面试通知的常用邮箱" /></td>
											</tr>
											<tr>
												<td valign="top"></td>
												<td colspan="3">
													<input id="currentState" type="hidden" name="currentState"> 
													<input id="select_currentState" class="profile_select_410 profile_select_normal" value="目前状态" type="button" />
													<div id="box_currentState" class="boxUpDown boxUpDown_410 dn">
														<ul>
															<li>我目前已离职，可快速到岗</li>
															<li>我目前正在职，正考虑换个新环境</li>
															<li>我暂时不想找工作</li>
															<li>我是应届毕业生</li>
														</ul>
													</div>
												</td>
											</tr>
											<tr>
												<td></td>
												<td colspan="3">
													<input class="btn_profile_save" value="保 存" type="submit" /> 
													<a class="btn_profile_cancel" href="javascript:;">取 消</a>
												</td>
											</tr>
										</tbody>
									</table>
								</form>
								<!--end #profileForm-->
								<div class="new_portrait">
									<div id="portraitNo" class="portrait_upload">
										<span>上传自己的头像</span>
									</div>
									<div id="portraitShow" class="portraitShow dn">
										<img src="" width="120" height="120" /> <span>更换头像</span>
									</div>
									<input id="headPic" class="myfiles" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="img_check(this,'http://www.lagou.com/resume/uploadPhoto.json','headPic');" type="file" name="headPic" />
									<!-- <input type="hidden" id="headPicHidden" /> -->
									<em>尺寸：120*120px <br />大小：小于5M
									</em> <span style="DISPLAY: none" id="headPic_error" class="error"></span>
								</div>
								<!--end .new_portrait-->
							</div>
							<!--end .basicEdit-->
							<input id="pname" value="${perInfo.pname }" type="hidden" /> 
							<input id="info" name="info" value="info" type="hidden" /> 
							<input id="genderVal" name="genderVal" value="男" type="hidden" /> 
							<input id="topDegreeVal" name="topDegreeVal" value="${perInfo.education }" type="hidden" /> 
							<input id="workyearVal" name="workyearVal" value="${perInfo.workExperienc }" type="hidden" /> 
							<input id="currentStateVal" name="currentStateVal" type="hidden" /> 
							<input id="emailVal" name="emailVal" value="${perInfo.email }" type="hidden" /> 
							<input id="telVal" name="telVal" value="${perInfo.phone }" type="hidden" /> 
							<input id="id" name="id" value="${perInfo.piid }" type="hidden" />
						</div>
						<!--end #basicInfo-->
						<div id="expectJob" class="profile_box">							
							<h2>期望工作</h2>
							<c:if test="${not empty resumesInfo.expectedworkingproperty or not empty resumesInfo.expectedcity or not empty resumesInfo.WEPosition or not empty resumesInfo.expectedmonthly}">
								期望城市：${resumesInfo.expectedworkingproperty}<br/>
								工作性质：${resumesInfo.expectedcity}<br/>
								期望职位：${resumesInfo.WEPosition}<br/>
								期望月薪：${resumesInfo.expectedmonthly}<br/>
							</c:if>
							<c:if test="${empty resumesInfo.expectedworkingproperty or empty resumesInfo.expectedcity or empty resumesInfo.WEPosition or empty resumesInfo.expectedmonthly}">
								<span class="c_edit dn"></span>
								<div class="expectShow dn">
									<span></span>
								</div>
								<!--end .expectShow-->
								<div class="expectEdit dn">
									<form id="expectForm">
										<table>
											<tbody>
												<tr>
													<td>
														<input id="expectCity" type="hidden" name="expectCity" /> 
														<input id="select_expectCity" class="profile_select_287 profile_select_normal" value="期望城市，如：北京" type="button" />
														<div id="box_expectCity" class="boxUpDown boxUpDown_596 dn">
															<dl>
																<dt>热门城市</dt>
																<dd>
																	<span>北京</span> <span>上海</span> <span>广州</span> <span>深圳</span> <span>成都</span> <span>杭州</span>
																</dd>
															</dl>
															<dl>
																<dt>ABCDEF</dt>
																<dd>
																	<span>北京</span> <span>长春</span> <span>成都</span> <span>重庆</span> <span>长沙</span> <span>常熟</span> <span>常州</span> <span>东莞</span> <span>大连</span> <span>东营</span> <span>佛山</span> <span>福州</span>
																</dd>
															</dl>
															<dl>
																<dt>GHIJ</dt>
																<dd>
																	<span>贵阳</span> <span>广州</span> <span>哈尔滨</span> <span>合肥</span> <span>海口</span> <span>杭州</span> <span>惠州</span> <span>金华</span> <span>济南</span> <span>嘉兴</span>
																</dd>
															</dl>
															<dl>
																<dt>KLMN</dt>
																<dd>
																	<span>昆明</span> <span>昆山</span> <span>廊坊</span> <span>丽水</span> <span>兰州</span> <span>宁波</span> <span>南昌</span> <span>南京</span> <span>南宁</span>
																</dd>
															</dl>
															<dl>
																<dt>OPQR</dt>
																<dd>
																	<span>青岛</span> <span>泉州</span>
																</dd>
															</dl>
															<dl>
																<dt>STUV</dt>
																<dd>
																	<span>上海</span> <span>石家庄</span> <span>绍兴</span> <span>沈阳</span> <span>深圳</span> <span>苏州</span> <span>天津</span> <span>太原</span> <span>台州</span>
																</dd>
															</dl>
															<dl>
																<dt>WXYZ</dt>
																<dd>
																	<span>潍坊</span> <span>武汉</span> <span>乌鲁木齐</span> <span>无锡</span> <span>温州</span> <span>西安</span> <span>厦门</span> <span>徐州</span> <span>烟台</span> <span>珠海</span> <span>镇江</span> <span>湛江</span>
																	<span>中山</span> <span>郑州</span>
																</dd>
															</dl>
														</div></td>
													<td>
														<ul class="profile_radio clearfix reset">
															<li class="current">全职<em></em> <input value="全职" checked="" type="radio" name="type" />
															</li>
															<li>兼职<em></em> <input value="兼职" type="radio" name="type" />
															</li>
															<li>实习<em></em> <input value="实习" type="radio" name="type" />
															</li>
														</ul>
													</td>
												</tr>
												<tr>
													<td><input id="expectPosition" type="text" name="expectPosition" placeholder="期望职位，如：产品经理" /></td>
													<td><input id="expectSalary" type="hidden" name="expectSalary" /> <input id="select_expectSalary" class="profile_select_287 profile_select_normal" value="期望月薪" type="button" />
														<div id="box_expectSalary" class="boxUpDown boxUpDown_287 dn">
															<ul>
																<li>2k以下</li>
																<li>2k-5k</li>
																<li>5k-10k</li>
																<li>10k-15k</li>
																<li>15k-25k</li>
																<li>25k-50k</li>
																<li>50k以上</li>
															</ul>
														</div></td>
												</tr>
												<tr>
													<td colspan="2"><input class="btn_profile_save" value="保 存" type="submit" /> <a class="btn_profile_cancel" href="javascript:;">取 消</a></td>
												</tr>
											</tbody>
										</table>
									</form>
									<!--end #expectForm-->
								</div>
								<!--end .expectEdit-->
								<div class="expectAdd pAdd">
									填写准确的期望工作能大大提高求职成功率哦… <br />快来添加期望工作吧！ <span>添加期望工作</span>
								</div>
								<!--end .expectAdd-->
								<input id="expectJobVal" type="hidden" /> <input id="expectCityVal" type="hidden" /> <input id="typeVal" type="hidden" /> <input id="expectPositionVal" type="hidden" /> <input
									id="expectSalaryVal" type="hidden" />
							</c:if>
						</div>
						<!--end #expectJob-->
						<div id="workExperience" class="profile_box">
							<h2>
								工作经历 <span>（投递简历时必填）</span>
							</h2>
							<c:if test="${not empty resumesInfo.WECompany or not empty resumesInfo.WEStartTime or not empty resumesInfo.WEEndTime}">
								公司名称：${resumesInfo.WECompany}<br/>
								开始年份：${resumesInfo.WEStartTime}<br/>
								结束年份：${resumesInfo.WEEndTime}<br/>
							</c:if>
							<c:if test="${empty resumesInfo.WECompany or empty resumesInfo.WEStartTime or empty resumesInfo.WEEndTime}">
								<span class="c_add dn"></span>
								<div class="experienceShow dn">
									<form class="experienceForm borderBtm dn">
										<table>
											<tbody>
												<tr>
													<td valign="top"><span class="redstar">*</span></td>
													<td><input class="companyName" type="text" name="companyName" placeholder="公司名称" /></td>
													<td valign="top"><span class="redstar">*</span></td>
													<td><input class="positionName" type="text" name="positionName" placeholder="职位名称，如：产品经理" /></td>
												</tr>
												<tr>
													<td valign="top"><span class="redstar">*</span></td>
													<td>
														<div class="fl">
															<input class="companyYearStart" type="hidden" name="companyYearStart" /> <input class="profile_select_139 profile_select_normal select_companyYearStart" value="开始年份" type="button" />
															<div class="box_companyYearStart boxUpDown boxUpDown_139 dn">
																<ul>
																	<li>2014</li>
																	<li>2013</li>
																	<li>2012</li>
																	<li>2011</li>
																	<li>2010</li>
																	<li>2009</li>
																	<li>2008</li>
																	<li>2007</li>
																	<li>2006</li>
																	<li>2005</li>
																	<li>2004</li>
																	<li>2003</li>
																	<li>2002</li>
																	<li>2001</li>
																	<li>2000</li>
																	<li>1999</li>
																	<li>1998</li>
																	<li>1997</li>
																	<li>1996</li>
																	<li>1995</li>
																	<li>1994</li>
																	<li>1993</li>
																	<li>1992</li>
																	<li>1991</li>
																	<li>1990</li>
																	<li>1989</li>
																	<li>1988</li>
																	<li>1987</li>
																	<li>1986</li>
																	<li>1985</li>
																	<li>1984</li>
																	<li>1983</li>
																	<li>1982</li>
																	<li>1981</li>
																	<li>1980</li>
																	<li>1979</li>
																	<li>1978</li>
																	<li>1977</li>
																	<li>1976</li>
																	<li>1975</li>
																	<li>1974</li>
																	<li>1973</li>
																	<li>1972</li>
																	<li>1971</li>
																	<li>1970</li>
																</ul>
															</div>
														</div>
														<div class="fl">
															<input class="companyMonthStart" type="hidden" name="companyMonthStart" /> <input class="profile_select_139 profile_select_normal select_companyMonthStart" value="开始月份" type="button" />
															<div class="box_companyMonthStart boxUpDown boxUpDown_139 dn">
																<ul>
																	<li>01</li>
																	<li>02</li>
																	<li>03</li>
																	<li>04</li>
																	<li>05</li>
																	<li>06</li>
																	<li>07</li>
																	<li>08</li>
																	<li>09</li>
																	<li>10</li>
																	<li>11</li>
																	<li>12</li>
																</ul>
															</div>
														</div>
														<div class="clear"></div>
													</td>
													<td valign="top"><span class="redstar">*</span></td>
													<td>
														<div class="fl">
															<input class="companyYearEnd" type="hidden" name="companyYearEnd" /> <input class="profile_select_139 profile_select_normal select_companyYearEnd" value="结束年份" type="button" />
															<div class="box_companyYearEnd  boxUpDown boxUpDown_139 dn">
																<ul>
																	<li>至今</li>
																	<li>2014</li>
																	<li>2013</li>
																	<li>2012</li>
																	<li>2011</li>
																	<li>2010</li>
																	<li>2009</li>
																	<li>2008</li>
																	<li>2007</li>
																	<li>2006</li>
																	<li>2005</li>
																	<li>2004</li>
																	<li>2003</li>
																	<li>2002</li>
																	<li>2001</li>
																	<li>2000</li>
																	<li>1999</li>
																	<li>1998</li>
																	<li>1997</li>
																	<li>1996</li>
																	<li>1995</li>
																	<li>1994</li>
																	<li>1993</li>
																	<li>1992</li>
																	<li>1991</li>
																	<li>1990</li>
																	<li>1989</li>
																	<li>1988</li>
																	<li>1987</li>
																	<li>1986</li>
																	<li>1985</li>
																	<li>1984</li>
																	<li>1983</li>
																	<li>1982</li>
																	<li>1981</li>
																	<li>1980</li>
																	<li>1979</li>
																	<li>1978</li>
																	<li>1977</li>
																	<li>1976</li>
																	<li>1975</li>
																	<li>1974</li>
																	<li>1973</li>
																	<li>1972</li>
																	<li>1971</li>
																	<li>1970</li>
																</ul>
															</div>
														</div>
														<div class="fl">
															<input class="companyMonthEnd" type="hidden" name="companyMonthEnd" /> <input class="profile_select_139 profile_select_normal select_companyMonthEnd" value="结束月份" type="button" />
															<div class="box_companyMonthEnd boxUpDown boxUpDown_139 dn">
																<ul>
																	<li>01</li>
																	<li>02</li>
																	<li>03</li>
																	<li>04</li>
																	<li>05</li>
																	<li>06</li>
																	<li>07</li>
																	<li>08</li>
																	<li>09</li>
																	<li>10</li>
																	<li>11</li>
																	<li>12</li>
																</ul>
															</div>
														</div>
														<div class="clear"></div>
													</td>
												</tr>
												<tr>
													<td></td>
													<td colspan="3"><input class="btn_profile_save" value="保 存" type="submit" /> <a class="btn_profile_cancel" href="javascript:;">取 消</a></td>
												</tr>
											</tbody>
										</table>
										<input class="expId" type="hidden" />
									</form>
									<!--end .experienceForm-->
									<ul class="wlist clearfix"></ul>
								</div>
							</c:if>
							<!--end .experienceShow-->
							<div class="experienceEdit dn">
								<form class="experienceForm" action="${pageContext.request.contextPath }/user/saveResumesInfo" method="post">
									<table>
										<tbody>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input class="companyName" type="text" name="companyName" placeholder="公司名称" /></td>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input class="positionName" type="text" name="positionName" placeholder="职位名称，如：产品经理" /></td>
											</tr>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td>
													<div class="fl">
														<input class="companyYearStart" type="hidden" name="companyYearStart" /> <input class="profile_select_139 profile_select_normal select_companyYearStart" value="开始年份" type="button" />
														<div class="box_companyYearStart boxUpDown boxUpDown_139 dn">
															<ul>
																<li>2014</li>
																<li>2013</li>
																<li>2012</li>
																<li>2011</li>
																<li>2010</li>
																<li>2009</li>
																<li>2008</li>
																<li>2007</li>
																<li>2006</li>
																<li>2005</li>
																<li>2004</li>
																<li>2003</li>
																<li>2002</li>
																<li>2001</li>
																<li>2000</li>
																<li>1999</li>
																<li>1998</li>
																<li>1997</li>
																<li>1996</li>
																<li>1995</li>
																<li>1994</li>
																<li>1993</li>
																<li>1992</li>
																<li>1991</li>
																<li>1990</li>
																<li>1989</li>
																<li>1988</li>
																<li>1987</li>
																<li>1986</li>
																<li>1985</li>
																<li>1984</li>
																<li>1983</li>
																<li>1982</li>
																<li>1981</li>
																<li>1980</li>
																<li>1979</li>
																<li>1978</li>
																<li>1977</li>
																<li>1976</li>
																<li>1975</li>
																<li>1974</li>
																<li>1973</li>
																<li>1972</li>
																<li>1971</li>
																<li>1970</li>
															</ul>
														</div>
													</div>
													<div class="fl">
														<input class="companyMonthStart" type="hidden" name="companyMonthStart" /> <input class="profile_select_139 profile_select_normal select_companyMonthStart" value="开始月份" type="button" />
														<div class="box_companyMonthStart boxUpDown boxUpDown_139 dn">
															<ul>
																<li>01</li>
																<li>02</li>
																<li>03</li>
																<li>04</li>
																<li>05</li>
																<li>06</li>
																<li>07</li>
																<li>08</li>
																<li>09</li>
																<li>10</li>
																<li>11</li>
																<li>12</li>
															</ul>
														</div>
													</div>
													<div class="clear"></div>
												</td>
												<td valign="top"><span class="redstar">*</span></td>
												<td>
													<div class="fl">
														<input class="companyYearEnd" type="hidden" name="companyYearEnd" /> <input class="profile_select_139 profile_select_normal select_companyYearEnd" value="结束年份" type="button" />
														<div class="box_companyYearEnd  boxUpDown boxUpDown_139 dn">
															<ul>
																<li>至今</li>
																<li>2014</li>
																<li>2013</li>
																<li>2012</li>
																<li>2011</li>
																<li>2010</li>
																<li>2009</li>
																<li>2008</li>
																<li>2007</li>
																<li>2006</li>
																<li>2005</li>
																<li>2004</li>
																<li>2003</li>
																<li>2002</li>
																<li>2001</li>
																<li>2000</li>
																<li>1999</li>
																<li>1998</li>
																<li>1997</li>
																<li>1996</li>
																<li>1995</li>
																<li>1994</li>
																<li>1993</li>
																<li>1992</li>
																<li>1991</li>
																<li>1990</li>
																<li>1989</li>
																<li>1988</li>
																<li>1987</li>
																<li>1986</li>
																<li>1985</li>
																<li>1984</li>
																<li>1983</li>
																<li>1982</li>
																<li>1981</li>
																<li>1980</li>
																<li>1979</li>
																<li>1978</li>
																<li>1977</li>
																<li>1976</li>
																<li>1975</li>
																<li>1974</li>
																<li>1973</li>
																<li>1972</li>
																<li>1971</li>
																<li>1970</li>
															</ul>
														</div>
													</div>
													<div class="fl">
														<input class="companyMonthEnd" type="hidden" name="companyMonthEnd" /> <input class="profile_select_139 profile_select_normal select_companyMonthEnd" value="结束月份" type="button" />
														<div class="box_companyMonthEnd boxUpDown boxUpDown_139 dn">
															<ul>
																<li>01</li>
																<li>02</li>
																<li>03</li>
																<li>04</li>
																<li>05</li>
																<li>06</li>
																<li>07</li>
																<li>08</li>
																<li>09</li>
																<li>10</li>
																<li>11</li>
																<li>12</li>
															</ul>
														</div>
													</div>
													<div class="clear"></div>
												</td>
											</tr>
											<tr>
												<td></td>
												<td colspan="3"><input class="btn_profile_save" value="保 存" type="submit" /> <a class="btn_profile_cancel" href="javascript:;">取 消</a></td>
											</tr>
										</tbody>
									</table>
									<input class="expId" type="hidden" />
								</form>
								<!--end .experienceForm-->
							</div>
							<!--end .experienceEdit-->
							<c:if test="${empty resumesInfo.WECompany or empty resumesInfo.WEStartTime or empty resumesInfo.WEEndTime}">
								<div class="experienceAdd pAdd">
									工作经历最能体现自己的工作能力， <br />且完善后才可投递简历哦！ <span>添加工作经历</span>
								</div>
							</c:if>
							<!--end .experienceAdd-->
						</div>
						<!--end #workExperience-->
						<div id="projectExperience" class="profile_box">
							<h2>项目经验</h2>							
							<c:if test="${not empty resumesInfo.PEProject or not empty resumesInfo.PEPost or not empty resumesInfo.PEProjectStartTime or not empty resumesInfo.PEProjectEndTime or not empty resumesInfo.PEProjectDescription}">
								项目名称：${resumesInfo.PEProject}<br/>
								项目职务：${resumesInfo.PEPost}<br/>
								项目开始时间：${resumesInfo.PEProjectStartTime}<br/>
								项目结束时间：${resumesInfo.PEProjectEndTime}<br/>
								项目描述：${resumesInfo.PEProjectDescription}<br/>
							</c:if>
							<c:if test="${empty resumesInfo.PEProject or empty resumesInfo.PEPost or empty resumesInfo.PEProjectStartTime or empty resumesInfo.PEProjectEndTime or empty resumesInfo.PEProjectDescription}">
								<span class="c_add dn"></span>
								<div class="projectShow dn">
									<ul class="plist clearfix"></ul>
								</div>
								<!--end .projectShow-->
								<div class="projectEdit dn">
									<form class="projectForm" action="${pageContext.request.contextPath }/user/saveResumesInfo" method="post">
										<table>
											<tbody>
												<tr>
													<td valign="top"><span class="redstar">*</span></td>
													<td><input class="projectName" type="text" name="projectName" placeholder="项目名称" /></td>
													<td valign="top"><span class="redstar">*</span></td>
													<td><input class="thePost" type="text" name="thePost" placeholder="项目职务，如：产品负责人" /></td>
												</tr>
												<tr>
													<td valign="top"><span class="redstar">*</span></td>
													<td>
														<div class="fl">
															<input class="projectYearStart" type="hidden" name="projectYearStart" /> <input class="profile_select_139 profile_select_normal select_projectYearStart" value="开始年份" type="button" />
															<div class="box_projectYearStart  boxUpDown boxUpDown_139 dn">
																<ul>
																	<li>2014</li>
																	<li>2013</li>
																	<li>2012</li>
																	<li>2011</li>
																	<li>2010</li>
																	<li>2009</li>
																	<li>2008</li>
																	<li>2007</li>
																	<li>2006</li>
																	<li>2005</li>
																	<li>2004</li>
																	<li>2003</li>
																	<li>2002</li>
																	<li>2001</li>
																	<li>2000</li>
																	<li>1999</li>
																	<li>1998</li>
																	<li>1997</li>
																	<li>1996</li>
																	<li>1995</li>
																	<li>1994</li>
																	<li>1993</li>
																	<li>1992</li>
																	<li>1991</li>
																	<li>1990</li>
																	<li>1989</li>
																	<li>1988</li>
																	<li>1987</li>
																	<li>1986</li>
																	<li>1985</li>
																	<li>1984</li>
																	<li>1983</li>
																	<li>1982</li>
																	<li>1981</li>
																	<li>1980</li>
																	<li>1979</li>
																	<li>1978</li>
																	<li>1977</li>
																	<li>1976</li>
																	<li>1975</li>
																	<li>1974</li>
																	<li>1973</li>
																	<li>1972</li>
																	<li>1971</li>
																	<li>1970</li>
																</ul>
															</div>
														</div>
														<div class="fl">
															<input class="projectMonthStart" type="hidden" name="projectMonthStart" /> <input class="profile_select_139 profile_select_normal select_projectMonthStart" value="开始月份" type="button" />
															<div class="box_projectMonthStart boxUpDown boxUpDown_139 dn">
																<ul>
																	<li>01</li>
																	<li>02</li>
																	<li>03</li>
																	<li>04</li>
																	<li>05</li>
																	<li>06</li>
																	<li>07</li>
																	<li>08</li>
																	<li>09</li>
																	<li>10</li>
																	<li>11</li>
																	<li>12</li>
																</ul>
															</div>
														</div>
														<div class="clear"></div>
													</td>
													<td valign="top"><span class="redstar">*</span></td>
													<td>
														<div class="fl">
															<input class="projectYearEnd" type="hidden" name="projectYearEnd" /> <input class="profile_select_139 profile_select_normal select_projectYearEnd" value="结束年份" type="button" />
															<div class="box_projectYearEnd  boxUpDown boxUpDown_139 dn">
																<ul>
																	<li>至今</li>
																	<li>2014</li>
																	<li>2013</li>
																	<li>2012</li>
																	<li>2011</li>
																	<li>2010</li>
																	<li>2009</li>
																	<li>2008</li>
																	<li>2007</li>
																	<li>2006</li>
																	<li>2005</li>
																	<li>2004</li>
																	<li>2003</li>
																	<li>2002</li>
																	<li>2001</li>
																	<li>2000</li>
																	<li>1999</li>
																	<li>1998</li>
																	<li>1997</li>
																	<li>1996</li>
																	<li>1995</li>
																	<li>1994</li>
																	<li>1993</li>
																	<li>1992</li>
																	<li>1991</li>
																	<li>1990</li>
																	<li>1989</li>
																	<li>1988</li>
																	<li>1987</li>
																	<li>1986</li>
																	<li>1985</li>
																	<li>1984</li>
																	<li>1983</li>
																	<li>1982</li>
																	<li>1981</li>
																	<li>1980</li>
																	<li>1979</li>
																	<li>1978</li>
																	<li>1977</li>
																	<li>1976</li>
																	<li>1975</li>
																	<li>1974</li>
																	<li>1973</li>
																	<li>1972</li>
																	<li>1971</li>
																	<li>1970</li>
																</ul>
															</div>
														</div>
														<div class="fl">
															<input class="projectMonthEnd" type="hidden" name="projectMonthEnd" /> <input class="profile_select_139 profile_select_normal select_projectMonthEnd" value="结束月份" type="button" />
															<div class="box_projectMonthEnd boxUpDown boxUpDown_139 dn">
																<ul>
																	<li>01</li>
																	<li>02</li>
																	<li>03</li>
																	<li>04</li>
																	<li>05</li>
																	<li>06</li>
																	<li>07</li>
																	<li>08</li>
																	<li>09</li>
																	<li>10</li>
																	<li>11</li>
																	<li>12</li>
																</ul>
															</div>
														</div>
														<div class="clear"></div>
													</td>
												</tr>
												<tr>
													<td valign="top"></td>
													<td colspan="3"><textarea class="projectDescription s_textarea" name="projectDescription" placeholder="项目描述"></textarea>
														<div class="word_count">
															你还可以输入 <span>500</span> 字
														</div></td>
												</tr>
												<!-- <tr>
																<td colspan="2">
																	<textarea placeholder="职责描述" name="ResponsDescription" class="ResponsDescription s_textarea"></textarea>
																	<div class="word_count">你还可以输入 <span>500</span> 字</div>
																</td>
								            				</tr> -->
												<tr>
													<td valign="top"></td>
													<td colspan="3"><input class="btn_profile_save" value="保 存" type="submit" /> <a class="btn_profile_cancel" href="javascript:;">取 消</a></td>
												</tr>
											</tbody>
										</table>
										<input class="projectId" type="hidden" />
									</form>
									<!--end .projectForm-->
								</div>
								<!--end .projectEdit-->
								<div class="projectAdd pAdd">
									项目经验是用人单位衡量人才能力的重要指标哦！ <br />来说说让你难忘的项目吧！ <span>添加项目经验</span>
								</div>
								<!--end .projectAdd-->
							</c:if>
						</div>
						<!--end #projectExperience-->
						<div id="educationalBackground" class="profile_box">
							<h2>
								教育背景<span>（投递简历时必填）</span>
							</h2>
							<c:if test="${not empty resumesInfo.EBSchool or not empty resumesInfo.EBEducation or not empty resumesInfo.EBMajor or not empty resumesInfo.EBStartTime or not empty resumesInfo.EBEndTime}">
								学校名称：${resumesInfo.EBSchool}<br/>
								学历：${resumesInfo.EBEducation}<br/>
								专业名称：${resumesInfo.EBMajor}<br/>
								开始年份：${resumesInfo.EBStartTime}<br/>
								结束年份：${resumesInfo.EBEndTime}<br/>
							</c:if>
							<c:if test="${empty resumesInfo.EBSchool or empty resumesInfo.EBEducation or empty resumesInfo.EBMajor or empty resumesInfo.EBStartTime or empty resumesInfo.EBEndTime}">
							
							<span class="c_add dn"></span>
							<div class="educationalShow dn">
								<form class="educationalForm borderBtm dn" action="${pageContext.request.contextPath }/user/saveResumesInfo" method="post">
									<table>
										<tbody>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input class="schoolName" type="text" name="schoolName" placeholder="学校名称" /></td>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input class="degree" type="hidden" name="degree" /> <input class="profile_select_287 profile_select_normal select_degree" value="学历" type="button" />
													<div class="box_degree boxUpDown boxUpDown_287 dn">
														<ul>
															<li>大专</li>
															<li>本科</li>
															<li>硕士</li>
															<li>博士</li>
															<li>其他</li>
														</ul>
													</div></td>
											</tr>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input class="professionalName" type="text" name="professionalName" placeholder="专业" /></td>
												<td valign="top"><span class="redstar">*</span></td>
												<td>
													<div class="fl">
														<input class="schoolYearStart" type="hidden" name="schoolYearStart" /> <input class="profile_select_139 profile_select_normal select_schoolYearStart" value="开始年份" type="button" />
														<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn">
															<ul>
																<li>2014</li>
																<li>2013</li>
																<li>2012</li>
																<li>2011</li>
																<li>2010</li>
																<li>2009</li>
																<li>2008</li>
																<li>2007</li>
																<li>2006</li>
																<li>2005</li>
																<li>2004</li>
																<li>2003</li>
																<li>2002</li>
																<li>2001</li>
																<li>2000</li>
																<li>1999</li>
																<li>1998</li>
																<li>1997</li>
																<li>1996</li>
																<li>1995</li>
																<li>1994</li>
																<li>1993</li>
																<li>1992</li>
																<li>1991</li>
																<li>1990</li>
																<li>1989</li>
																<li>1988</li>
																<li>1987</li>
																<li>1986</li>
																<li>1985</li>
																<li>1984</li>
																<li>1983</li>
																<li>1982</li>
																<li>1981</li>
																<li>1980</li>
																<li>1979</li>
																<li>1978</li>
																<li>1977</li>
																<li>1976</li>
																<li>1975</li>
																<li>1974</li>
																<li>1973</li>
																<li>1972</li>
																<li>1971</li>
																<li>1970</li>
															</ul>
														</div>
													</div>
													<div class="fl">
														<input class="schoolYearEnd" type="hidden" name="schoolYearEnd" /> <input class="profile_select_139 profile_select_normal select_schoolYearEnd" value="结束年份" type="button" />
														<div class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn">
															<ul>
																<li>2021</li>
																<li>2020</li>
																<li>2019</li>
																<li>2018</li>
																<li>2017</li>
																<li>2016</li>
																<li>2015</li>
																<li>2014</li>
																<li>2013</li>
																<li>2012</li>
																<li>2011</li>
																<li>2010</li>
																<li>2009</li>
																<li>2008</li>
																<li>2007</li>
																<li>2006</li>
																<li>2005</li>
																<li>2004</li>
																<li>2003</li>
																<li>2002</li>
																<li>2001</li>
																<li>2000</li>
																<li>1999</li>
																<li>1998</li>
																<li>1997</li>
																<li>1996</li>
																<li>1995</li>
																<li>1994</li>
																<li>1993</li>
																<li>1992</li>
																<li>1991</li>
																<li>1990</li>
																<li>1989</li>
																<li>1988</li>
																<li>1987</li>
																<li>1986</li>
																<li>1985</li>
																<li>1984</li>
																<li>1983</li>
																<li>1982</li>
																<li>1981</li>
																<li>1980</li>
																<li>1979</li>
																<li>1978</li>
																<li>1977</li>
																<li>1976</li>
																<li>1975</li>
																<li>1974</li>
																<li>1973</li>
																<li>1972</li>
																<li>1971</li>
																<li>1970</li>
															</ul>
														</div>
													</div>
													<div class="clear"></div>
												</td>
											</tr>
											<tr>
												<td></td>
												<td colspan="3"><input class="btn_profile_save" value="保 存" type="submit" /> <a class="btn_profile_cancel" href="javascript:;">取 消</a></td>
											</tr>
										</tbody>
									</table>
									<input class="eduId" type="hidden" />
								</form>
								<!--end .educationalForm-->
								<ul class="elist clearfix"></ul>
							</div>
							</c:if>
							<!--end .educationalShow-->
							<div class="educationalEdit dn">
								<form class="educationalForm" action="${pageContext.request.contextPath }/user/saveResumesInfo" method="post">
									<table>
										<tbody>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input class="schoolName" type="text" name="schoolName" placeholder="学校名称" /></td>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input class="degree" type="hidden" name="degree" /> <input class="profile_select_287 profile_select_normal select_degree" value="学历" type="button" />
													<div class="box_degree boxUpDown boxUpDown_287 dn">
														<ul>
															<li>大专</li>
															<li>本科</li>
															<li>硕士</li>
															<li>博士</li>
															<li>其他</li>
														</ul>
													</div></td>
											</tr>
											<tr>
												<td valign="top"><span class="redstar">*</span></td>
												<td><input class="professionalName" type="text" name="professionalName" placeholder="专业名称" /></td>
												<td valign="top"><span class="redstar">*</span></td>
												<td>
													<div class="fl">
														<input class="schoolYearStart" type="hidden" name="schoolYearStart" /> <input class="profile_select_139 profile_select_normal select_schoolYearStart" value="开始年份" type="button" />
														<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn">
															<ul>
																<li>2014</li>
																<li>2013</li>
																<li>2012</li>
																<li>2011</li>
																<li>2010</li>
																<li>2009</li>
																<li>2008</li>
																<li>2007</li>
																<li>2006</li>
																<li>2005</li>
																<li>2004</li>
																<li>2003</li>
																<li>2002</li>
																<li>2001</li>
																<li>2000</li>
																<li>1999</li>
																<li>1998</li>
																<li>1997</li>
																<li>1996</li>
																<li>1995</li>
																<li>1994</li>
																<li>1993</li>
																<li>1992</li>
																<li>1991</li>
																<li>1990</li>
																<li>1989</li>
																<li>1988</li>
																<li>1987</li>
																<li>1986</li>
																<li>1985</li>
																<li>1984</li>
																<li>1983</li>
																<li>1982</li>
																<li>1981</li>
																<li>1980</li>
																<li>1979</li>
																<li>1978</li>
																<li>1977</li>
																<li>1976</li>
																<li>1975</li>
																<li>1974</li>
																<li>1973</li>
																<li>1972</li>
																<li>1971</li>
																<li>1970</li>
															</ul>
														</div>
													</div>
													<div class="fl">
														<input class="schoolYearEnd" type="hidden" name="schoolYearEnd" /> <input class="profile_select_139 profile_select_normal select_schoolYearEnd" value="结束年份" type="button" />
														<div class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn">
															<ul>
																<li>2014</li>
																<li>2013</li>
																<li>2012</li>
																<li>2011</li>
																<li>2010</li>
																<li>2009</li>
																<li>2008</li>
																<li>2007</li>
																<li>2006</li>
																<li>2005</li>
																<li>2004</li>
																<li>2003</li>
																<li>2002</li>
																<li>2001</li>
																<li>2000</li>
																<li>1999</li>
																<li>1998</li>
																<li>1997</li>
																<li>1996</li>
																<li>1995</li>
																<li>1994</li>
																<li>1993</li>
																<li>1992</li>
																<li>1991</li>
																<li>1990</li>
																<li>1989</li>
																<li>1988</li>
																<li>1987</li>
																<li>1986</li>
																<li>1985</li>
																<li>1984</li>
																<li>1983</li>
																<li>1982</li>
																<li>1981</li>
																<li>1980</li>
																<li>1979</li>
																<li>1978</li>
																<li>1977</li>
																<li>1976</li>
																<li>1975</li>
																<li>1974</li>
																<li>1973</li>
																<li>1972</li>
																<li>1971</li>
																<li>1970</li>
															</ul>
														</div>
													</div>
													<div class="clear"></div>
												</td>
											</tr>
											<tr>
												<td></td>
												<td colspan="3"><input class="btn_profile_save" value="保 存" type="submit" /> <a class="btn_profile_cancel" href="javascript:;">取 消</a></td>
											</tr>
										</tbody>
									</table>
									<input class="eduId" type="hidden" />
								</form>
								<!--end .educationalForm-->
							</div>
							<c:if test="${empty resumesInfo.EBSchool or empty resumesInfo.EBEducation or empty resumesInfo.EBMajor or empty resumesInfo.EBStartTime or empty resumesInfo.EBEndTime}">
								<!--end .educationalEdit-->
								<div class="educationalAdd pAdd">
									教育背景可以充分体现你的学习和专业能力， <br />且完善后才可投递简历哦！ <span>添加教育经历</span>
								</div>
							</c:if>
							<!--end .educationalAdd-->
						</div>
						<!--end #educationalBackground-->
						<div id="selfDescription" class="profile_box">
							<h2>自我描述</h2>
							<c:if test="${not empty resumesInfo.SelfDescription}">
								${resumesInfo.SelfDescription}
							</c:if>
							<c:if test="${empty resumesInfo.SelfDescription}">
								<span class="c_edit dn"></span>
								<div class="descriptionShow dn"></div>
								<!--end .descriptionShow-->
								<div class="descriptionEdit dn">
									<form class="descriptionForm">
										<table>
											<tbody>
												<tr>
													<td colspan="2"><textarea class="selfDescription s_textarea" name="selfDescription" placeholder="请输入自我描述"></textarea>
														<div class="word_count">
															你还可以输入 <span>500</span> 字
														</div></td>
												</tr>
												<tr>
													<td colspan="2"><input class="btn_profile_save" value="保 存" type="submit" /> <a class="btn_profile_cancel" href="javascript:;">取 消</a></td>
												</tr>
											</tbody>
										</table>
									</form>
									<!--end .descriptionForm-->
								</div>
								<!--end .descriptionEdit-->
								<div class="descriptionAdd pAdd">
									描述你的性格、爱好以及吸引人的经历等， <br />让企业了解多元化的你！ <span>添加自我描述</span>
								</div>
								<!--end .descriptionAdd-->
							</c:if>
						</div>
						<!--end #selfDescription-->
						<div id="worksShow" class="profile_box">
							<h2>作品展示</h2>
							<c:if test="${not empty resumesInfo.WorksURL or not empty resumesInfo.WorkSexplain}">
								作品链接：${resumesInfo.WorksURL}<br/>
								展示作品：${resumesInfo.WorkSexplain}<br/>
							</c:if>
							<c:if test="${empty resumesInfo.WorksURL or empty resumesInfo.WorkSexplain}">
								<span class="c_add dn"></span>
								<div class="workShow dn">
									<ul class="slist clearfix"></ul>
								</div>
								
								<!--end .workShow-->
								<div class="workEdit dn">
									<form class="workForm">
										<table>
											<tbody>
												<tr>
													<td><input class="workLink" type="text" name="workLink" placeholder="作品链接" /></td>
												</tr>
												<tr>
													<td><textarea class="workDescription s_textarea" name="workDescription" placeholder="作品说明" maxlength="100"></textarea>
														<div class="word_count">
															你还可以输入 <span>100</span> 字
														</div></td>
												</tr>
												<tr>
													<td><input class="btn_profile_save" value="保 存" type="submit" /> <a class="btn_profile_cancel" href="javascript:;">取 消</a></td>
												</tr>
											</tbody>
										</table>
										<input class="showId" type="hidden" />
									</form>
									<!--end .workForm-->
								</div>
							</c:if>
							<!--end .workEdit-->
							<c:if test="${empty resumesInfo.WorksURL or empty resumesInfo.WorkSexplain}">
								<div class="workAdd pAdd">
									好作品会说话！ <br />快来秀出你的作品打动企业吧！ <span>添加作品展示</span>
								</div>
							</c:if>
							<!--end .workAdd-->
						</div>
						<!--end #worksShow-->
						<input id="resumeId" value="${resumesInfo.rid}" type="hidden" />
						
					</div>
					
					<!--end .content_l-->
					<div class="content_r">
						<div id="myInfo" class="mycenterR">
							<h2>我的信息</h2>
							<a href="http://www.lagou.com/mycenter/collections.html" target="_blank">我收藏的职位</a> <br /> <a href="${pageContext.request.contextPath }/user/getSubscription" target="_blank">我订阅的职位</a>
						</div>
						<!--end #myInfo-->
						<div id="myResume" class="mycenterR">
							<h2>
								我的附件简历 <a class="inline" title="上传附件简历" href="http://www.lagou.com/resume/myresume.html?resubmitToken=534a2d83a0234abda7e2edd23f9eb226#uploadFile">上传简历</a>
							</h2>
							<div class="resumeUploadDiv">暂无附件简历</div>
						</div>
						<!--end #myResume-->
						<div id="resumeSet" class="mycenterR">
							<h2>
								投递简历设置 <span>修改设置</span>
							</h2>
							<!-- -1 (0=附件， 1=在线， 其他=未设置) -->
							<div class="noSet set0 dn">
								默认使用 <span>附件简历</span>进行投递
							</div>
							<div class="noSet set1 dn">
								默认使用 <span>在线简历</span>进行投递
							</div>
							<div class="noSet">暂未设置默认投递简历</div>
							<input class="defaultResume" value="-1" type="hidden" />
							<form id="resumeSetForm" class="dn">
								<label><input class="resume1" value="1" type="radio" name="resume" />默认使用<span>在线简历</span>进行投递</label> <label><input class="resume0" value="0" type="radio" name="resume" />默认使用<span>附件简历</span>进行投递</label>
								<span class="setTip error"></span>
								<div class="resumeTip">设置后投递简历时将不再提醒</div>
								<input class="btn_profile_save" value="保 存" type="submit" /> 
								<a class="btn_profile_cancel" href="javascript:;">取 消</a>
							</form>
						</div>
						<!--end #resumeSet-->
						<div id="myShare" class="mycenterR">
							<h2>当前每日投递量：10个</h2>
							<a href="javascript:;" target="_blank">邀请好友，提升投递量</a>
						</div>
						<!--end #myShare-->
						<div class="greybg qrcode mt20">
							<img alt="掘金微信公众号二维码" src="${pageContext.request.contextPath }/resources/images/qr_resume.png" width="242" height="242" /> <span class="c7">微信扫一扫，轻松找工作</span>
						</div>
					</div>
					<!--end .content_r-->
				</div>
				<input id="userid" value="${UsersInfo.u_id}" type="hidden" name="userid" />
				<!--弹窗lightbox ----------------------------------------->
				<div style="DISPLAY: none">
					<!-- 上传简历 -->
					<div id="uploadFile" class="popup">
						<table width="100%">
							<tbody>
								<tr>
									<td align="middle">
										<form>
											<a class="btn_addPic" href="javascript:void(0);"><span>选择上传文件</span> <input id="resumeUpload" class="filePrew" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" tabindex="3"
												onchange="file_check(this,'http://www.lagou.com/nearBy/updateMyResume.json','resumeUpload')" size="3" type="file" name="newResume" /> </a>
										</form>
									</td>
								</tr>
								<tr>
									<td align="left">支持word、pdf、ppt、txt、wps格式文件<br />文件大小需小于10M
									</td>
								</tr>
								<tr>
									<td style="COLOR: #dd4a38; PADDING-TOP: 10px" align="left">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
								</tr>
								<tr>
									<td align="middle"><img style="VISIBILITY: hidden" id="loadingImg" alt="loading" src="${pageContext.request.contextPath }/resources/js/jianli_files/loading.gif" width="55" height="16" /></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--/#uploadFile-->
					<!-- 简历上传成功 -->
					<div id="uploadFileSuccess" class="popup">
						<h4>简历上传成功！</h4>
						<table width="100%">
							<tbody>
								<tr>
									<td align="middle">
										<p>你可以将简历投给你中意的公司了。</p>
									</td>
								</tr>
								<tr>
									<td align="middle"><a class="btn_s" href="javascript:;">确&nbsp;定</a></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--/#uploadFileSuccess-->
					<!-- 没有简历请上传 -->
					<div id="deliverResumesNo" class="popup">
						<table width="100%">
							<tbody>
								<tr>
									<td align="middle">
										<p class="font_16">你在掘金还没有简历，请先上传一份</p>
									</td>
								</tr>
								<tr>
									<td align="middle">
										<form>
											<a class="btn_addPic" href="javascript:void(0);"><span>选择上传文件</span> <input id="resumeUpload1" class="filePrew" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M"
												onchange="file_check(this,'http://www.lagou.com/nearBy/updateMyResume.json','resumeUpload1')" size="3" type="file" name="newResume" /> </a>
										</form>
									</td>
								</tr>
								<tr>
									<td align="middle">支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--/#deliverResumesNo-->
					<!-- 上传附件简历操作说明-重新上传 -->
					<div id="fileResumeUpload" class="popup">
						<table width="100%">
							<tbody>
								<tr>
									<td>
										<div class="f18 mb10">请上传标准格式的word简历</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="f16">
											操作说明： <br />打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
										</div>
									</td>
								</tr>
								<tr>
									<td align="middle"><a class="inline btn" title="上传附件简历" href="http://www.lagou.com/resume/myresume.html?resubmitToken=534a2d83a0234abda7e2edd23f9eb226#uploadFile">重新上传</a></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--/#fileResumeUpload-->
					<!-- 上传附件简历操作说明-重新上传 -->
					<div id="fileResumeUploadSize" class="popup">
						<table width="100%">
							<tbody>
								<tr>
									<td>
										<div class="f18 mb10">上传文件大小超出限制</div>
									</td>
								</tr>
								<tr>
									<td>
										<div class="f16">
											提示： <br />单个附件不能超过10M，请重新选择附件简历！
										</div>
									</td>
								</tr>
								<tr>
									<td align="middle"><a class="inline btn" title="上传附件简历" href="http://www.lagou.com/resume/myresume.html?resubmitToken=534a2d83a0234abda7e2edd23f9eb226#uploadFile">重新上传</a></td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--/#deliverResumeConfirm-->
				</div>
				<!-- end ----------------------------------------->
				<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/Chart.min.js"></script>
				<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/profile.min.js"></script>
				<!-- <div id="profileOverlay"></div> -->
				<div id="qr_cloud_resume" class="dn">
					<div class="cloud">
						<img src="" width="134" height="134" /> <a class="close" href="javascript:;"></a>
					</div>
				</div>
			</div>
		</div>
		<DIV class=clear></DIV>
		<INPUT id=resubmitToken value=713c238233e24dd7b3b4c4400a8ef0bf type=hidden>
		<A id=backtop title=回到顶部 rel=nofollow></A>
		<!-- end #container -->
		<!-- end #body -->
		<DIV id=footer>
			<DIV class=wrapper>
				<A href="http://www.lagou.com/about.html" rel=nofollow target=_blank>联系我们</A> <A href="http://www.lagou.com/af/zhaopin.html" target=_blank>互联网公司导航</A> <A href="http://e.weibo.com/lagou720"
					rel=nofollow target=_blank>掘金微博</A> <A class=footer_qr href="javascript:void(0)" rel=nofollow>掘金微信<I></I></A>
				<DIV class=copyright>
					©2013-2014 Lagou <A href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target=_blank>京ICP备14023790号-2</A>
				</DIV>
			</DIV>
		</DIV>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/core.min.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/popup.min.js"></SCRIPT>
	</body>
</html>