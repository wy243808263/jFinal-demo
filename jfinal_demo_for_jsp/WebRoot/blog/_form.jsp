<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>_form.jsp</title>
</head>
<body>
	<fieldset class="solid">
		<input type="hidden" name="blog.id" value="${blog.id}"/>
		
		<div>
			<label>标题</label>
			<input type="text" name="blog.title" value="${blog.title }"/>${titleMsg}
		</div>
		<div>
			<label>内容</label>
			<textarea rows="10" cols="80" name="blog.content">${blog.content}</textarea>${contentMsg}
		</div>
		<div>
			<label>&nbsp;</label>
			<input value="提交" type="submit"/>
		</div>
	</fieldset>
</body>
</html>