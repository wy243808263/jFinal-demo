<%@page import="com.qhit.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<title>掘金网-最专业的互联网招聘平台</title>
		<meta content="掘金网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网" name="description">
		<meta content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招" name="keywords">
		<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		
		<!-- 引入样式文件 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/style.css?v=1.5.5.5_0722_14">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/external.min.css?v=1.5.5.5_0722_14">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/popup.css?v=1.5.5.5_0722_14">
		
		<!-- 引入jquery文件 -->
		<script src="${pageContext.request.contextPath }/resources/js/jquery-1.10.2.js" type="text/javascript"></script>
		
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.lib.min.js?v=1.5.5.5_0722_14"></script>
		<SCRIPT type=text/javascript>
			var ctx = "${pageContext.request.contextPath}";
		</SCRIPT>
	</head>
	<body>
		<div id="body">
			<div id="header">
				<div class="wrapper">
					<a href="" class="logo"></a>
					<ul class="reset" id="navheader">
						<li class="current"><a href="${pageContext.request.contextPath }/user/index">首页</a></li>
						<li><a href="${pageContext.request.contextPath }/user/getCompanyInfo">公司</a></li>
						<li><a href="luntan.htm" target="_blank" rel="nofollow">论坛</a></li>
						<li><a href="${pageContext.request.contextPath }/user/getPerInfo" rel="nofollow">我的简历</a></li>
					</ul>
					<ul class="loginTop">
						<c:if test="${not empty UsersInfo}">
		        			欢迎${UsersInfo.uname}登录 <a href="${pageContext.request.contextPath }/user/getInfo" style="color: black;">个人资料</a>
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
				<div id="sidebar">
					<div class="mainNavs">
						<div class="menu_box">
							<div class="menu_main">
								<h2>技术 <span></span></h2>
								<a href="javazhaopin.htm">Java</a> 
								<a href="zhaopin/PHP?labelWords=label">PHP</a> 
								<a href="zhaopin/C?labelWords=label">C</a> 
								<a href="zhaopin/C++?labelWords=label">C++</a> 
								<a href="zhaopin/Android?labelWords=label">Android</a> 
								<a href="zhaopin/iOS?labelWords=label">iOS</a> 
								<a href="zhaopin/qianduankaifa?labelWords=label">前端开发</a> 
								<a href="zhaopin/ceshi?labelWords=label">测试</a> 
								<a href="zhaopin/jishujingli?labelWords=label">技术经理</a> 
								<a href="zhaopin/xiangmujingli?labelWords=label">项目经理</a> 
								<a href="zhaopin/jiagoushi?labelWords=label">架构师</a>
							</div>
							<div class="menu_sub dn">
								<dl class="reset">
									<dt>
										<a href="zhaopin/houduankaifa?labelWords=label"></a>
									</dt>
									<dd>
										<a href="zhaopin/Java?labelWords=label">Java</a> 
										<a href="java.htm">C++</a> 
										<a href="zhaopin/PHP?labelWords=label">PHP</a> 
										<a href="zhaopin/shujuwajue?labelWords=label">数据挖掘</a> 
										<a href="zhaopin/C?labelWords=label">C</a> 
										<a href="zhaopin/C%23?labelWords=label">C#</a> 
										<a href="zhaopin/.NET?labelWords=label">.NET</a> 
										<a href="zhaopin/Hadoop?labelWords=label">Hadoop</a> 
										<a href="zhaopin/Python?labelWords=label">Python</a> 
										<a href="zhaopin/Delphi?labelWords=label">Delphi</a> 
										<a href="zhaopin/VB?labelWords=label">VB</a> 
										<a href="zhaopin/Perl?labelWords=label">Perl</a>
										<a href="zhaopin/Ruby?labelWords=label">Ruby</a> 
										<a href="zhaopin/Node.js?labelWords=label">Node.js</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/yidongkaifa?labelWords=label"></a>
									</dt>
									<dd>
										<a href="zhaopin/HTML5?labelWords=label">HTML5</a> <a href="zhaopin/Android?labelWords=label">Android</a> <a href="zhaopin/iOS?labelWords=label">iOS</a> <a href="zhaopin/WP?labelWords=label">WP</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/qianduankaifa?labelWords=label"></a>
									</dt>
									<dd>
										<a href="zhaopin/webqianduan?labelWords=label">web前端</a> <a href="zhaopin/Flash?labelWords=label">Flash</a> <a href="zhaopin/html51?labelWords=label">html5</a> <a
											href="zhaopin/JavaScript?labelWords=label">JavaScript</a> <a href="zhaopin/U3D?labelWords=label">U3D</a> <a href="zhaopin/COCOS2D-X?labelWords=label">COCOS2D-X</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/ceshi?labelWords=label"> 测试 </a>
									</dt>
									<dd>
										<a href="zhaopin/ceshigongchengshi?labelWords=label">测试工程师</a>
										<a href="zhaopin/zidonghuaceshi?labelWords=label">自动化测试</a>
										<a href="zhaopin/gongnengceshi?labelWords=label">功能测试</a>
										<a href="zhaopin/xingnengceshi?labelWords=label">性能测试</a>
										<a href="zhaopin/ceshikaifa?labelWords=label">测试开发</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/yunwei?labelWords=label"> 运维 </a>
									</dt>
									<dd>
										<a href="zhaopin/yunweigongchengshi?labelWords=label">运维工程师</a>
										<a href="zhaopin/yunweikaifagongchengshi?labelWords=label">运维开发工程师</a>
										<a href="zhaopin/wangluogongchengshi?labelWords=label">网络工程师</a>
										<a href="zhaopin/xitonggongchengshi?labelWords=label">系统工程师</a>
										<a href="zhaopin/ITzhichi?labelWords=label">IT支持</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/DBA?labelWords=label"> DBA </a>
									</dt>
									<dd>
										<a href="zhaopin/MySQL?labelWords=label">MySQL</a>
										<a href="zhaopin/SQLServer?labelWords=label">SQLServer</a>
										<a href="zhaopin/Oracle?labelWords=label">Oracle</a>
										<a href="zhaopin/DB2?labelWords=label">DB2</a>
										<a href="zhaopin/MongoDB?labelWords=label">MongoDB</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/xiangmuguanli?labelWords=label"> 项目管理 </a>
									</dt>
									<dd>
										<a href="zhaopin/xiangmujingli?labelWords=label" class="curr">项目经理</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/gaoduanjishuzhiwei?labelWords=label"> 高端职位 </a>
									</dt>
									<dd>
										<a href="zhaopin/jishujingli?labelWords=label" class="curr">技术经理</a>
										<a href="zhaopin/jishuzongjian?labelWords=label">技术总监</a>
										<a href="zhaopin/ceshijingli?labelWords=label">测试经理</a>
										<a href="zhaopin/jiagoushi?labelWords=label" class="curr">架构师</a> 
										<a href="zhaopin/CTO?labelWords=label">CTO</a>
										<a href="zhaopin/yunweizongjian?labelWords=label">运维总监</a>
									</dd>
								</dl>
							</div>
						</div>
						<div class="menu_box">
							<div class="menu_main">
								<h2>
									产品 <span></span>
								</h2>
								<a href="zhaopin/chanpinjingli1?labelWords=label">产品经理</a> 
								<a href="zhaopin/chanpinzhuli?labelWords=label">产品助理</a> 
								<a href="zhaopin/wuxianchanpinjingli?labelWords=label">无线产品经理</a> 
								<a href="zhaopin/youxicehua?labelWords=label">游戏策划</a>
							</div>
							<div class="menu_sub dn">
								<dl class="reset">
									<dt>
										<a href="zhaopin/chanpinjingli?labelWords=label"> 产品经理 </a>
									</dt>
									<dd>
										<a href="zhaopin/chanpinjingli1?labelWords=label" class="curr">产品经理</a>
										<a href="zhaopin/wangyechanpinjingli?labelWords=label">网页产品经理</a>
										<a href="zhaopin/yidongchanpinjingli?labelWords=label">移动产品经理</a>
										<a href="zhaopin/chanpinzhuli?labelWords=label" class="curr">产品助理</a>
										<a href="zhaopin/shujuchanpinjingli?labelWords=label">数据产品经理</a>
										<a href="zhaopin/dianshangchanpinjingli?labelWords=label">电商产品经理</a>
										<a href="zhaopin/youxicehua?labelWords=label" class="curr">游戏策划</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/chanpinshejishi?labelWords=label"> 产品设计师 </a>
									</dt>
									<dd>
										<a href="zhaopin/wangyechanpinshejishi?labelWords=label">网页产品设计师</a>
										<a href="zhaopin/wuxianchanpinshejishi?labelWords=label">无线产品设计师</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/gaoduanchanpinzhiwei?labelWords=label"> 高端职位 </a>
									</dt>
									<dd>
										<a href="zhaopin/chanpinbujingli?labelWords=label">产品部经理</a>
										<a href="zhaopin/chanpinzongjian?labelWords=label">产品总监</a>
									</dd>
								</dl>
							</div>
						</div>
						<div class="menu_box">
							<div class="menu_main">
								<h2>
									设计 <span></span>
								</h2>
								<a href="zhaopin/UI?labelWords=label">UI</a> 
								<a href="zhaopin/UE?labelWords=label">UE</a> 
								<a href="zhaopin/shejishi?labelWords=label">设计师</a> 
								<a href="zhaopin/jiaohusheji?labelWords=label">交互设计</a>
								<a href="zhaopin/shujufenxi?labelWords=label">数据分析</a>
							</div>
							<div class="menu_sub dn">
								<dl class="reset">
									<dt>
										<a href="zhaopin/shijuesheji?labelWords=label"> 视觉设计 </a>
									</dt>
									<dd>
										<a href="zhaopin/shijueshejishi?labelWords=label">视觉设计师</a>
										<a href="zhaopin/wangyeshejishi?labelWords=label">网页设计师</a>
										<a href="zhaopin/Flashshejishi?labelWords=label">Flash设计师</a>
										<a href="zhaopin/APPshejishi?labelWords=label">APP设计师</a>
										<a href="zhaopin/UIshejishi?labelWords=label">UI设计师</a>
										<a href="zhaopin/pingmianshejishi?labelWords=label">平面设计师</a>
										<a href="zhaopin/meishushejishi%EF%BC%882D3D%EF%BC%89?labelWords=label">美术设计师（2D/3D）</a>
										<a href="zhaopin/guanggaoshejishi?labelWords=label">广告设计师</a>
										<a href="zhaopin/duomeitishejishi?labelWords=label">多媒体设计师</a>
										<a href="zhaopin/yuanhuashi?labelWords=label">原画师</a>
										<a href="zhaopin/youxitexiao?labelWords=label">游戏特效</a>
										<a href="zhaopin/youxijiemianshejishi?labelWords=label">游戏界面设计师</a>
										<a href="zhaopin/youxichangjing?labelWords=label">游戏场景</a>
										<a href="zhaopin/youxijiaose?labelWords=label">游戏角色</a>
										<a href="zhaopin/youxidongzuo?labelWords=label">游戏动作</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/jiaohusheji?labelWords=label"> 交互设计 </a>
									</dt>
									<dd>
										<a href="zhaopin/jiaohushejishi1?labelWords=label">交互设计师</a>
										<a href="zhaopin/wuxianjiaohushejishi?labelWords=label">无线交互设计师</a>
										<a href="zhaopin/wangyejiaohushejishi?labelWords=label">网页交互设计师</a>
										<a href="zhaopin/yingjianjiaohushejishi?labelWords=label">硬件交互设计师</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/yonghuyanjiu?labelWords=label"> 用户研究 </a>
									</dt>
									<dd>
										<a href="zhaopin/shujufenxishi?labelWords=label">数据分析师</a>
										<a href="zhaopin/yonghuyanjiuyuan?labelWords=label">用户研究员</a>
										<a href="zhaopin/youxishuzhicehua?labelWords=label">游戏数值策划</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/gaoduanshejizhiwei?labelWords=label"> 高端职位 </a>
									</dt>
									<dd>
										<a href="zhaopin/shejijinglizhuguan?labelWords=label">设计经理/主管</a>
										<a href="zhaopin/shejizongjian?labelWords=label">设计总监</a>
										<a href="zhaopin/shijueshejijinglizhuguan?labelWords=label">视觉设计经理/主管</a>
										<a href="zhaopin/shijueshejizongjian?labelWords=label">视觉设计总监</a>
										<a href="zhaopin/jiaohushejijinglizhuguan?labelWords=label">交互设计经理/主管</a>
										<a href="zhaopin/jiaohushejizongjian?labelWords=label">交互设计总监</a>
										<a href="zhaopin/yonghuyanjiujinglizhuguan?labelWords=label">用户研究经理/主管</a>
										<a href="zhaopin/yonghuyanjiuzongjian?labelWords=label">用户研究总监</a>
									</dd>
								</dl>
							</div>
						</div>
						<div class="menu_box">
							<div class="menu_main">
								<h2>
									运营 <span></span>
								</h2>
								<a href="zhaopin/yunying1?labelWords=label">运营</a> 
								<a href="zhaopin/youxiyunying?labelWords=label">游戏运营</a> 
								<a href="zhaopin/bianji?labelWords=label">编辑</a>
							</div>
							<div class="menu_sub dn">
								<dl class="reset">
									<dt>
										<a href="zhaopin/yunying1?labelWords=label"> 运营 </a>
									</dt>
									<dd>
										<a href="zhaopin/yonghuyunying?labelWords=label">用户运营</a>
										<a href="zhaopin/chanpinyunying?labelWords=label">产品运营</a>
										<a href="zhaopin/shujuyunying?labelWords=label">数据运营</a>
										<a href="zhaopin/neirongyunying?labelWords=label">内容运营</a>
										<a href="zhaopin/huodongyunying?labelWords=label">活动运营</a>
										<a href="zhaopin/shangjiayunying?labelWords=label">商家运营</a>
										<a href="zhaopin/pinleiyunying?labelWords=label">品类运营</a>
										<a href="zhaopin/youxiyunying?labelWords=label" class="curr">游戏运营</a>
										<a href="zhaopin/wangluotuiguang?labelWords=label">网络推广</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/bianji?labelWords=label"> 编辑 </a>
									</dt>
									<dd>
										<a href="zhaopin/fuzhubian?labelWords=label">副主编</a>
										<a href="zhaopin/neirongbianji?labelWords=label">内容编辑</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/kefu?labelWords=label"> 客服 </a>
									</dt>
									<dd>
										<a href="zhaopin/shouqianzixun?labelWords=label">售前咨询</a>
										<a href="zhaopin/shouhoukefu?labelWords=label">售后客服</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/gaoduanyunyingzhiwei?labelWords=label"> 高端职位 </a>
									</dt>
									<dd>
										<a href="zhaopin/zhubian?labelWords=label">主编</a>
										<a href="zhaopin/yunyingzongjian?labelWords=label">运营总监</a>
										<a href="zhaopin/COO?labelWords=label">COO</a>
									</dd>
								</dl>
							</div>
						</div>
						<div class="menu_box">
							<div class="menu_main">
								<h2>
									市场与销售 <span></span>
								</h2>
								<a href="zhaopin/shichangtuiguang?labelWords=label">市场推广</a> 
								<a href="zhaopin/shichangcehua?labelWords=label">市场策划</a> 
								<a href="zhaopin/huodongcehua?labelWords=label">活动策划</a> 
								<a href="zhaopin/BD?labelWords=label">BD</a> 
								<a href="zhaopin/xiaoshoujingli?labelWords=label">销售经理</a>
							</div>
							<div class="menu_sub dn">
								<dl class="reset">
									<dt>
										<a href="zhaopin/shichangyingxiao?labelWords=label"> 市场/营销 </a>
									</dt>
									<dd>
										<a href="zhaopin/shichangyingxiao1?labelWords=label">市场营销</a>
										<a href="zhaopin/shichangcehua?labelWords=label" class="curr">市场策划</a>
										<a href="zhaopin/shichangguwen?labelWords=label">市场顾问</a>
										<a href="zhaopin/shichangtuiguang?labelWords=label" class="curr">市场推广</a>
										<a href="zhaopin/SEO?labelWords=label">SEO</a>
										<a href="zhaopin/SEM?labelWords=label">SEM</a>
										<a href="zhaopin/shangwuqudao?labelWords=label">商务渠道</a>
										<a href="zhaopin/shangyeshujufenxi?labelWords=label">商业数据分析</a>
										<a href="zhaopin/huodongcehua?labelWords=label" class="curr">活动策划</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/gongguan?labelWords=label"> 公关 </a>
									</dt>
									<dd>
										<a href="zhaopin/meijiejingli?labelWords=label">媒介经理</a>
										<a href="zhaopin/guanggaoxiediao?labelWords=label">广告协调</a>
										<a href="zhaopin/pinpaigongguan?labelWords=label">品牌公关</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/xiaoshou?labelWords=label"> 销售 </a>
									</dt>
									<dd>
										<a href="zhaopin/xiaoshouzhuanyuan?labelWords=label">销售专员</a>
										<a href="zhaopin/xiaoshoujingli?labelWords=label" class="curr">销售经理</a> 
										<a href="zhaopin/kehudaibiao?labelWords=label">客户代表</a>
										<a href="zhaopin/dakehudaibiao?labelWords=label">大客户代表</a>
										<a href="zhaopin/BDjingli?labelWords=label">BD经理</a>
										<a href="zhaopin/shangwuqudao1?labelWords=label">商务渠道</a>
										<a href="zhaopin/qudaoxiaoshou?labelWords=label">渠道销售</a>
										<a href="zhaopin/dailishangxiaoshou?labelWords=label">代理商销售</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/gaoduanshichangzhiwei?labelWords=label"> 高端职位 </a>
									</dt>
									<dd>
										<a href="zhaopin/shichangzongjian?labelWords=label">市场总监</a>
										<a href="zhaopin/xiaoshouzongjian?labelWords=label">销售总监</a>
										<a href="zhaopin/shangwuzongjian?labelWords=label">商务总监</a>
										<a href="zhaopin/CMO?labelWords=label">CMO</a>
										<a href="zhaopin/gongguanzongjian?labelWords=label">公关总监</a>
									</dd>
								</dl>
							</div>
						</div>
						<div class="menu_box">
							<div class="menu_main">
								<h2>
									职能 <span></span>
								</h2>
								<a href="zhaopin/HR?labelWords=label">HR</a> <a href="zhaopin/xingzheng1?labelWords=label">行政</a> <a href="zhaopin/kuaiji?labelWords=label">会计</a> <a href="zhaopin/chuna?labelWords=label">出纳</a>
							</div>
							<div class="menu_sub dn">
								<dl class="reset">
									<dt>
										<a href="zhaopin/renliziyuan?labelWords=label"> 人力资源 </a>
									</dt>
									<dd>
										<a href="zhaopin/renliziyuan1?labelWords=label">人力资源</a>
										<a href="zhaopin/zhaopin?labelWords=label">招聘</a>
										<a href="zhaopin/HRBP?labelWords=label">HRBP</a>
										<a href="zhaopin/renshiHR?labelWords=label">人事/HR</a>
										<a href="zhaopin/peixunjingli?labelWords=label">培训经理</a>
										<a href="zhaopin/xinzifulijingli?labelWords=label">薪资福利经理</a>
										<a href="zhaopin/jixiaokaohejingli?labelWords=label">绩效考核经理</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/xingzheng?labelWords=label"> 行政 </a>
									</dt>
									<dd>
										<a href="zhaopin/zhuli?labelWords=label">助理</a>
										<a href="zhaopin/qiantai?labelWords=label">前台</a>
										<a href="zhaopin/fawu?labelWords=label">法务</a>
										<a href="zhaopin/xingzheng1?labelWords=label" class="curr">行政</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/caiwu?labelWords=label"> 财务 </a>
									</dt>
									<dd>
										<a href="zhaopin/kuaiji?labelWords=label" class="curr">会计</a>
										<a href="zhaopin/chuna?labelWords=label" class="curr">出纳</a> 
										<a href="zhaopin/caiwu1?labelWords=label">财务</a>
									</dd>
								</dl>
								<dl class="reset">
									<dt>
										<a href="zhaopin/gaoduanzhinengzhiwei?labelWords=label"> 高端职位 </a>
									</dt>
									<dd>
										<a href="zhaopin/xingzhengzongjianjingli?labelWords=label">行政总监/经理</a>
										<a href="zhaopin/caiwuzongjianjingli?labelWords=label">财务总监/经理</a>
										<a href="zhaopin/HRDHRM?labelWords=label">HRD/HRM</a>
										<a href="zhaopin/CFO?labelWords=label">CFO</a>
									</dd>
								</dl>
							</div>
						</div>
					</div>
					<div class="subscribe">
						<a href="javascript:;" target="_blank">订阅职位</a>
						<a id="n_rss" href="${pageContext.request.contextPath}/user/getSubscription" target="_blank">&nbsp;</a>
					</div>
				</div>
				<div class="content">
					<div id="search_box">
						<form id="searchForm" name="searchForm" action="${pageContext.request.contextPath}/user/index" method="post">
							<ul id="searchType">
								<li data-searchtype="1" class="type_selected">职位</li>
								<li data-searchtype="4">公司</li>
							</ul>
							<div class="searchtype_arrow"></div>
							<input type="text" id="search_input" name="kd" tabindex="1" placeholder="请输入职位名称，如：产品经理" /> 
							<input type="submit" id="search_button" value="搜索" />
						</form>
						<input type="hidden" id="search_py" value="">
					</div>
					<style>
						.ui-autocomplete {
							width: 488px;
							background: #fafafa !important;
							position: relative;
							z-index: 10;
							border: 2px solid #91cebe;
						}
						
						.ui-autocomplete-category {
							font-size: 16px;
							color: #999;
							width: 50px;
							position: absolute;
							z-index: 11;
							right: 0px; /*top: 6px; */
							text-align: center;
							border-top: 1px dashed #e5e5e5;
							padding: 5px 0;
						}
						
						.ui-menu-item {
							*width: 439px;
							vertical-align: middle;
							position: relative;
							margin: 0px;
							margin-right: 50px !important;
							background: #fff;
							border-right: 1px dashed #ededed;
						}
						
						.ui-menu-item a {
							display: block;
							overflow: hidden;
						}
					</style>
					<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/search/search.min.js?v=1.5.5.5_0722_14"></script>
					<dl class="hotSearch">
						<dt>热门搜索：</dt>
						<c:forEach var="p" items="${posList}">
							<dd>
								<a href="${pageContext.request.contextPath }/user/index?kd=${p.PositionName}">${p.PositionName}</a>
							</dd>
						</c:forEach>
					</dl>
					<div id="home_banner">
						<ul class="banner_bg">
							<li class="banner_bg_1 current">
								<a href="javascript:;" target="_blank">
									<img src="${pageContext.request.contextPath }/upload/indexPromotionImage/42a21f2cc69f4fe0b1ebb6b17cb45df9.jpg" width="612" height="160" alt="三体迷跳槽专场" />
								</a>
							</li>
							<li class="banner_bg_2">
								<a href="javascript:;" target="_blank">
									<img src="${pageContext.request.contextPath }/upload/indexPromotionImage/7cbe4b3c1173432abb5a36c503f5ff3e.jpg" width="612" height="160" alt="ZEALER" />
								</a>
							</li>
							<li class="banner_bg_3">
								<a href="javascript:;" target="_blank">
									<img src="${pageContext.request.contextPath }/upload/indexPromotionImage/ff80808147ceb77a0147d7d8db450065.jpg" width="612" height="160" alt="史上最牛临时工揭晓" />
								</a>
							</li>
						</ul>
						<div class="banner_control">
							<em></em>
							<ul class="thumbs">
								<li class="thumbs_1 current"><i></i> <img src="${pageContext.request.contextPath }/upload/indexPromotionSmallImage/79ac162bbfb74140b76b4900c89f57f4.png" width="113" height="42" /></li>
								<li class="thumbs_2"><i></i> <img src="${pageContext.request.contextPath }/upload/indexPromotionSmallImage/fe097ff8187b4bc792665ce090c291ab.png" width="113" height="42" /></li>
								<li class="thumbs_3"><i></i> <img src="${pageContext.request.contextPath }/upload/indexPromotionSmallImage/ff80808147ceb77a0147d7d904450066.jpg" width="113" height="42" /></li>
							</ul>
						</div>
					</div>
					<!--/#main_banner-->
	
					<ul id="da-thumbs" class="da-thumbs">
						<li>
							<a href="javascript:;" target="_blank"> 
								<img src="${pageContext.request.contextPath }/upload/promotion/ff80808147ceb77a0147ddb13a3600ad.jpg" width="113" height="113" alt="豆果网" />
								<div class="hot_info">
									<h2 title="豆果网">豆果网</h2>
									<em></em>
									<p title="互联网领先的美食发现、分享、交流互动社区">互联网领先的美食发现、分享、交流互动社区</p>
								</div>
							</a>
						</li>
						<li>
							<a href="javascript:;" target="_blank"> 
								<img src="${pageContext.request.contextPath }/upload/promotion/ff80808147ceb77a0147ddbabd7000b3.png" width="113" height="113" alt="37游戏" />
								<div class="hot_info">
									<h2 title="37游戏">37游戏</h2>
									<em></em>
									<p title="致力于网页游戏运营与移动游戏的研发及运营">致力于网页游戏运营与移动游戏的研发及运营</p>
								</div>
							</a>
						</li>
						<li>
							<a href="gongsi/28864.html" target="_blank"> 
								<img src="${pageContext.request.contextPath }/upload/promotion/ff80808147ceb77a0147ddb8083200b0.png" width="113" height="113" alt="洋货码头" />
								<div class="hot_info">
									<h2 title="洋货码头">洋货码头</h2>
									<em></em>
									<p title="致力于做进口食品">致力于做进口食品</p>
								</div>
							</a>
						</li>
						<li>
							<a href="gongsi/7876.html" target="_blank"> 
								<img src="${pageContext.request.contextPath }/upload/promotion/ff80808147ceb77a0147ddb32e4500ae.png" width="113" height="113" alt="鼎程" />
								<div class="hot_info">
									<h2 title="鼎程">鼎程</h2>
									<em></em>
									<p title="专门给企业提供各种金融服务的互联网金融公司">专门给企业提供各种金融服务的互联网金融公司</p>
								</div>
							</a>
						</li>
						<li>
							<a href="gongsi/656.html" target="_blank"> <img src="${pageContext.request.contextPath }/upload/promotion/ff80808147ceb77a0147ddb935e500b1.png" width="113" height="113" alt="欢聚时代" />
								<div class="hot_info">
									<h2 title="欢聚时代">欢聚时代</h2>
									<em></em>
									<p title="中国最大的互联网语言平台提供商">中国最大的互联网语言平台提供商</p>
								</div>
							</a>
						</li>
						<li class="last">
							<a href="gongsi/177.html" target="_blank"> 
								<img src="${pageContext.request.contextPath }/upload/promotion/ff80808147ceb77a0147ddb66cfe00af.png" width="113" height="113" alt="股票雷达" />
								<div class="hot_info">
									<h2 title="股票雷达">股票雷达</h2>
									<em></em>
									<p title="基于海量信息统计量化的股票分析预测平台">基于海量信息统计量化的股票分析预测平台</p>
								</div>
						</a></li>
					</ul>
	
					<ul class="reset hotabbing">
						<li class="current">热门职位</li>
						<li>最新职位</li>
					</ul>
					<div id="hotList">
						<ul class="hot_pos hot_posHotPosition reset">
							<c:forEach var="company" items="${companyList}">
								<li class="clearfix">
									<div class="hot_pos_l">
										<div class="mb10">
											<a href="${pageContext.request.contextPath }/user/shequ?cid=${company.CID}" target="_blank">${company.CURRENTSTAGE}</a> &nbsp; <span class="c9">[${company.BUSINESSADDRESS}]</span>
										</div>
										<span><em class="c7">月薪： </em>${company.PLABEL}</span> 
										<span><em class="c7">经验：</em> ${company.CURRENTSTAGE}</span> 
										<span><em class="c7">最低学历： </em>${company.MinEducation}</span> <br /> 
										<span><em class="c7">职位诱惑：</em>${company.PositionTemptation}</span> <br />
										<span><fmt:formatDate pattern="yyyy-MM-dd" value="${company.ReleaseTime}"/></span>										
									</div>
									<div class="hot_pos_r">
										<div class="mb10 recompany">
											<a href="${company.COMPANYURL}" target="_blank">${company.COMPANYNAME}</a>
										</div>
										<span><em class="c7">领域：</em> ${company.FIELD}</span> 
										<span><em class="c7">创始人：</em>${company.FOUNDER}</span> <br /> 
										<span><em class="c7">阶段：</em> ${company.SCALE}</span> 
										<span><em class="c7">规模：</em>${company.STAGE}</span>
										<ul class="companyTags reset">
											<li>${company.PLABEL}</li>
										</ul>
									</div>
								</li>
							</c:forEach>
							<a href="javascript:;" class="btn fr" target="_blank">查看更多</a>
						</ul>
						<ul class="hot_pos latest_posHotPosition reset" style="display: none;">
							<c:forEach var="company" items="${companyList}">
								<li class="clearfix">
									<div class="hot_pos_l">
										<div class="mb10">
											<a href="${pageContext.request.contextPath }/user/shequ" target="_blank">${company.CURRENTSTAGE}</a> &nbsp; <span class="c9">[${company.BUSINESSADDRESS}]</span>
										</div>
										<span><em class="c7">月薪： </em>${company.PLABEL}</span> 
										<span><em class="c7">经验：</em> ${company.CURRENTSTAGE}</span> 
										<span><em class="c7">最低学历： </em>${company.MinEducation}</span> <br /> 
										<span><em class="c7">职位诱惑：</em>${company.PositionTemptation}</span> <br />
										<span><fmt:formatDate pattern="yyyy-MM-dd" value="${company.ReleaseTime}"/></span>
									</div>
									<div class="hot_pos_r">
										<div class="mb10 recompany">
											<a href="${company.COMPANYURL}" target="_blank">${company.COMPANYNAME}</a>
										</div>
										<span><em class="c7">领域：</em> ${company.FIELD}</span> 
										<span><em class="c7">创始人：</em>${company.FOUNDER}</span> <br /> 
										<span><em class="c7">阶段：</em> ${company.SCALE}</span> 
										<span><em class="c7">规模：</em>${company.STAGE}</span>
										<ul class="companyTags reset">
											<li>${company.PLABEL}</li>
										</ul>
									</div>
								</li>
							</c:forEach>
							<a href="zhaopin/" class="btn fr" target="_blank">查看更多</a>
						</ul>
					</div>
	
					<div class="clear"></div>
					<div id="linkbox">
						<dl>
							<dt>友情链接</dt>
							<dd>
								<a href="http://www.kanzhun.com/" target="_blank">看准网</a> 
								<span>|</span> 
								<a href="http://www.zhuqu.com/" target="_blank">住趣家居网</a> 
								<span>|</span> 
								<a href="http://www.woshipm.com/" target="_blank">人人都是产品经理</a> 
								<span>|</span> 
								<a href="http://zaodula.com/" target="_blank">互联网er的早读课</a> 
								<span>|</span> 
								<a href="http://www.tmtpost.com/" target="_blank">钛媒体网</a> 
								<span>|</span>
								<a href="http://www.ucloud.cn/" target="_blank">UCloud</a> 
								<span>|</span> 
								<a href="http://www.ui.cn/" target="_blank">UI中国</a> 
								<span>|</span> 
								<a href="http://www.html5dw.com/" target="_blank">html5梦工厂</a>
								<a href="http://www.sykong.com/" target="_blank">手游那点事</a> 
								<span>|</span> 
								<a href="http://www.php100.com/" target="_blank">php100</a> 
								<span>|</span> 
								<a href="http://www.uehtml.com/" target="_blank">uehtml</a> 
								<span>|</span> 
								<a href="http://www.w3cplus.com/" target="_blank">W3CPlus</a> 
								<span>|</span> 
								<a href="http://www.uimaker.com/" target="_blank">uimaker</a> 
								<span>|</span>
								<a href="http://www.yixieshi.com/" target="_blank">互联网的一些事</a> 
								<span>|</span> 
								<a href="http://www.chuanke.com/" target="_blank">传课网</a> 
								<span>|</span> 
								<a href="http://www.eoe.cn/" target="_blank">安卓开发</a> 
								<span>|</span> 
								<a href="http://www.eoeandroid.com/" target="_blank">安卓开发论坛</a> 
								<a href="http://hao.360.cn/" target="_blank">360安全网址导航</a> 
								<span>|</span> 
								<a href="http://se.360.cn/" target="_blank">360安全浏览器</a> 
								<span>|</span> 
								<a href="http://www.hao123.com/" target="_blank">hao123上网导航</a> 
								<span>|</span> 
								<a href="http://www.ycpai.com" target="_blank">互联网创业</a>
								<span>|</span> 
								<a href="http://www.zhongchou.cn" target="_blank">众筹网</a>
								<span>|</span> 
								<a href="http://www.marklol.com/" target="_blank">马克互联网</a>
								<span>|</span> 
								<a href="http://www.chaohuhr.com/" target="_blank">巢湖英才网</a> 
								<a href="http://www.zhubajie.com/" target="_blank">创意服务外包</a>
								<span>|</span> 
								<a href="http://www.thinkphp.cn/" target="_blank">thinkphp</a>
								<span>|</span>
								<a href="http://www.chuangxinpai.com/" target="_blank">创新派</a>
								<span>|</span> 
								<a href="http://w3cshare.com/" target="_blank">W3Cshare</a>
								<span>|</span> 
								<a href="http://www.518lunwen.cn/" target="_blank">论文发表网</a>
								<span>|</span> 
								<a href="http://www.199it.com" target="_blank">199it</a>
								<span>|</span> 
								<a href="http://www.shichangbu.com" target="_blank">市场部网</a>
								<span>|</span> 
								<a href="http://www.meitu.com/" target="_blank">美图公司</a>
								<span>|</span> 
								<a href="https://www.teambition.com/" target="_blank">Teambition</a> 
								<a href="http://oupeng.com/" target="_blank">欧朋浏览器</a>
								<span>|</span>
								<a href="http://iwebad.com/" target="_blank">网络广告人社区</a>
								<span>|</span> 
								<a href="http://www.jikexueyuan.com/" target="_blank">安卓开发教程</a>
								<span>|</span> 
								<a href="https://www.yinhu.com/" target="_blank">银湖网</a> 
								<a href="af/flink.html" target="_blank" class="more" rel="nofollow">更多</a>
							</dd>
						</dl>
					</div>
				</div>
				<input type="hidden" value="${UsersInfo.uname }" name="userid" id="userid" />
	
				<c:if test="${empty UsersInfo}">
					<div id="loginToolBar">
						<div>
							<em></em> 
							<img src="${pageContext.request.contextPath }/resources/images/footbar_logo.png" width="138" height="45" /> 
							<span class="companycount"></span> 
							<span class="positioncount"></span> 
							<a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
							<div class="right">
								<a href="javascript:;" class="bar_register" id="bar_register" target="_blank"><i></i></a>
							</div>
							<input type="hidden" id="cc" value="21552" /> 
							<input type="hidden" id="cp" value="149023" />
						</div>
					</div>
				</c:if>
				<c:if test="${not empty UsersInfo}">
				</c:if>
				
				<!-------------------------------------弹窗lightbox  ----------------------------------------->
				<div style="display: none;">
					<!-- 登录框 -->
					<div id="loginPop" class="popup" style="height: 240px;">
						<form id="loginForm" action="${pageContext.request.contextPath }/user/userLogin" method="post">
							<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" /> 
							<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" /> 
							<span class="error" style="display: none;" id="beError"></span> 
							<label class="fl" for="remember">
							<input type="checkbox" id="remember" checked="checked" name="autoLogin" /> 记住我</label> 
							<a href="javascript:;" class="fr">忘记密码？</a> 
							<input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
						</form>
						
						<!-- 第三方登录 -->
						<div class="login_right">
							<div>还没有拉勾帐号？</div>
							<a href="${pageContext.request.contextPath }/register.jsp" class="registor_now">立即注册</a>
							<div class="login_others">使用以下帐号直接登录:</div>
							<a href="javascript:;" target="_blank" id="icon_wb" class="icon_wb" title="使用新浪微博帐号登录"></a> 
							<a href="javascript:;" class="icon_qq" id="icon_qq" target="_blank" title="使用腾讯QQ帐号登录"></a>
						</div>
					</div>
					<!--/#loginPop-->
				</div>
				<!------------------------------------- end ----------------------------------------->
				<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/Chart.min.js?v=1.5.5.5_0722_14"></script>
				<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/home.min.js?v=1.5.5.5_0722_14"></script>
				<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/count.js?v=1.5.5.5_0722_14"></script>
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
				<a href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">拉勾微博</a> 
				<a class="footer_qr" href="javascript:void(0)" rel="nofollow">拉勾微信<i></i></a>
				<div class="copyright">
					&copy;2013-2014 Lagou <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a>
				</div>
			</div>
		</div>
	
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/core.min.js?v=1.5.5.5_0722_14"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/popup.min.js?v=1.5.5.5_0722_14"></script>
	</body>
</html>