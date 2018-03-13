<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加农产品</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/test.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/addgoods.css">
</head>
<body>
<div id="header">
    <div class="container" id="nav">
        <ul class="l" id="nav-item">
            <li><img src="${pageContext.request.contextPath}/img/nonglogo.png" style="position: absolute;left: -170px;top: -5px;max-height: 60px"></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/forindex.do">首页</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/buygoods.do">农产品市场</a></li>
            <li class="catalog"><a href="#">农产品医疗</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/infor/mation.do">行业资讯</a></li>
            <li class="catalog"><a href="#">农产品百科</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/purchase.do">购买评估</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/personalCenter.do">个人中心</a></li>
        </ul>
        <span id="li5"><a href="#" id="li5a">用户名：<%String name=(String)session.getAttribute("uname");%>
                                             <%=name %></a></span>
    </div>
</div>
<div id="add">
    <div id="add2">
    <span id="xin">
    <c:forEach items="${msg}" var="commodity">
		          ${commodity}
                </c:forEach>
    </span>
    <span id="spa">添加农产品</span>
    <form id="inpu" action="${pageContext.request.contextPath}/commodity/addCommodity.do" method="post" enctype="multipart/form-data">
        商品名：<input class="fram" type="text" name="cname"><br>
        &nbsp;价&nbsp;&nbsp;格：<input class="fram" type="text" name="cprice"><br>
        &nbsp;重&nbsp;&nbsp;量：<input class="fram" type="text" name="cweight"><br>
        &nbsp;颜&nbsp;&nbsp;色：<input class="fram" type="text" name="ccolor"><br>
        &nbsp;产&nbsp;&nbsp;地：<input class="fram" type="text" name="cplace"><br>
        <input type="file" name="file" value="选择照片"><br>
        <input id="sub" type="submit" value="提交">
    </form>
    </div>
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