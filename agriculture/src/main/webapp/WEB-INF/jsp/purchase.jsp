<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购买评估</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/test.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/purchase.css">
</head>
<body>
<div id="header">
    <div class="container" id="nav">
        <ul class="l" id="nav-item">
            <li><img src="${pageContext.request.contextPath}/img/nonglogo.png" style="position: absolute;left: -170px;top: -5px;max-height: 60px"></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/forindex.do">首页</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/buygoods.do">农产品市场</a></li>
            <li class="catalog"><a href="#">农产品医疗</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/mation/mation.do">行业资讯</a></li>
            <li class="catalog"><a href="#">农产品百科</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/addgoods.do">添加农产品</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/personalCenter.do">个人中心</a></li>
        </ul>
        <span id="li5"><a href="#" id="li5a">用户名：</a></span>
    </div>
</div>
<div style="padding: 40px 0;min-height: 300px;">
    <span id="span1">欢迎来到购买评估，请输入你要购买的农产品名</span>
    <form class="form1" action="${pageContext.request.contextPath}/commodity/assessment.do" method="post">
        <input id="int" type="text" name="cname">
        <input id="sub" type="submit" value="查询">
    </form>
    <img id="img1" src="${pageContext.request.contextPath}/img/nong05.jpg">
    <table id="lan" class="mytable" border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>详细描述</th>
            <th>购买人数</th>
        </tr>
        <c:forEach items="${commod}" var="commod">
        <tr>
            <td>${commod.cdescribe }</td>
            <td>${commod.purchaseNumber }</td>
        </tr>
        </c:forEach>
    </table>
    <span style="position: absolute;top: 440px;left: 820px;z-index: 999">
    <c:forEach items="${commod}" var="commod">
       购买指数： <c:if test="${commod.purchaseNumber<=100 }">
                         ❤❤❤
       </c:if> 
       <c:if test="${commod.purchaseNumber>100 }">
                  ❤❤❤❤❤
       </c:if>
       </c:forEach>
    </span>
</div>
<div id="indexVideo">
    <button class="btn-close"></button>
    <div id="J_Video"></div>
</div>

<div id="footer">
    <div class="waper">
        <div class="footer_logo">
        </div>
        <ul class="footerwaper">
            <li class="des"><span style="">我们的使命：</span>分享最好的农产品，让大家爱上农产品，回归大自然！<br><br>
                <p>
                    京ICP备 13046642号-2
                </p>
            </li>
            <li>
                <p><a href="#">网站首页</a></p>
                <p><a href="/about/us"></a></p>
                <p><a href="/about/job">人才招聘</a></p>
            </li>

            <li>
                <p><a href="/about/recruit">内容招募</a></p>
                <p><a href="/about/contact">联系我们</a></p>
                <p><a href="/user/feedback">意见反馈</a></p>
            </li>

            <li class="attention">
                在这里关注我们的动向
                <br>
                <a id="qzone" href="http://user.qzone.qq.com/1059809142/" target="_blank" title="QQ空间">QQ空间</a>
                <a id="sinaweibo" href="http://weibo.com/u/3306361973" target="_blank" title="新浪微博">新浪微博</a>
                <a id="qqweibo" href="http://t.qq.com/mukewang999" target="_blank" title="腾讯微博">腾讯微博</a>
                <!-- <a id="weixin" href="#" title="腾讯微博">腾讯微博</a>
                --></li>
        </ul>
    </div>
</div>
</body>
</html>