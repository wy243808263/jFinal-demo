<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>社区运营招聘-掘金网招聘-掘金网</title>
		<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath }/resources/css/style.css">
		<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath }/resources/css/external.min.css">
		<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath }/resources/css/popup.css">
		
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/jquery.1.10.1.min.js"></SCRIPT>
		<%-- <SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/jquery.lib.min.js"></SCRIPT> --%>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/jquery-hbzx.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/excanvas.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/conv.js"></SCRIPT>
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
						<LI><A href="${pageContext.request.contextPath }/user/index">首页</A></LI>
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
					<DIV id=noticeTip class=dn>
						<SPAN class=bot></SPAN>
						<SPAN class=top></SPAN>
						<A href="http://www.lagou.com/mycenter/delivery.html?tag=0&amp;r=0" target=_blank><STRONG>0</STRONG>条新投递反馈</A> 
						<A class=closeNT href="javascript:;"></A>
					</DIV>
				</DIV>
			</DIV>
			<!-- end #header -->
			<DIV id=container>
				<DIV class=clearfix>
					<DIV class=content_l>
						<DL class=job_detail>
							<DT>
								<H1 title="${relationInfo.COMPANYNAME}">
									<EM></EM>
									<DIV>掘金网运营招聘</DIV>
									社区运营
								</H1>
								<DIV id=jobCollection class=jd_collection>
									<DIV class=jd_collection_success>
										<SPAN>已成功收藏该职位，</SPAN> <A class=jd_collection_page href="http://www.lagou.com/mycenter/collections.html">查看全部</A> <A class=jd_collection_x href="javascript:;"></A>
									</DIV>
								</DIV>
							</DT>
							<DD class=job_request>
								<SPAN class=red>${relationInfo.MONTHLY}</SPAN> <SPAN>${relationInfo.POSITIONADDRESS}</SPAN> <SPAN>${relationInfo.EXPERIENCE} </SPAN><SPAN>学历不限</SPAN> <SPAN>全职</SPAN><BR>职位诱惑 : ${relationInfo.PositionTemptation}
	
								<DIV>发布时间：3天前发布</DIV>
							</DD>
							<DD class=job_bt>
								<H3 class=description>职位描述</H3>
								<P>
									<STRONG>岗位职责:</STRONG>
								</P>
								<P>${relationInfo.Duty}</P>
								<P>&nbsp;</P>
								<P>&nbsp;</P>
								<P>
									<STRONG>任职要求：</STRONG>
								</P>
								<P>${relationInfo.Responsibility}</P>
							</DD>
							<!-- 用户是否激活 0-否；1-是 -->
							<DD class=unresume>
								<DIV>
									你在掘金还没有简历呢，你可以<A title=完善在线简历 href="http://www.lagou.com/resume/basic.html" rel=nofollow target=_blank>完善在线简历</A>，
									也可
									<A class=inline title=上传附件简历 href="http://www.lagou.com/jobs/192629.html?source=home_hot#uploadFile">上传附件简历</A>
								</DIV>
							</DD>
							<DIV class="saoma saoma_btm">
								<DIV class=dropdown_menu>
									<DIV class=drop_l>
										<IMG src="shequyunying_files/job_qr_btm.png" width=131 height=131> <SPAN>[仅限本人使用]</SPAN>
									</DIV>
									<DIV class=drop_r>
										<DIV class=drop_title></DIV>
										<P>
											想知道HR在看简历嘛？<BR>想在微信中收到面试通知？<BR> <SPAN>&lt;&lt; 扫一扫，给你解决</SPAN>
										</P>
									</DIV>
								</DIV>
							</DIV>
							<DD>
								<!-- 用户是否激活 0-否；1-是 -->
								<A class="btn fr btn_apply inline" title="投个简历" href="${pageContext.request.contextPath }/user/saveApply?cid=${relationInfo.CID}&pCRID=${relationInfo.pCRID}">投个简历</A>
							</DD>
						</DL>
						<DIV id=weibolist></DIV>
					</DIV>
					<DIV class=content_r>
						<DL class=job_company>
							<DT>
								<A href="http://www.lagou.com/gongsi/147.html" target=_blank><IMG class=b2 alt=北京掘金网络技术有限公司 src="shequyunying_files/73186117ff844338a61de0e7bc9c4823.jpg" width=80 height=80>
									<DIV>
										<H2 class=fl>
											${relationInfo.COMPANYNAME} <IMG alt="${relationInfo.COMPANYNAME}" src="shequyunying_files/valid.png" width=15 height=19> <SPAN class=dn>掘金认证企业</SPAN>
										</H2>
									</DIV>
								</A>
							</DT>
							<DD>
								<UL class="c_feature reset">
									<LI><SPAN>领域</SPAN> ${relationInfo.FIELD}</LI>
									<LI><SPAN>规模</SPAN> ${relationInfo.SCALE}</LI>
									<LI><SPAN>主页</SPAN> <A title="${relationInfo.COMPANYURL}" href="${relationInfo.COMPANYURL}" rel=nofollow target=_blank>${relationInfo.COMPANYURL}</A></LI>
								</UL>
								<H4>发展阶段</H4>
								<UL class="c_feature reset">
									<LI><SPAN>目前阶段</SPAN> ${relationInfo.Stage}</LI>
									<LI><SPAN>投资机构</SPAN> 东方弘道(天使轮)，真格基金(天使轮)，贝塔斯曼(A轮)，启明创投(B轮)</LI>
								</UL>
								<H4>工作地址</H4>
								<DIV>${relationInfo.BusinessAddress}</DIV>
								<DIV id=smallmap></DIV>
								<A id=mapPreview href="javascript:;">查看完整地图</A>
							</DD>
						</DL>
						<!-- write by Darren  -->
						<DIV id=position_recommend>
							<UL class=position_head>
								<LI class=guess_selected>相似职位</LI>
								<LI>猜你喜欢</LI>
							</UL>
							<DIV class=similar_content>
								<DIV class=position_detail_content>
									<DL>
										<DT>
											<A title=亦鸥网 href="http://www.lagou.com/gongsi/28870.html?source=position_rec" target=_blank><IMG alt=亦鸥网 src="shequyunying_files/9bf587a675494db88992c9e9b61ea97a.jpg" width=54 height=54></A>
										</DT>
										<DD class=content_inner>
											<A href="http://www.lagou.com/jobs/177117.html?source=position_rec" target=_blank>
												<H2 title=社区运营>社区运营</H2> 
												<SPAN>4k-5k</SPAN>
												<P title=亦鸥网>亦鸥网</P>
											</A>
										</DD>
									</DL>
									<DL>
										<DT>
											<A title=联想利泰 href="http://www.lagou.com/gongsi/3866.html?source=position_rec" target=_blank><IMG alt=联想利泰 src="shequyunying_files/ff808081442d8e6801442e0905111682.jpg" width=54
												height=54></A>
										</DT>
										<DD class=content_inner>
											<A href="http://www.lagou.com/jobs/176054.html?source=position_rec" target=_blank>
												<H2 title=社区运营>社区运营</H2> 
												<SPAN>4k-6k</SPAN>
												<P title=联想利泰>联想利泰</P>
											</A>
										</DD>
									</DL>
									<DL>
										<DT>
											<A title=Fesco href="http://www.lagou.com/gongsi/692.html?source=position_rec" target=_blank><IMG alt=Fesco src="shequyunying_files/ff80808140cbb9580140cd5203e60057.png" width=54
												height=54></A>
										</DT>
										<DD class=content_inner>
											<A href="http://www.lagou.com/jobs/188310.html?source=position_rec" target=_blank>
												<H2 title=社区运营>社区运营</H2> 
												<SPAN>4k-8k</SPAN>
												<P title=Fesco>Fesco</P>
											</A>
										</DD>
									</DL>
									<DL>
										<DT>
											<A title=光年创艺 href="http://www.lagou.com/gongsi/412.html?source=position_rec" target=_blank><IMG alt=光年创艺 src="shequyunying_files/e5c5303a405e77730140610e2f160063.jpg" width=54 height=54></A>
										</DT>
										<DD class=content_inner>
											<A href="http://www.lagou.com/jobs/30943.html?source=position_rec" target=_blank>
												<H2 title=社区运营>社区运营</H2> 
												<SPAN>4k-8k</SPAN>
												<P title=光年创艺>光年创艺</P>
											</A>
										</DD>
									</DL>
									<DL>
										<DT>
											<A title=优视米网络科技有限公司 href="http://www.lagou.com/gongsi/49.html?source=position_rec" target=_blank>
												<IMG alt=优视米网络科技有限公司 src="shequyunying_files/dc8eea2920a9481e88d8e7c83c27b8fd.jpg" width=54 height=54>
											</A>
										</DT>
										<DD class=content_inner>
											<A href="http://www.lagou.com/jobs/160291.html?source=position_rec" target=_blank>
												<H2 title=论坛运营>论坛运营</H2> 
												<SPAN>4k-8k</SPAN>
												<P title=优视米网络科技有限公司>优视米网络科技有限公司</P>
											</A>
										</DD>
									</DL>
									<A id=similar_footer class=similar_position_footer href="javascript:;"
										target=_blank>查看更多相似职位</A>
								</DIV>
							</DIV>
							<DIV id=guess>
								<DIV class=guess_like>
									<P>暂时没有匹配的职位</P>
									<P class=special_fix>不妨调整你的期望工作试一试</P>
									<P>
										<A class=guess_rectangle title=前去修改 href="http://www.lagou.com/resume/myresume.html#expectJob" target=_blank>前去修改</A>
									</P>
								</DIV>
							</DIV>
						</DIV>
						<!--  End -->
						<!-- 广告位：主站--职位详情页 -->
						<SCRIPT type=text/javascript>
							BAIDU_CLB_SLOT_ID = "946156";
						</SCRIPT>
	
						<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/o.js"></SCRIPT>
					</DIV>
				</DIV>
				<INPUT id=userid value="${UsersInfo.u_id}" type=hidden name=userid> 
				<DIV id=tipOverlay></DIV>
				<!-------------------------------------弹窗lightbox  ----------------------------------------->
				<DIV style="DISPLAY: none">
					<!-- 设置默认投递简历 -->
					<DIV style="HEIGHT: 280px" id=setResume class=popup>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD class="f18 c5">请选择你要投出去的简历：</TD>
								</TR>
								<TR>
									<TD>
										<FORM id=resumeSetForm class=resumeSetForm>
											<LABEL class=radio>
												<INPUT class=resume1 value=1 type=radio name=resumeName> 在线简历： <SPAN class=red>在线简历还不完善，请完善后选择投递</SPAN> 
											</LABEL>
											<DIV class=setBtns>
												<A href="http://www.lagou.com/resume/myresume.html" target=_blank>修改</A>
											</DIV>
											<DIV class=clear></DIV>
											<LABEL class=radio>
												<INPUT class=resume0 value=0 type=radio name=resumeName> 附件简历： <SPAN class="uploadedResume red">暂无附件简历</SPAN> 
											</LABEL>
											<DIV class=setBtns>
												<A class="downloadResume dn" href="http://www.lagou.com/nearBy/downloadResume">下载</A> 
												<SPAN class=dn>|</SPAN> 
												<A class=reUpload title=上传附件简历 target=_blank>上传附件简历</A> 
												<INPUT id=reUploadResume1 title=支持word、pdf、ppt、txt、wps格式文件，大小不超过10M onchange="file_check(this,'http://www.lagou.com/nearBy/updateMyResume.json','reUploadResume1')" type=file name=newResume>
											</DIV>
											<DIV class=clear></DIV>
											<SPAN style="DISPLAY: none" class=error>只支持word、pdf、ppt、txt、wps格式文件，请重新上传</SPAN> 
											<LABEL class=bgPink>默认使用此简历直接投递，下次不再提示</LABEL> 
											<SPAN class="setTip error"></SPAN>
											<INPUT class="btn_profile_save btn_s" value=保存设置 type=submit>
										</FORM>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#setResume-->
					<!-- 投递简历时  - 设置默认投递简历 -->
					<DIV style="HEIGHT: 280px" id=setResumeApply class=popup>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD class="f18 c5">请选择你要投出去的简历：</TD>
								</TR>
								<TR>
									<TD>
										<FORM id=resumeSendForm class=resumeSetForm>
											<LABEL class=radio><INPUT class=resume1 value=1 type=radio name=resumeName> 在线简历： <SPAN class=red>在线简历还不完善，请完善后选择投递</SPAN> </LABEL>
											<DIV class=setBtns>
												<A href="http://www.lagou.com/resume/myresume.html" target=_blank>修改</A>
											</DIV>
											<DIV class=clear></DIV>
											<LABEL class=radio><INPUT class=resume0 value=0 type=radio name=resumeName> 附件简历： <SPAN class="uploadedResume red">暂无附件简历</SPAN> </LABEL>
											<DIV class=setBtns>
												<A class="downloadResume dn" href="http://www.lagou.com/nearBy/downloadResume">下载</A> <SPAN class=dn>|</SPAN> <A class=reUpload title=上传附件简历 target=_blank>上传附件简历</A> <INPUT
													id=reUploadResume2 title=支持word、pdf、ppt、txt、wps格式文件，大小不超过10M onchange="file_check(this,'http://www.lagou.com/nearBy/updateMyResume.json','reUploadResume2')" type=file name=newResume>
											</DIV>
											<DIV class=clear></DIV>
											<SPAN style="DISPLAY: none" class=error>只支持word、pdf、ppt、txt、wps格式文件，请重新上传</SPAN> <LABEL class=bgPink><INPUT CHECKED type=checkbox>默认使用此简历直接投递，下次不再提示</LABEL> <SPAN
												class="setTip error"></SPAN><INPUT class="btn_profile_save btn_s" value=确认投递简历 type=submit>
										</FORM>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#setResumeApply-->
					<!-- 上传简历 -->
					<DIV id=uploadFile class=popup>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD align=middle>
										<FORM>
											<A class=btn_addPic href="javascript:void(0);"><SPAN>选择上传文件</SPAN> <INPUT id=resumeUpload class=filePrew title=支持word、pdf、ppt、txt、wps格式文件，大小不超过10M tabIndex=3
												onchange="file_check(this,'http://www.lagou.com/nearBy/updateMyResume.json','resumeUpload')" size=3 type=file name=newResume> </A>
										</FORM>
									</TD>
								</TR>
								<TR>
									<TD align=left>支持word、pdf、ppt、txt、wps格式文件<BR>文件大小需小于10M
									</TD>
								</TR>
								<TR>
									<TD style="COLOR: #dd4a38; PADDING-TOP: 10px" align=left>注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</TD>
								</TR>
								<TR>
									<TD align=middle><IMG style="VISIBILITY: hidden" id=loadingImg alt=loading src="shequyunying_files/loading.gif" width=55 height=16></TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#uploadFile-->
					<!-- 简历上传成功 -->
					<DIV id=uploadFileSuccess class=popup>
						<H4>简历上传成功！</H4>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD align=middle>
										<P>你可以将简历投给你中意的公司了。</P>
									</TD>
								</TR>
								<TR>
									<TD align=middle><A class=btn_s href="javascript:top.location.reload();">确&nbsp;定</A></TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#uploadFileSuccess-->
					<!-- 登录框 -->
					<DIV style="HEIGHT: 240px" id=loginPop class=popup>
						<FORM id=loginForm>
							<INPUT id=email tabIndex=1 type=text name=email placeholder="请输入登录邮箱地址"> <INPUT id=password tabIndex=2 type=password name=password placeholder="请输入密码"> <SPAN
								style="DISPLAY: none" id=beError class=error></SPAN><LABEL class=fl for=remember><INPUT id=remember value="" CHECKED type=checkbox name=autoLogin> 记住我</LABEL> <A class=fr
								href="http://www.lagou.com/reset.html">忘记密码？</A> <INPUT id=submitLogin value="登 &nbsp; &nbsp; 录" type=submit>
						</FORM>
						<DIV class=login_right>
							<DIV>还没有掘金帐号？</DIV>
							<A class=registor_now href="http://www.lagou.com/register.html">立即注册</A>
							<DIV class=login_others>使用以下帐号直接登录:</DIV>
							<A class=icon_wb title=使用新浪微博帐号登录 href="http://www.lagou.com/ologin/auth/sina.html" target=_blank></A><A class=icon_qq title=使用腾讯QQ帐号登录 href="http://www.lagou.com/ologin/auth/qq.html"
								target=_blank></A>
						</DIV>
					</DIV>
					<!--/#loginPop-->
					<!-- 投简历成功前填写基本信息 -->
					<STYLE>
						#cboxContent {
							OVERFLOW: visible
						}
						
						#colorbox {
							OVERFLOW: visible
						}
						
						#cboxOverlay {
							OVERFLOW: visible
						}
						
						#cboxWrapper {
							OVERFLOW: visible
						}
					</STYLE>
	
					<DIV style="HEIGHT: 300px; OVERFLOW: visible" id=infoBeforeDeliverResume class=popup>
						<DIV class=f18>为方便所投递企业HR查阅，请确认个人信息</DIV>
						<FORM id=basicInfoForm method=post>
							<TABLE width="100%">
								<TBODY>
									<TR>
										<TD vAlign=center><SPAN class=redstar>*</SPAN></TD>
										<TD><INPUT type=text name=name placeholder="姓名"></TD>
										<TD vAlign=center><SPAN class=redstar>*</SPAN></TD>
										<TD><INPUT id=degree type=hidden name=degree> <INPUT id=select_degree class="profile_select_190 profile_select_normal" value=最高学历 type=button>
	
											<DIV id=box_degree class="boxUpDown boxUpDown_190 dn"></DIV></TD>
									</TR>
									<TR>
										<TD vAlign=center><SPAN class=redstar>*</SPAN></TD>
										<TD><INPUT id=workyear type=hidden name=workyear> <INPUT id=select_workyear class="profile_select_190 profile_select_normal" value=工作年限 type=button>
	
											<DIV id=box_workyear class="boxUpDown boxUpDown_190 dn"></DIV></TD>
										<TD vAlign=center><SPAN class=redstar>*</SPAN></TD>
										<TD><INPUT id=expectCity type=hidden name=expectCity> <INPUT id=select_expectCity class="profile_select_190 profile_select_normal" value=期望工作城市 type=button>
	
											<DIV id=box_expectCity class="boxUpDown boxUpDown_596 dn"></DIV></TD>
									</TR>
									<TR>
										<TD vAlign=center><SPAN class=redstar>*</SPAN></TD>
										<TD><INPUT type=text name=tel placeholder="手机号码"></TD>
										<TD vAlign=center><SPAN class=redstar>*</SPAN></TD>
										<TD><INPUT type=text name=email placeholder="邮箱地址"></TD>
									</TR>
									<TR>
										<TD></TD>
										<TD colSpan=3><INPUT type=hidden name=type> <INPUT class=btn value=确认并投递 type=submit></TD>
									</TR>
								</TBODY>
							</TABLE>
						</FORM>
					</DIV>
					<!--/#infoBeforeDeliverResume-->
					<!-- 上传附件简历操作说明-重新上传 -->
					<DIV id=fileResumeUpload class=popup>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD>
										<DIV class="f18 mb10">请上传标准格式的word简历</DIV>
									</TD>
								</TR>
								<TR>
									<TD>
										<DIV class=f16>
											操作说明：<BR>打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
										</DIV>
									</TD>
								</TR>
								<TR>
									<TD align=middle><A class="inline btn" title=上传附件简历 href="http://www.lagou.com/jobs/192629.html?source=home_hot#uploadFile">重新上传</A></TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#fileResumeUpload-->
					<!-- 上传附件简历操作说明-重新上传 -->
					<DIV id=fileResumeUploadSize class=popup>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD>
										<DIV class="f18 mb10">上传文件大小超出限制</DIV>
									</TD>
								</TR>
								<TR>
									<TD>
										<DIV class=f16>
											提示：<BR>单个附件不能超过10M，请重新选择附件简历！
										</DIV>
									</TD>
								</TR>
								<TR>
									<TD align=middle><A class="inline btn" title=上传附件简历 href="http://www.lagou.com/jobs/192629.html?source=home_hot#uploadFile">重新上传</A></TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#deliverResumeConfirm-->
					<!-- 投简历成功前二次确认 -->
					<DIV id=deliverResumeConfirm class=popup>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD class=msg>
										<DIV class=f18>你的简历中：</DIV>
										<DIV class="f16 count">
											<SPAN class="f18 confirm_field">学历、工作年限、期望工作城市</SPAN>与该职位要求不匹配，确认要投递吗？
										</DIV>
									</TD>
								</TR>
								<TR>
									<TD align=middle><INPUT type=hidden name=type> <A class=btn href="javascript:sendResume(464405,192629,true,true);">确认投递</A> <A class=btn_s href="javascript:;">放弃投递</A> <A
										class="f20 edit_field" href="javascript:;">修改信息</A></TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#deliverResumeConfirm-->
					<!-- 投简历成功 -->
					<DIV style="PADDING-BOTTOM: 10px; WIDTH: 440px" id=deliverResumesSuccess class=popup>
						<TABLE width="100%">
							<TBODY>
								<TR class=drawGGJ>
									<TD align=middle>
										<P class="font_16 count"></P>
										<P class="font_16 share dn">
											邀请好友成功注册掘金，可提升每日投递量 &nbsp;&nbsp; <A href="http://www.lagou.com/share/invite.html" target=_blank>邀请好友&gt;&gt;</A>
										</P>
									</TD>
								</TR>
								<TR class=drawQD>
									<TD align=middle><A class=btn_s href="javascript:top.location.reload();">确&nbsp;定</A></TD>
								</TR>
								<TR class="weixinQR dn">
									<TD>
										<DIV class=weixin>
											<DIV class=qr>
												<IMG src="" width=120 height=120>
												<DIV>[仅限本人使用]</DIV>
											</DIV>
											<DIV class=qr_text>
												想知道HR是否看过你的简历？<BR>想在微信中收到面试通知？<BR> <SPAN>&lt;&lt; 微信扫一扫，一并解决</SPAN>
											</DIV>
										</DIV>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#deliverResumesSuccess-->
					<!-- 投递时，一个简历都没有弹窗 -->
					<DIV id=sendNoResume class=popup>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD class="f18 c5" align=middle>你还没有可以投递的简历呢</TD>
								</TR>
								<TR>
									<TD class=c5 align=middle>请上传附件简历或填写在线简历后再投递吧~</TD>
								</TR>
								<TR>
									<TD align=middle>
										<FORM>
											<A class=btn_addPic href="javascript:void(0);"><SPAN>选择上传文件</SPAN> <INPUT id=resumeUpload2 class=filePrew title=支持word、pdf、ppt、txt、wps格式文件，大小不超过10M
												onchange="file_check(this,'http://www.lagou.com/nearBy/updateMyResume.json','resumeUpload2')" size=3 type=file name=newResume> </A>
										</FORM> <A class=btn href="http://www.lagou.com/resume/basic.html" rel=nofollow target=_blank>完善在线简历</A>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#sendNoResume-->
					<!-- 没有简历请上传 -->
					<DIV id=deliverResumesNo class=popup>
						<TABLE width="100%">
							<TBODY>
								<TR>
									<TD align=middle>
										<P class=font_16>你在掘金还没有简历，请先上传一份</P>
									</TD>
								</TR>
								<TR>
									<TD align=middle>
										<FORM>
											<A class=btn_addPic href="javascript:void(0);"><SPAN>选择上传文件</SPAN> <INPUT id=resumeUpload1 class=filePrew title=支持word、pdf、ppt、txt、wps格式文件，大小不超过10M
												onchange="file_check(this,'http://www.lagou.com/nearBy/updateMyResume.json','resumeUpload1')" size=3 type=file name=newResume> </A>
										</FORM>
									</TD>
								</TR>
								<TR>
									<TD align=middle>支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</TD>
								</TR>
							</TBODY>
						</TABLE>
					</DIV>
					<!--/#deliverResumesNo-->
					<!--
	    	激活邮箱
			登录邮箱未验证时，
		 	点击上传附件简历、申请职位、订阅职位、发布职位出现该弹窗
		-->
					<DIV style="HEIGHT: 240px" id=activePop class=popup>
						<H4>登录邮箱未验证</H4>
						<P>请验证你的登录邮箱以使用掘金网的所有功能！</P>
						<P>
							我们已将验证邮件发送至：<A>cyqjyyb@163.com</A>，请点击邮件内的链接完成验证。
						</P>
						<P>
							<A id=resend href="javascript:void(0)">重新发送验证邮件 </A>| <A href="http://www.lagou.com/register.html" target=_blank>换个邮箱？ </A>
						</P>
					</DIV>
					<!--/#activePop-->
					<!--
	    	激活邮箱
			验证邮件发送成功弹窗
		-->
					<DIV id=resend_success class=popup>
						<P>
							我们已将激活邮件发送至：<A>cyqjyyb@163.com</A>，请点击邮件内的链接完成验证。
						</P>
					</DIV>
					<!--/#resend_success-->
					<!--地图弹窗-->
					<DIV id=baiduMap class=popup>
						<DIV id=allmap></DIV>
					</DIV>
					<!--/#baiduMap-->
				</DIV>
			</DIV>
		</DIV>
		
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/job_detail.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/count.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/core.min.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/popup.min.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/api"></SCRIPT>
		
		<SCRIPT type=text/javascript>
			//百度地图API功能
			var sMap = new BMap.Map("smallmap");
			sMap.enableScrollWheelZoom(true);
			
			if($('#positionLat').val() && $('#positionLng').val()){
				var sPoint = new BMap.Point($('#positionLng').val(),$('#positionLat').val());
				sMap.centerAndZoom(sPoint,12);
				sMap.addOverlay(new BMap.Marker(sPoint));              // 将标注添加到地图中
				
			}else{
				// 创建地址解析器实例
				var sMyGeo = new BMap.Geocoder();
				// 将地址解析结果显示在地图上,并调整地图视野
				sMyGeo.getPoint("海淀区中关村海淀图书城3W咖啡", function(sPoint){
				  if (sPoint) {
					  sMap.centerAndZoom(sPoint, 16);
					  sMap.addOverlay(new BMap.Marker(sPoint));
				  }
				}, "北京");
			}
	
			/*弹窗大地图*/
			var map = new BMap.Map("allmap");
			map.addControl(new BMap.NavigationControl());
			map.addControl(new BMap.MapTypeControl());
			map.addControl(new BMap.OverviewMapControl());
			map.enableScrollWheelZoom(true);
			// 创建地址解析器实例
			var gc = new BMap.Geocoder();
			$(function(){
				$('#mapPreview').bind('click',function(){
					$.colorbox({inline:true, href:"#baiduMap",title:"公司地址"});
					var address = "海淀区中关村海淀图书城3W咖啡";
					var city = "北京";
					var lat = $('#positionLat').val();
					var lng = $('#positionLng').val();
				    map.setCurrentCity(city);
				    map.setZoom(12);
					if(lat && lng){
						var p = new BMap.Point(lng, lat);
						var marker = new BMap.Marker(p);  // 创建标注
						map.addOverlay(marker);              // 将标注添加到地图中
						setTimeout(function(){
							map.centerAndZoom(p, 15);
						},1000);
						map.setCenter(p);
						map.setZoom(15);
						var sContent =
							"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>"+city+"</h4>" + 
							"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+address+"</p>" + 
							"</div>";
						 var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
					 	//图片加载完毕重绘infowindow
				 		marker.openInfoWindow(infoWindow);
			 		}else{
						gc.getPoint(address, function(point){
							  if (point) {
								  	var p = new BMap.Point(point.lng, point.lat);
									var marker = new BMap.Marker(p);  // 创建标注
									map.addOverlay(marker);              // 将标注添加到地图中
									setTimeout(function(){
										map.centerAndZoom(p, 15);
									},1000);
									map.setZoom(14);
									var sContent =
										"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>"+city+"</h4>" + 
										"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+address+"</p>" + 
										"</div>";
									 var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
								 	//图片加载完毕重绘infowindow
							 		marker.openInfoWindow(infoWindow);
							  }
						}, city);
					}
				});
			});
		</SCRIPT>
	</body>
</html>