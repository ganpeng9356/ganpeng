<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>农产品市场</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/test.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/buygoods.css">
<script type="text/javascript">
			function lendCommodity(cid,cprice,cname) {
				document.getElementById("cid").value=cid;
				document.getElementById("cprice").value=cprice;
				document.getElementById("cname").value=cname;
				document.myform.submit();
			}			
</script>
</head>
<body>
<div id="header">
    <div class="container" id="nav">
        <ul class="l" id="nav-item">
            <li><img src="${pageContext.request.contextPath}/img/nonglogo.png" style="position: absolute;left: -170px;top: -5px;max-height: 60px"></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/forindex.do">首页</a></li>
            <li class="catalog"><a href="#">农产品医疗</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/infor/mation.do">行业资讯</a></li>
            <li class="catalog"><a href="#">农产品百科</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/purchase.do">购买评估</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/addgoods.do">添加农产品</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/personalCenter.do">个人中心</a></li>
        </ul>
        <span id="li5"><a href="#" id="li5a">用户名：<%String name=(String)session.getAttribute("uname");%>
                                             <%=name %></a></span>
    </div>
</div>
<form name="myform" action="${pageContext.request.contextPath}/commodity/purchase.do" method="post">
<input type="hidden" name="cid" id="cid">
<input type="hidden" name="cname" id="cname">
<input type="hidden" name="cprice" id="cprice">
</form>
<div id="buy">
    <table width="100%" cellspacing="0" cellpadding="0" align="center" id="bod">
        <tr>
            <td>商品名称</td>
            <td>颜色</td>
            <td>重量</td>
            <td>图片</td>
            <td>价格</td>
            <td>出产地</td>
            <td>购买操作</td>
        </tr>
        <c:forEach items="${com}" var="com">
        <tr>
            <td>${com.cname }</td>
            <td>${com.ccolor }</td>
            <td>${com.cweight }</td>
            <td>
                <img src="${pageContext.request.contextPath}${com.croute}${com.cimg}">
            </td>
            <td>${com.cprice }</td>
            <td>${com.cplace }</td>
            <td>
                <a href="#" onclick="lendCommodity(${com.cid},${com.cprice },'${com.cname }')"><input type="submit" value="购买" class="button1"></a>
            </td>
        </tr>
        </c:forEach>
       
    </table>
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