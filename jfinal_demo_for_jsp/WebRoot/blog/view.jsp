<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/manage.css" media="screen" rel="stylesheet"
	type="text/css" />
<script src="/js/jquery-1.4.4.min.js" type="text/javascript"></script>
<title>view.jsp</title>
</head>
<body>
	<div class="manage_container">
		<div class="manage_head">
			<div class="manage_logo">
				<a href="http://www.jfinal.com">JFinal web framework</a>
			</div>
			<div id="nav">
				<ul>
					<li><a href="/"><b>首页</b></a></li>
					<li><a href="/blog"><b>Blog管理</b></a></li>
				</ul>
			</div>
		</div>
		<div class="main">
			<h1>Blog管理 ---&gt; ${blog.page_title }Blog</h1>
			<div class="form_box" >
				<fieldset class="solid">
					<legend>${blog.page_title }Blog</legend>
					<input type="hidden" name="blog.id" value="${blog.id}"/>
					
					<div>
						<label>标题</label>
						<input type="text" name="blog.title" value="${blog.title }"/>
					</div>
					<div>
						<label>内容</label>
						<textarea rows="10" cols="80" name="blog.content">${blog.content}</textarea>
					</div>
				</fieldset>
			</div>
		</div>
	</div>
</body>
</html>