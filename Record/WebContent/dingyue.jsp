<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>职位订阅-拉勾网-最专业的互联网招聘平台</title>
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
		<DIV id=body>
			<DIV id=header>
				<DIV class=wrapper>
					<A class=logo href="http://www.lagou.com/"></A>
					<UL id=navheader class=reset>
						<LI><A href="http://www.lagou.com/">首页</A></LI>
						<LI><A href="${pageContext.request.contextPath }/user/getCompanyInfo">公司</A></LI>
						<LI><A href="http://www.lagou.com/toForum.html" rel=nofollow target=_blank>论坛</A></LI>
						<LI><A href="http://www.lagou.com/resume/basic.html" rel=nofollow>我的简历</A></LI>
					</UL>
					<DL class=collapsible_menu>
						<DT>
							<SPAN id=nowrap>${UsersInfo.uname}&nbsp;</SPAN> <SPAN id=noticeDot-0 class="red dn"></SPAN><I></I>
						</DT>
						<DD>
							<A href="http://www.lagou.com/resume/myresume.html" rel=nofollow>我的简历</A>
						</DD>
						<DD>
							<A href="http://www.lagou.com/mycenter/collections.html">我收藏的职位</A>
						</DD>
						<DD class=btm>
							<A href="${pageContext.request.contextPath }/user/getSubscription">我的订阅</A>
						</DD>
						<DD>
							<A href="http://www.lagou.com/mycenter/saveUserType.do?type=1">我要招人</A>
						</DD>
						<DD>
							<A href="http://www.lagou.com/user/accountBind.html">帐号设置</A>
						</DD>
						<DD class=logout>
							<A href="${pageContext.request.contextPath }/user/logout" rel=nofollow>退出</A>
						</DD>
					</DL>
					<DIV id="noticeTip" class="dn">
						<SPAN class="bot"></SPAN>
						<SPAN class="top"></SPAN>
						<A href="http://www.lagou.com/mycenter/delivery.html?tag=0&amp;r=0" target="_blank">
							<STRONG>0</STRONG>条新投递反馈
						</A> 
						<A class=closeNT href="javascript:;"></A>
					</DIV>
				</DIV>
			</DIV>
			<!-- end #header -->
			<DIV id=container>
				<DIV class=clearfix>
					<DIV class=content_l>
						<H1>我的职位订阅</H1>
						<c:forEach var="list" items="${yueInfoList}">
							<DIV class="selected s1">
								<H2>${list.position_name}</H2>
								<DIV class=sbox>
									<A class=sclose href="javascript:void(0)" rel="1"></A>
									<A class=sedit href="javascript:void(0)" rel="1"></A>									
								</DIV>
								<SPAN>${list.BusinessAddress} / ${list.field} / ${list.stage} / ${list.Monthly} </SPAN>
								<INPUT id="oi1" type="hidden" name="orderId" value="${list.did}"> 
								<INPUT id="pn1" value="" type=hidden> 
								<INPUT id="ci1" value="${list.BusinessAddress}" type=hidden> 
								<INPUT id="inf1" value="${list.field}" type=hidden> 
								<INPUT id="fs1" value="${list.stage}" type=hidden> 
								<INPUT id="sa1" value="${list.Monthly}" type=hidden> 
								<INPUT id="smp1" value="${list.releaseTime}" type=hidden> 
								<INPUT id="em1" value="${list.email}" type=hidden>
							</DIV>
						</c:forEach>
						<c:if test="${empty yueInfoList}">
							<DIV class="selected s1">
								<DIV class=sbox>
									<A class=sclose href="javascript:void(0)" rel="1"></A>
									<A class=sedit href="javascript:void(0)" rel="1"></A>									
								</DIV>
							</DIV>
						</c:if>
						<INPUT id=orderCount value=1 type=hidden>
						<FORM id=subForm class=dn>
							<INPUT id="orderId" type="hidden" name="id">
							<DIV class=s_form>
								<P>筛选下面的职位订阅条件，实现精准匹配的个性化职位定制，我们帮你挑工作！</P>
								<DL>
									<DT>
										<H3>
											接收邮箱 <I class=rss_circle></I>&nbsp; 
											发送周期 <EM></EM>
											<SPAN>（必填）</SPAN>
										</H3>
									</DT>
									<DD>
										<INPUT id=subEmail value="cyqjyyb@163.com" type="text" name="email" placeholder="请输入接收邮箱"> 
										<SPAN style="DISPLAY: none" id="emailError" class="error">请输入接收邮箱</SPAN>
									</DD>
									<DD>
										<INPUT id="select_day_hidden" type="hidden" name="sendMailPer">
										<UL class="s_radio clearfix">
											<LI title=3>3天</LI>
											<LI title=7>7天</LI>
										</UL>
										<SPAN style="DISPLAY: none" id=sendError class=error>请选择发送周期</SPAN>
									</DD>
								</DL>
								<DL>
									<DT>
										<H3>
											职位名称 <EM></EM><SPAN>（必填）</SPAN>
										</H3>
									</DT>
									<DD>
										<INPUT id=select_job_hidden type=hidden name=positionName> 
										<INPUT id=select_job class=select value=请选择职位名称 type=button>
										<DIV id=sub_box_job class=dn>
											<DL>
												<DT>技术</DT>
												<DD>
													<UL class="reset job_main">
														<LI>后端开发
															<UL class="reset job_sub dn">
																<LI>Java</LI>
																<LI>C++</LI>
																<LI>PHP</LI>
																<LI>数据挖掘</LI>
																<LI>C</LI>
																<LI>C#</LI>
																<LI>.NET</LI>
																<LI>Hadoop</LI>
																<LI>Python</LI>
																<LI>Delphi</LI>
																<LI>VB</LI>
																<LI>Perl</LI>
																<LI>Ruby</LI>
																<LI>Node.js</LI>
															</UL>
														</LI>
														<LI>移动开发
															<UL class="reset job_sub dn">
																<LI>HTML5</LI>
																<LI>Android</LI>
																<LI>iOS</LI>
																<LI>WP</LI>
															</UL>
														</LI>
														<LI>前端开发
															<UL class="reset job_sub dn">
																<LI>web前端</LI>
																<LI>Flash</LI>
																<LI>html5</LI>
																<LI>JavaScript</LI>
																<LI>U3D</LI>
																<LI>COCOS2D-X</LI>
															</UL>
														</LI>
														<LI>测试
															<UL class="reset job_sub dn">
																<LI>测试工程师</LI>
																<LI>自动化测试</LI>
																<LI>功能测试</LI>
																<LI>性能测试</LI>
																<LI>测试开发</LI>
															</UL>
														</LI>
														<LI>运维
															<UL class="reset job_sub dn">
																<LI>运维工程师</LI>
																<LI>运维开发工程师</LI>
																<LI>网络工程师</LI>
																<LI>系统工程师</LI>
																<LI>IT支持</LI>
															</UL>
														</LI>
														<LI>DBA
															<UL class="reset job_sub dn">
																<LI>MySQL</LI>
																<LI>SQLServer</LI>
																<LI>Oracle</LI>
																<LI>DB2</LI>
																<LI>MongoDB</LI>
															</UL>
														</LI>
														<LI>项目管理
															<UL class="reset job_sub dn">
																<LI>项目经理</LI>
															</UL>
														</LI>
														<LI>高端技术职位
															<UL class="reset job_sub dn">
																<LI>技术经理</LI>
																<LI>技术总监</LI>
																<LI>测试经理</LI>
																<LI>架构师</LI>
																<LI>CTO</LI>
																<LI>运维总监</LI>
															</UL>
														</LI>
													</UL>
												</DD>
											</DL>
											<DL>
												<DT>产品</DT>
												<DD>
													<UL class="reset job_main">
														<LI>产品经理
															<UL class="reset job_sub dn">
																<LI>产品经理</LI>
																<LI>网页产品经理</LI>
																<LI>移动产品经理</LI>
																<LI>产品助理</LI>
																<LI>数据产品经理</LI>
																<LI>电商产品经理</LI>
																<LI>游戏策划</LI>
															</UL>
														</LI>
														<LI>产品设计师
															<UL class="reset job_sub dn">
																<LI>网页产品设计师</LI>
																<LI>无线产品设计师</LI>
															</UL>
														</LI>
														<LI>高端产品职位
															<UL class="reset job_sub dn">
																<LI>产品部经理</LI>
																<LI>产品总监</LI>
															</UL>
														</LI>
													</UL>
												</DD>
											</DL>
											<DL>
												<DT>设计</DT>
												<DD>
													<UL class="reset job_main">
														<LI>视觉设计
															<UL class="reset job_sub dn">
																<LI>视觉设计师</LI>
																<LI>网页设计师</LI>
																<LI>Flash设计师</LI>
																<LI>APP设计师</LI>
																<LI>UI设计师</LI>
																<LI>平面设计师</LI>
																<LI>美术设计师（2D/3D）</LI>
																<LI>广告设计师</LI>
																<LI>多媒体设计师</LI>
																<LI>原画师</LI>
																<LI>游戏特效</LI>
																<LI>游戏界面设计师</LI>
																<LI>游戏场景</LI>
																<LI>游戏角色</LI>
																<LI>游戏动作</LI>
															</UL>
														</LI>
														<LI>交互设计
															<UL class="reset job_sub dn">
																<LI>交互设计师</LI>
																<LI>无线交互设计师</LI>
																<LI>网页交互设计师</LI>
																<LI>硬件交互设计师</LI>
															</UL>
														</LI>
														<LI>用户研究
															<UL class="reset job_sub dn">
																<LI>数据分析师</LI>
																<LI>用户研究员</LI>
																<LI>游戏数值策划</LI>
															</UL>
														</LI>
														<LI>高端设计职位
															<UL class="reset job_sub dn">
																<LI>设计经理/主管</LI>
																<LI>设计总监</LI>
																<LI>视觉设计经理/主管</LI>
																<LI>视觉设计总监</LI>
																<LI>交互设计经理/主管</LI>
																<LI>交互设计总监</LI>
																<LI>用户研究经理/主管</LI>
																<LI>用户研究总监</LI>
															</UL>
														</LI>
													</UL>
												</DD>
											</DL>
											<DL>
												<DT>运营</DT>
												<DD>
													<UL class="reset job_main">
														<LI>运营
															<UL class="reset job_sub dn">
																<LI>用户运营</LI>
																<LI>产品运营</LI>
																<LI>数据运营</LI>
																<LI>内容运营</LI>
																<LI>活动运营</LI>
																<LI>商家运营</LI>
																<LI>品类运营</LI>
																<LI>游戏运营</LI>
																<LI>网络推广</LI>
															</UL>
														</LI>
														<LI>编辑
															<UL class="reset job_sub dn">
																<LI>副主编</LI>
																<LI>内容编辑</LI>
															</UL>
														</LI>
														<LI>客服
															<UL class="reset job_sub dn">
																<LI>售前咨询</LI>
																<LI>售后客服</LI>
															</UL>
														</LI>
														<LI>高端运营职位
															<UL class="reset job_sub dn">
																<LI>主编</LI>
																<LI>运营总监</LI>
																<LI>COO</LI>
															</UL>
														</LI>
													</UL>
												</DD>
											</DL>
											<DL>
												<DT>市场与销售</DT>
												<DD>
													<UL class="reset job_main">
														<LI>市场/营销
															<UL class="reset job_sub dn">
																<LI>市场营销</LI>
																<LI>市场策划</LI>
																<LI>市场顾问</LI>
																<LI>市场推广</LI>
																<LI>SEO</LI>
																<LI>SEM</LI>
																<LI>商务渠道</LI>
																<LI>商业数据分析</LI>
																<LI>活动策划</LI>
															</UL>
														</LI>
														<LI>公关
															<UL class="reset job_sub dn">
																<LI>媒介经理</LI>
																<LI>广告协调</LI>
																<LI>品牌公关</LI>
															</UL>
														</LI>
														<LI>销售
															<UL class="reset job_sub dn">
																<LI>销售专员</LI>
																<LI>销售经理</LI>
																<LI>客户代表</LI>
																<LI>大客户代表</LI>
																<LI>BD经理</LI>
																<LI>商务渠道</LI>
																<LI>渠道销售</LI>
																<LI>代理商销售</LI>
															</UL>
														</LI>
														<LI>高端市场职位
															<UL class="reset job_sub dn">
																<LI>市场总监</LI>
																<LI>销售总监</LI>
																<LI>商务总监</LI>
																<LI>CMO</LI>
																<LI>公关总监</LI>
															</UL>
														</LI>
													</UL>
												</DD>
											</DL>
											<DL>
												<DT>职能</DT>
												<DD>
													<UL class="reset job_main">
														<LI>人力资源
															<UL class="reset job_sub dn">
																<LI>人力资源</LI>
																<LI>招聘</LI>
																<LI>HRBP</LI>
																<LI>人事/HR</LI>
																<LI>培训经理</LI>
																<LI>薪资福利经理</LI>
																<LI>绩效考核经理</LI>
															</UL>
														</LI>
														<LI>行政
															<UL class="reset job_sub dn">
																<LI>助理</LI>
																<LI>前台</LI>
																<LI>法务</LI>
																<LI>行政</LI>
															</UL>
														</LI>
														<LI>财务
															<UL class="reset job_sub dn">
																<LI>会计</LI>
																<LI>出纳</LI>
																<LI>财务</LI>
															</UL>
														</LI>
														<LI>高端职能职位
															<UL class="reset job_sub dn">
																<LI>行政总监/经理</LI>
																<LI>财务总监/经理</LI>
																<LI>HRD/HRM</LI>
																<LI>CFO</LI>
															</UL>
														</LI>
													</UL>
												</DD>
											</DL>
										</DIV>
										<SPAN style="DISPLAY: none" id=positionError class=error>请选择职位名称 </SPAN>
									</DD>
								</DL>
								<DL>
									<DT>
										<H3>
											工作地点 <EM></EM><SPAN>（必填）</SPAN>
										</H3>
									</DT>
									<DD>
										<INPUT id=select_city_hidden type=hidden name=city>
										<UL class="s_radio clearfix">
											<LI title=北京>北京</LI>
											<LI title=上海>上海</LI>
											<LI title=广州>广州</LI>
											<LI title=深圳>深圳</LI>
											<LI title=成都>成都</LI>
											<LI title=杭州>杭州</LI>
										</UL>
										<SPAN style="DISPLAY: none" id=cityError class=error>请选择工作地点 </SPAN>
									</DD>
								</DL>
								<DL>
									<DT>
										<H3>
											发展阶段 <EM></EM>
										</H3>
									</DT>
									<DD>
										<INPUT id=select_stage_hidden type=hidden name=financeStage>
										<UL class="s_tips clearfix s_radio_sp">
											<LI title=初创型>初创型<SPAN class=dn>刚成立或已获天使投资</SPAN></LI>
											<LI title=成长型>成长型<SPAN class=dn>已获A轮/B轮/C轮融资</SPAN></LI>
											<LI title=成熟型>成熟型<SPAN class=dn>已获D轮及以上融资</SPAN></LI>
											<LI title=上市公司>上市公司<SPAN class=dn>上市公司</SPAN></LI>
										</UL>
										<SPAN style="DISPLAY: none" id=stageError class=error>请选择发展阶段 </SPAN>
									</DD>
								</DL>
								<DL>
									<DT>
										<H3>
											行业领域 <EM></EM>
										</H3>
									</DT>
									<DD>
										<INPUT id=select_industry_hidden type=hidden name=industryField> <INPUT id=select_industry class=select value=请选择行业领域 type=button>
										<DIV id=box_industry class=dn>
											<UL class=reset>
												<LI>移动互联网</LI>
												<LI>电子商务</LI>
												<LI>社交</LI>
												<LI>企业服务</LI>
												<LI>O2O</LI>
												<LI>教育</LI>
												<LI>文化艺术</LI>
												<LI>游戏</LI>
												<LI>在线旅游</LI>
												<LI>金融互联网</LI>
												<LI>健康医疗</LI>
												<LI>生活服务</LI>
												<LI>硬件</LI>
												<LI>搜索</LI>
												<LI>安全</LI>
												<LI>运动体育</LI>
												<LI>云计算\大数据</LI>
												<LI>移动广告</LI>
												<LI>社会化营销</LI>
												<LI>视频多媒体</LI>
												<LI>媒体</LI>
												<LI>智能家居</LI>
												<LI>智能电视</LI>
												<LI>分类信息</LI>
												<LI>招聘</LI>
											</UL>
										</DIV>
										<SPAN style="DISPLAY: none" id=fieldError class=error>请选择行业领域 </SPAN>
									</DD>
								</DL>
								<DL>
									<DT>
										<H3>
											月薪范围 <EM></EM>
										</H3>
									</DT>
									<DD>
										<INPUT id=select_salary_hidden type=hidden name=salary> <INPUT id=select_salary class=select value=请选择月薪范围 type=button>
										<DIV id=box_salary class=dn>
											<UL class=reset>
												<LI>2k以下</LI>
												<LI>2k-5k</LI>
												<LI>5k-10k</LI>
												<LI>10k-15k</LI>
												<LI>15k-25k</LI>
												<LI>25k-50k</LI>
												<LI>50k以上</LI>
											</UL>
										</DIV>
										<SPAN style="DISPLAY: none" id=salaryError class=error>请选择月薪范围 </SPAN>
									</DD>
								</DL>
								<SPAN style="DISPLAY: none" id=commonError class=error>系统异常</SPAN> <INPUT id=subSubmit class=btn_big value="保 存" type=submit> <A class=btn_cancel href="javascript:void(0)">取 消</A>
							</DIV>
						</FORM>
					</DIV>
					<DIV class=content_r>
						<DIV class="subscribe_side mb20 c5">
							<DIV class=why>我们为什么强烈推荐你</DIV>
							<H2>订阅</H2>
							<UL class=reset>
								<LI class=sub1>帮助你节省浏览和筛选时间，快速找到适合的职位信息。</LI>
								<LI class=sub2>我们会严格按照你订阅的频次和条件给你发送邮件，并对你的个人信息绝对保密。</LI>
							</UL>
						</DIV>
					</DIV>
				</DIV>
				<INPUT id=userid value=464405 type=hidden name=userid>
				<!------------------------------------- 弹窗lightbox ----------------------------------------->
				<DIV style="DISPLAY: none">
					<!-- 
						登录帐号订阅成功
						1、已登录用户，且是自有用户，已验证，订阅职位<=1，提示订阅成功；接收邮箱默认为登录邮箱，可修改。
						2、已登录用户，但是第三方用户，订阅职位<=1，提示订阅成功；接收邮箱手动输入可修改。
						未登录帐号订阅成功 
						未登录用户，但填写的邮箱为已注册、已验证邮箱，且订阅职位<=1，订阅成功，点击确定显示登录框
					-->
					<DIV id=subscribeSuccessLogined class=popup>
						<H4>职位订阅成功！</H4>
						<P>我们将定期发送订阅邮件至：<A>cyqjyyb@163.com</A>，请注意查收。</P>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD align="middle"><A class="btn_s" href="http://www.lagou.com/s/subscribe.html">确&nbsp;定</A></TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#subscribeSuccessLogined-->
					<!-- 
						未登录未注册帐号订阅成功
						提示注册框
					-->
					<DIV style="HEIGHT: 370px" id="subscribeSuccessRegister" class="popup">
						<H4>职位订阅成功！</H4>
						<P>我们将定期发送订阅邮件至：<A><EM></EM></A>，请注意查收。</P>
						<HR>	
						<P>现在只需设置密码就可成功注册拉勾，并可长期保存及管理订阅信息。</P>
						<FORM id=registerPopForm>
							<TABLE width="100%">
								<TBODY>
									<TR>
										<TD>注册邮箱 :</TD>
										<TD><EM></EM></TD>
									</TR>
									<TR>
										<TD vAlign=top>注册密码 :</TD>
										<TD><INPUT id=psw type=password name=password placeholder="请输入注册密码"> <SPAN style="DISPLAY: none" id=beError_register class=error></SPAN></TD>
									</TR>
									<TR>
										<TD></TD>
										<TD>
											<LABEL class=fl for=checkbox>
												<INPUT id=checkbox class="checkbox valid" CHECKED type="checkbox" name="checkbox"> 
												我已阅读并同意<A href="http://www.lagou.com/privacy.html" target="_blank">《拉勾用户协议》</A>
											</LABEL>
										</TD>
									</TR>
									<TR>
										<TD></TD>
										<TD><INPUT class="btn_s" value="注 册" type="submit"></TD>
									</TR>
								</TBODY>
							</TABLE>
						</FORM>
					</DIV>
					<!--/#subscribeSuccessRegister-->
					<!-- 
						未登录注册帐号订阅成功
						弹出框有登录按钮，提示登录
					-->
					<DIV id="subscribeSuccessLogin" class="popup">
						<H4>职位订阅成功！</H4>
						<P>我们将定期发送订阅邮件至：<A></A>，请注意查收。</P>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD align="middle"><A class="btn inline" title="登录 " href="http://www.lagou.com/s/subscribe.html#loginPop">登 录</A></TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!-- 登录框 -->
					<DIV style="HEIGHT: 240px" id=loginPop class=popup>
						<FORM id=loginForm>
							<INPUT id="email" tabIndex="1" type="text" name="email" placeholder="请输入登录邮箱地址"> 
							<INPUT id="password" tabIndex="2" type="password" name="password" placeholder="请输入密码"> 
							<SPAN style="DISPLAY: none" id=beError class=error></SPAN>
							<LABEL class=fl for=remember><INPUT id=remember CHECKED type="checkbox" name="autoLogin"> 记住我</LABEL> 
							<A class=fr href="http://www.lagou.com/reset.html" target="_blank">忘记密码？</A> 
							<INPUT id=submitLogin value="登 &nbsp; &nbsp; 录" type=submit>
						</FORM>
						<DIV class=login_right>
							<DIV>还没有拉勾帐号？</DIV>
							<A class=registor_now href="http://www.lagou.com/register.html">立即注册</A>
							<DIV class=login_others>使用以下帐号直接登录:</DIV>
							<A class=icon_wb title=使用新浪微博帐号登录 href="javascript:;" target=_blank></A>
							<A class=icon_qq title=使用腾讯QQ帐号登录 href="javascript:;" target=_blank></A>
						</DIV>
					</DIV>
					<!--/#loginPop-->
					<!--退订-->
					<DIV id=cancelSub class=popup>
						<H4>确认要退订该订阅？</H4>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD align=middle>
										<P>点击确认后你将不再收到拉勾为你提供的精准职位推送。</P>
									</TD>
								</TR>
								<TR>
									<TD align="middle"><INPUT id=confirmCancel class=btn_s value=确认退订 type=button> <A class=btn_s href="javascript:void(0)">取消</A></TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#cancelSub-->
				</DIV>
				<!------------------------------------- end ----------------------------------------->
				<SCRIPT src="${pageContext.request.contextPath}/resources/js/sub.min.js"></SCRIPT>
				<!-- 退订 | 从邮箱进来订阅页  -->
				<!-- 订阅成功弹出注册框 | 从邮箱进来订阅页  -->
				<!-- 订阅成功弹出登录框 | 从邮箱进来订阅页  -->
				<!-- 从激活页点换个邮箱进入订阅页 -->
				<DIV class=clear></DIV>
				<A id=backtop title=回到顶部 rel=nofollow></A>
			</DIV>
			<!-- end #container -->
		</DIV>
		<!-- end #body -->
		<DIV id=footer>
			<DIV class=wrapper>
				<A href="http://www.lagou.com/about.html" rel=nofollow target=_blank>联系我们</A> 
				<A href="http://www.lagou.com/af/zhaopin.html" target=_blank>互联网公司导航</A> 
				<A href="http://e.weibo.com/lagou720" rel=nofollow target=_blank>拉勾微博</A> 
				<A class=footer_qr href="javascript:void(0)" rel=nofollow>拉勾微信<I></I></A>
				<DIV class=copyright>
					©2013-2014 Lagou <A href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target=_blank>京ICP备14023790号-2</A>
				</DIV>
			</DIV>
		</DIV>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/core.min.js?v=1.5.5.5_0722_14"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/popup.min.js?v=1.5.5.5_0722_14"></script>
	</body>
</html>