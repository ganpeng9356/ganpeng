<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<script rel="stylesheet" type="text/javascript" src="${pageContext.request.contextPath}/js/eject.js"></script>
<script rel="stylesheet" type="text/javascript" src="${pageContext.request.contextPath}/js/reg.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/test.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reg.css">
</head>
<body scroll="no" style="overflow-x:hidden">
<div id="header">
    <div class="container" id="nav">
        <ul class="l" id="nav-item">
            <li><img src="${pageContext.request.contextPath}/img/nonglogo.png" style="position: absolute;left: -170px;top: -5px;max-height: 60px"></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/forindex.do">首页</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/buygoods.do">农产品市场</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/mation/mation.do">行业资讯</a></li>
            <li class="catalog"><a href="#">农产品百科</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/purchase.do">购买评估</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/addgoods.do">添加农产品</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/forindex.do">首页</a></li>
        </ul>
    </div>
</div>
<span style="position: relative;top: 80px;left: 1200px;font-size: 18px;color: #FF0000">
<%String msg=(String)request.getAttribute("msg");%>
<%if(msg!=null){%>
<%=msg %>
<%} %>
</span>
<div id="in">
    欢迎注册共享农产品
</div>
<div id="bg" class="bg">
</div>
<div id="userRegister">
    <form action="${pageContext.request.contextPath}/user/registerUser.do" method="post" onsubmit="return isCorrect()">
        &nbsp;&nbsp;&nbsp;ID&nbsp;&nbsp;&nbsp;号：<input type="text" name="ID" class="fram"><br><br>
        &nbsp;&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;名：<input id="uname" type="text" name="uname" class="fram" onblur="verification()">
        <br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;码：<input id="upwd" type="password" name="upwd" class="fram"
                                                            onblur="ver2()"><br>
        <span class="change">6~16个字符，不区分大小写</span><br>
        确认密码：<input id="confirm" type="password" class="fram" onblur="ver3()"><br>
        <span class="change">请再次填写密码</span><br>
        &nbsp;&nbsp;&nbsp;&nbsp;性&nbsp;&nbsp;别：<input type="radio" name="usex" value="男"/>男
        <input type="radio" name="usex" value="女" checked="checked"/>女<br/><br>
        手机号码：<input id="phone" type="text" name="utel" class="fram" onblur="ver4()"><br>
        <span class="change">忘记密码时，可以通过该手机号码快速找回密码</span><br>
        &nbsp;&nbsp;&nbsp;&nbsp;验证码：<input id="age" type="text" name="uage" class="fram"
                                                            onblur="ver6()"><br><br>
        <input type="submit" value="立即注册" id="submit">
    </form>
    <a href="#" style="position: absolute;top: 280px;left: 300px"><input type="button" value="获取验证码"></a>
    <span><img id="uimg" src="${pageContext.request.contextPath}/img/dui2.png"></span>
    <span><img id="uimg2" src="${pageContext.request.contextPath}/img/dui2.png"></span>
    <span><img id="uimg3" src="${pageContext.request.contextPath}/img/dui2.png"></span>
    <span><img id="uimg4" src="${pageContext.request.contextPath}/img/dui2.png"></span>
    <span><img id="uimg5" src="${pageContext.request.contextPath}/img/dui2.png"></span>
    <span id="error"></span>
    <span id="error2"></span>
    <span id="error3"></span>
    <span id="error4"></span>
    <span id="error5"></span>
</div>
</body>
</html>