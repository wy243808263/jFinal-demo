<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>名企招聘-互联网企业招聘-掘金网</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/style.css?v=1.5.5.5_0722_14">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/external.min.css?v=1.5.5.5_0722_14">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/popup.css?v=1.5.5.5_0722_14">
		
		<!-- 引入jquery文件 -->
		<script src="${pageContext.request.contextPath }/resources/js/jquery-1.10.2.js" type="text/javascript"></script>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.lib.min.js?v=1.5.5.5_0722_14"></script>
	</head>
	<body>
		<div id="body">
			<div id="header">
				<div class="wrapper">
					<a href="javascript:;" class="logo"></a>
					<ul class="reset" id="navheader">
						<li><a href="${pageContext.request.contextPath }/user/index">首页</a></li>
						<li class="current"><a href="${pageContext.request.contextPath }/user/getCompanyInfo">公司</a></li>
						<li><a href="${pageContext.request.contextPath }/luntan.jsp" target="_blank" rel="nofollow">论坛</a></li>
						<li><a href="${pageContext.request.contextPath }/user/getPerInfo" rel="nofollow">我的简历</a></li>
					</ul>
					<ul class="loginTop">
						<c:if test="${not empty UsersInfo}">
		        			欢迎${UsersInfo.uname}登录
		        			<a href="${pageContext.request.contextPath }/info.jsp" style="color: black;">个人资料</a>
						</c:if>
						<c:if test="${empty UsersInfo}">
							<li><a href="${pageContext.request.contextPath }/login.jsp" rel="nofollow">登录</a></li>
							<li>|</li>
							<li><a href="${pageContext.request.contextPath }/register.jsp" rel="nofollow">注册</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			<!-- end #header -->
			<div id="container">
				<div class="clearfix">
					<div class="content_l">
						<form id="companyListForm" name="companyListForm" method="get" action="gongsi/0-0-0">
							<dl class="hc_tag">
								<dt id="city">
									<ul class="workplace reset fr" id="workplaceSelect">
										<li><a href="javascript:;" class="current">全国</a> |</li>
										<li><a href="javascript:;">北京</a> |</li>
										<li><a href="javascript:;">上海</a> |</li>
										<li><a href="javascript:;">广州</a> |</li>
										<li><a href="javascript:;">深圳</a> |</li>
										<li><a href="javascript:;">成都</a> |</li>
										<li><a href="javascript:;">杭州</a> |</li>
										<li><a href="javascript:;">武汉</a> |</li>
										<li><a href="javascript:;">南京</a> |</li>
										<li class="more">
											<a href="javascript:;">其他</a>
											<div class="triangle citymore_arrow"></div>
										</li>
										<li id="box_expectCity" class="searchlist_expectCity dn">
											<span class="bot"></span> 
											<span class="top"></span>
											<dl>
												<dt>ABCDEF</dt>
												<dd>
													<a href="javascript:;">北京</a> 
													<a href="javascript:;">长春</a> 
													<a href="javascript:;">成都</a> 
													<a href="javascript:;">重庆</a> 
													<a href="javascript:;">长沙</a> 
													<a href="javascript:;">常熟</a> 
													<a href="javascript:;">常州</a> 
													<a href="javascript:;">东莞</a> 
													<a href="javascript:;">大连</a> 
													<a href="javascript:;">东营</a> 
													<a href="javascript:;">佛山</a> 
													<a href="javascript:;">福州</a>
												</dd>
											</dl>
											<dl>
												<dt>GHIJ</dt>
												<dd>
													<a href="javascript:;">贵阳</a> 
													<a href="javascript:;">广州</a> 
													<a href="javascript:;">哈尔滨</a> 
													<a href="javascript:;">合肥</a> 
													<a href="javascript:;">海口</a> 
													<a href="javascript:;">杭州</a>
													<a href="javascript:;">惠州</a> 
													<a href="javascript:;">金华</a> 
													<a href="javascript:;">济南</a> 
													<a href="javascript:;">嘉兴</a>
												</dd>
											</dl>
											<dl>
												<dt>KLMN</dt>
												<dd>
													<a href="javascript:;">昆明</a> 
													<a href="javascript:;">昆山</a> 
													<a href="javascript:;">廊坊</a> 
													<a href="javascript:;">丽水</a> 
													<a href="javascript:;">兰州</a> 
													<a href="javascript:;">宁波</a>
													<a href="javascript:;">南昌</a> 
													<a href="javascript:;">南京</a> 
													<a href="javascript:;">南宁</a>
												</dd>
											</dl>
											<dl>
												<dt>OPQR</dt>
												<dd>
													<a href="javascript:;">青岛</a> 
													<a href="javascript:;">泉州</a>
												</dd>
											</dl>
											<dl>
												<dt>STUV</dt>
												<dd>
													<a href="javascript:;">上海</a> 
													<a href="javascript:;">石家庄</a> 
													<a href="javascript:;">绍兴</a> 
													<a href="javascript:;">沈阳</a> 
													<a href="javascript:;">深圳</a> 
													<a href="javascript:;">苏州</a> 
													<a href="javascript:;">天津</a> 
													<a href="javascript:;">太原</a> 
													<a href="javascript:;">台州</a>
												</dd>
											</dl>
											<dl>
												<dt>WXYZ</dt>
												<dd>
													<a href="javascript:;">潍坊</a> 
													<a href="javascript:;">武汉</a> 
													<a href="javascript:;">乌鲁木齐</a> 
													<a href="javascript:;">无锡</a> 
													<a href="javascript:;">温州</a> 
													<a href="javascript:;">西安</a>
													<a href="javascript:;">厦门</a> 
													<a href="javascript:;">徐州</a> 
													<a href="javascript:;">烟台</a> 
													<a href="javascript:;">珠海</a> 
													<a href="javascript:;">镇江</a> 
													<a href="javascript:;">湛江</a>
													<a href="javascript:;">中山</a> 
													<a href="javascript:;">郑州</a>
												</dd>
											</dl>
										</li>
									</ul>
								</dt>
								<dd>
									<dl>
										<dt>发展阶段：</dt>
										<dd id="stage">
											<a href="javascript:;" data-fs="1">初创型</a> 
											<a href="javascript:;" data-fs="2">成长型</a> 
											<a href="javascript:;" data-fs="3">成熟型</a> 
											<a href="javascript:;" data-fs="4">已上市</a>
										</dd>
									</dl>
									<dl>
										<dt>行业领域：</dt>
										<dd id="field">
											<a href="javascript:;" data-ifs="24">移动互联网</a> 
											<a href="javascript:;" data-ifs="25">电子商务</a> 
											<a href="javascript:;" data-ifs="26">社交</a> 
											<a href="javascript:;" data-ifs="27">企业服务</a> 
											<a href="javascript:;" data-ifs="28">O2O</a> 
											<a href="javascript:;" data-ifs="29">教育</a> 
											<a href="javascript:;" data-ifs="30">文化艺术</a> 
											<a href="javascript:;" data-ifs="31">游戏</a> 
											<a href="javascript:;" data-ifs="32">在线旅游</a> 
											<a href="javascript:;" data-ifs="33">金融互联网</a> 
											<a href="javascript:;" data-ifs="34">健康医疗</a> 
											<a href="javascript:;" data-ifs="35">生活服务</a> 
											<a href="javascript:;" data-ifs="36">硬件</a> 
											<a href="javascript:;" data-ifs="37">搜索</a> 
											<a href="javascript:;" data-ifs="38">安全</a> 
											<a href="javascript:;" data-ifs="39">运动体育</a> 
											<a href="javascript:;" data-ifs="41">云计算\大数据</a> 
											<a href="javascript:;" data-ifs="42">移动广告</a> 
											<a href="javascript:;" data-ifs="43">社会化营销</a> 
											<a href="javascript:;" data-ifs="44">视频多媒体</a>
											<a href="javascript:;" data-ifs="45">媒体</a> 
											<a href="javascript:;" data-ifs="46">智能家居</a> 
											<a href="javascript:;" data-ifs="47">智能电视</a> 
											<a href="javascript:;" data-ifs="48">分类信息</a> 
											<a href="javascript:;" data-ifs="49">招聘</a>
										</dd>
									</dl>
								</dd>
							</dl>
							<ul class="hc_list reset">
								<c:forEach var="company" items="${companyList}">
									<li style="clear: both;">
										<a href="javascript:;" target="_blank">
											<h3 title="${company.COMPANYNAME }">${company.COMPANYNAME }</h3>
											<div class="comLogo">
												<img src="${pageContext.request.contextPath }/resources/upload/logo/ff80808147ceb77a0147f14e5420014a.png" width="190" height="190" alt="${company.COMPANYNAME }" />
												<ul>
													<li>${company.FIELD }</li>
												</ul>
											</div>
										</a> 
										<a href="javascript:;" class="cl_job" target="_blank"> ${company.FOUNDER }</a> 
										<ul class="reset ctags">
											<li>${company.PLABEL }</li>
										</ul>
									</li>
								</c:forEach>
							</ul>	
							<c:if test="${not empty companyList}">
								<div class="Pagination"></div>
							</c:if>
						</form>
					</div>
					<div class="content_r">
						<div class="subscribe_side">
							<a href="${pageContext.request.contextPath }/user/getSubscription" target="_blank" rel="nofollow">
								<div class="subpos">
									<span>订阅</span> 职位
								</div>
								<div class="c7">掘金网会根据你的筛选条件，定期将符合你要求的职位信息发给你</div>
								<div class="count">
									已有 <em>${fn:length(companyList)}</em> 人订阅
								</div> 
								<i>我也要订阅职位</i>
							</a>
						</div>
						<div class="greybg qrcode mt20">
							<img src="${pageContext.request.contextPath }/resources/images/qr/companylist_qr.png" width="242" height="242" alt="拉勾微信公众号二维码" /> <span class="c7">扫描拉勾二维码，微信轻松搜工作</span>
						</div>
					</div>
				</div>
	
				<input type="hidden" value="${UsersInfo.u_id}" name="userid" id="userid" />
				<script>
					$(function() {
						/*分页 */
						$('.Pagination').pager({
							currPage : 1,
							pageNOName : "pn",
							form : "companyListForm",
							pageCount : 20,
							pageSize : 4
						});
						
						var ctx = "${pageContext.request.contextPath }";
						
						var $li = $("#city").find("ul").find("li");
						$li.each(function(index,data){
							var $str = $(data).find("a");
							$str.each(function(index,data){
								$(data).click(function(){
									var $address = $(this).html();
									window.location.href = ctx + "/user/getCompanyInfo?address="+$address;
								});
							});
						});
						
						$("#stage").find("a").each(function(index,value){
							$(value).click(function(){
								var $stage = $(this).html();
								window.location.href = ctx + "/user/getCompanyInfo?stage="+$stage;
							});
						});
						
						$("#field").find("a").each(function(index,value){
							$(value).click(function(){
								var $field = $(this).html();
								window.location.href = ctx + "/user/getCompanyInfo?field="+$field;
							});
						});
					});
				</script>
				<div class="clear"></div>
				<input type="hidden" id="resubmitToken" value="" /> 
				<a id="backtop" title="回到顶部" rel="nofollow"></a>
			</div>
			<!-- end #container -->
		</div>
		<!-- end #body -->
		<div id="footer">
			<div class="wrapper">
				<a href="about.html" target="_blank" rel="nofollow">联系我们</a> 
				<a href="af/zhaopin.html" target="_blank">互联网公司导航</a> 
				<a href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">掘金微博</a> 
				<a class="footer_qr" href="javascript:void(0)" rel="nofollow">掘金微信<i></i></a>
				<div class="copyright">
					&copy;2013-2014 Lagou <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a>
				</div>
			</div>
		</div>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/core.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/popup.min.js"></script>
	</body>
</html>