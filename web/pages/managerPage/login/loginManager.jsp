<%--
  Created by IntelliJ IDEA.
  User: violet
  Date: 2015/11/4
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="<%=basePath %>css/all.css">
    <link rel="stylesheet" href="<%=basePath %>css/managerLogin.css">
    <title>管理员登陆</title>
</head>
<body>
    <jsp:include page="/pages/mainPage/managerhead.jsp"></jsp:include>
    <div id="login">
        <h1>管理员登陆</h1>
        <form action="/managerlogin" method="post">
            <div id="loginbody">
                帐号：<input type="text" name="username"><br>
                密码：<input type="password" name="pwd"><br>
                <input type="submit" id="sbutton" value="提交">
                <input type="reset" id="rbutton" value="重置">
            </div>
        </form>
    </div>
    <jsp:include page="/pages/mainPage/foot.jsp"></jsp:include>
</body>
</html>
