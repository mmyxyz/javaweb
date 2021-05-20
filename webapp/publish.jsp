<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<body>
<form action="PublishServlet" method="post">
    <table>
        <tr>
            <td>文章名称：</td>
            <td><input type="text" name="ArticalName" value="${param.ArticalName}"></td>
        </tr>
        <tr>
            <td>标签一：</td>
            <td><input type="text" name="label1" value="${param.label1}"></td>
        </tr>
        <tr>
            <td>标签二：</td>
            <td><input type="text" name="label2" value="${param.label2}"></td>
        </tr>
        <tr>
            <td>标签三：</td>
            <td><input type="text" name="label3" value="${param.label3}"></td>
        </tr>
        <tr>
            <td>类型：</td>
            <td>
                <select name="Type">
                    <option value="">请选择</option>
                    <option value="关于爱情">关于爱情</option>
                    <option value="关于生活">关于生活</option>
                    <option value="关于人生">关于人生</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>作者：</td>
            <td><input type="text" name="Author" value="${param.Author}"></td>
        </tr>
        <tr>

        <tr>
            <td>内容：</td>
            <td><textarea name="Content" >${param.Content}</textarea></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="提交">
            </td>
        </tr>

    </table>

</form>
</body>
</html>
