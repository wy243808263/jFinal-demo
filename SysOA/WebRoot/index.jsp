<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>index.html</title>

        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="this is my page">
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">

        <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

    </head>

    <body>
        <a href="/student/add">添加</a>
        <table border="1">
            <tr>
                <td>
                    姓名
                </td>
                <td>
                    年龄
                </td>
                <td>
                    性别
                </td>
                <td>
                    班级
                </td>
                <td>
                    操作
                </td>
            </tr>
            
            <tr>
                <td>
                    ${student.studentname}
                </td>
                <td>
                    ${student.studentage}
                </td>
                <td>
                    ${student.studentsex}
                </td>
                <td>
                    ${student.getClasses().classesname}
                </td>
                <td>
                    <a href="/student/delete/${student.studentid}">删除</a>
                    <a href="/student/get/${student.studentid}">修改</a>
                </td>
            </tr>
            </#list>

        </table>
    </body>
</html>