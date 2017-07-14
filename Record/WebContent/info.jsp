<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>个人信息页面</title>
		<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath }/resources/css/style.css">
		<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath }/resources/css/external.min.css">
		<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath }/resources/css/popup.css">
		
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/jquery-1.10.2.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/jquery.lib.min.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/ajaxfileupload.js"></SCRIPT>
		<SCRIPT type=text/javascript>
			var ctx = "${pageContext.request.contextPath}";
			
			$(function(){
				$("#headPic").change(function() {
					var formdata = new FormData();
					formdata.append("file" , $("#headPic")[0].files[0]);
					
					 $.ajax({
			           type : 'post',
			           url : ctx + '/user/upload',
			           data : formdata,
			           cache : false,
			           processData : false, // 不处理发送的数据，因为data值是Formdata对象，不需要对数据做处理
			           contentType : false, // 不设置Content-type请求头
			           success : function(result){
			        	   if(result.error == 0){
			        		   var url = result.url;
			        		   $("#portraitShow").find("img").attr("src",ctx + "/temp/" + url);
			        	   }
			           },
			           error : function(result){
			        	   console.log(result);
			           }
			        });
			    });
			});
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
						<a href="javascript:;" target="_blank"><strong>0</strong>条新投递反馈</a> 
						<a class="closeNT" href="javascript:;"></a>
					</div>
				</div>
			</div>
			<div id="container">
				<div class="clearfix">
					<div id="basicInfo" class="profile_box" style="float: left;">
						<h2>基本信息</h2>
						<span class="c_edit dn"></span>
						<div class="basicShow dn">
							<span>${perInfo.pname } | 男 | ${perInfo.education } | ${perInfo.workExperienc }<br>${perInfo.Phone } | ${perInfo.email } <br></span>
							<div class="m_portrait">
								<div></div>
								<img alt="${perInfo.pname }" src="${pageContext.request.contextPath }/resources/images/default_headpic.png" width="120" height="120">
							</div>
						</div>
						<!--end .basicShow-->
						<div class="basicEdit">
							<form id="profileForm" action="${pageContext.request.contextPath }/user/savePerInfo" method="post">
								<table>
									<tbody>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input id="pname" type="text" name="pname" placeholder="姓名" value="${perInfo.pname }"></td>
											<td valign="top"></td>
											<td>
												<ul class="profile_radio clearfix reset">
													<li class="current">
														男<em></em> 
														<input value="男" checked="checked" type="radio" name="gender">
													</li>
													<li>
														女<em></em> 
														<input value="女" type="radio" name="gender">
													</li>
												</ul>
											</td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td>
												<input id="education" type="hidden" name="education" value="${perInfo.education }"> 
												<input id="select_topDegree" class="profile_select_190 profile_select_normal" value="大专" type="button" style="color: rgb(51, 51, 51);">
												<div id="box_topDegree" class="boxUpDown boxUpDown_190 dn" style="display: none;">
													<ul>
														<li>大专</li>
														<li>本科</li>
														<li>硕士</li>
														<li>博士</li>
														<li>其他</li>
													</ul>
												</div>
											</td>
											<td valign="top"><span class="redstar">*</span></td>
											<td>
												<input id="workExperienc" type="hidden" name="workExperienc" value="${perInfo.workExperienc }"> 
												<input id="select_workyear" class="profile_select_190 profile_select_normal" type="button" value="${perInfo.workExperienc }" style="color: rgb(51, 51, 51);">
												<div id="box_workyear" class="boxUpDown boxUpDown_190 dn" style="display: none;">
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
											<td colspan="3"><input id="phone" type="tel" name="phone" placeholder="手机号码" value="${perInfo.Phone }"></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td colspan="3"><input id="email" type="email" name="email" placeholder="请输入接收面试通知的常用邮箱" value="${perInfo.Email }"></td>
										</tr>
										<tr>
											<td valign="top"></td>
											<td colspan="3">
												<input id="currentState" type="hidden" name="currentState" value="我暂时不想找工作" class="valid"> 
												<input id="select_currentState" class="profile_select_410 profile_select_normal" value="我暂时不想找工作" type="button" style="color: rgb(51, 51, 51);">
												<div id="box_currentState" class="boxUpDown boxUpDown_410 dn" style="display: none;">
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
												<input id="city" type="hidden" name="city" value="${perInfo.City }"/> 
												<input id="select_expectCity" class="profile_select_287 profile_select_normal" value=${perInfo.City } type="button" />
												<div id="box_expectCity" class="boxUpDown boxUpDown_596 dn">
													<dl>
														<dt>热门城市</dt>
														<dd>
															<span>北京</span> 
															<span>上海</span> 
															<span>广州</span> 
															<span>深圳</span> 
															<span>成都</span> 
															<span>杭州</span>
														</dd>
													</dl>
													<dl>
														<dt>ABCDEF</dt>
														<dd>
															<span>北京</span> 
															<span>长春</span> 
															<span>成都</span> 
															<span>重庆</span> 
															<span>长沙</span> 
															<span>常熟</span> 
															<span>常州</span> 
															<span>东莞</span> 
															<span>大连</span> 
															<span>东营</span> 
															<span>佛山</span> 
															<span>福州</span>
														</dd>
													</dl>
													<dl>
														<dt>GHIJ</dt>
														<dd>
															<span>贵阳</span> 
															<span>广州</span> 
															<span>哈尔滨</span> 
															<span>合肥</span> 
															<span>海口</span> 
															<span>杭州</span> 
															<span>惠州</span> 
															<span>金华</span> 
															<span>济南</span> 
															<span>嘉兴</span>
														</dd>
													</dl>
													<dl>
														<dt>KLMN</dt>
														<dd>
															<span>昆明</span> 
															<span>昆山</span> 
															<span>廊坊</span> 
															<span>丽水</span> 
															<span>兰州</span> 
															<span>宁波</span> 
															<span>南昌</span> 
															<span>南京</span> 
															<span>南宁</span>
														</dd>
													</dl>
													<dl>
														<dt>OPQR</dt>
														<dd>
															<span>青岛</span> 
															<span>泉州</span>
														</dd>
													</dl>
													<dl>
														<dt>STUV</dt>
														<dd>
															<span>上海</span> 
															<span>石家庄</span> 
															<span>绍兴</span> 
															<span>沈阳</span> 
															<span>深圳</span> 
															<span>苏州</span> 
															<span>天津</span> 
															<span>太原</span> 
															<span>台州</span>
														</dd>
													</dl>
													<dl>
														<dt>WXYZ</dt>
														<dd>
															<span>潍坊</span> 
															<span>武汉</span> 
															<span>乌鲁木齐</span> 
															<span>无锡</span> 
															<span>温州</span> 
															<span>西安</span> 
															<span>厦门</span> 
															<span>徐州</span> 
															<span>烟台</span> 
															<span>珠海</span> 
															<span>镇江</span> 
															<span>湛江</span>
															<span>中山</span> 
															<span>郑州</span>
														</dd>
													</dl>
												</div>
											</td>
										</tr>
										<tr>
											<td></td>
											<td colspan="3">
												<input type="submit" value="提交" class="btn_profile_save">
											</td>
										</tr>									
									</tbody>
								</table>
							</form>
							
							<!--end #profileForm-->
							<div class="new_portrait">
								<div id="portraitNo" class="portrait_upload" style="display: none; background-color: rgb(231, 231, 231);">
									<span>上传自己的头像</span>
								</div>
								<div id="portraitShow" class="portraitShow dn" style="display: block;">
									<img src="${pageContext.request.contextPath }/resources/images/default_headpic.png" width="120" height="120"> <span>更换头像</span>
								</div>
								<input id="headPic" class="myfiles" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="img_check(this,'http://www.lagou.com/resume/uploadPhoto.json','headPic');" type="file" name="headPic">
								<em>尺寸：120*120px <br>大小：小于5M </em> 
								<span style="DISPLAY: none" id="headPic_error" class="error"></span>
							</div>
							<!--end .new_portrait-->
						</div>
						<input id="id" name="id" value="${perInfo.PIID }" type="hidden">
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
			</div>
		</div>
		
		<DIV id=footer>
			<DIV class=wrapper>
				<A href="http://www.lagou.com/about.html" rel=nofollow target=_blank>联系我们</A> 
				<A href="http://www.lagou.com/af/zhaopin.html" target=_blank>互联网公司导航</A> 
				<A href="http://e.weibo.com/lagou720" rel=nofollow target=_blank>掘金微博</A> 
				<A class=footer_qr href="javascript:void(0)" rel=nofollow>掘金微信<I></I></A>
				<DIV class=copyright>
					©2013-2014 Lagou <A href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target=_blank>京ICP备14023790号-2</A>
				</DIV>
			</DIV>
		</DIV>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/Chart.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/profile.min.js"></script>
				
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/core.min.js"></SCRIPT>
		<SCRIPT type=text/javascript src="${pageContext.request.contextPath }/resources/js/popup.min.js"></SCRIPT>
	</body>	
</html>