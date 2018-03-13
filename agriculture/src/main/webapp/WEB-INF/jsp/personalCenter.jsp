<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<script rel="stylesheet" type="text/javascript" src="${pageContext.request.contextPath}/js/eject.js"></script>
<script rel="stylesheet" type="text/javascript" src="${pageContext.request.contextPath}/js/personal.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/test.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/personal.css">
</head>
<body>
<div id="header">
    <div class="container" id="nav">
        <ul class="l" id="nav-item">
            <li><img src="${pageContext.request.contextPath}/img/nonglogo.png" style="position: absolute;left: -170px;top: -5px;max-height: 60px"></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/forindex.do">首页</a></li>
            <li class="catalog"><a href="#">农产品医疗</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/buygoods.do">农产品市场</a></li>
            <li class="catalog"><a href="#">农产品百科</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/infor/mation.do">行业资讯</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/purchase.do">购买评估</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/addgoods.do">添加农产品</a></li>
        </ul>
        <span id="li5"><a href="#" id="li5a">用户名：<%String name=(String)session.getAttribute("uname");%>
                                             <%=name %></a></span>
</div>
    </div>
<div>
    <table id="tabid" cellspacing="0" border="1">
        <tr>
            <th><a href="#" style="color: black" onclick="dis01()">个人信息</a></th>
            </tr>
        <tr>
            <td> <a href="#" style="color: black" onclick="dis02()">完善个人资料</a></td>
            </tr>
        <tr>
            <td>修改手机号</td>
        </tr>
        <tr>
            <td>我的优惠信息</td>
        </tr>
        <tr>
            <th><a href="${pageContext.request.contextPath}/record/selectRecord.do" style="color: black" onclick="dis03()">查看购买记录</a></th>
        </tr>
        <tr>
            <td>待付款</td>
        </tr>
        <tr>
            <td>查看物流信息</td>
        </tr>
        <tr>
            <td>退款维权</td>
        </tr>
    </table>
</div>
<div id="right1">
    <div class="d1">
   <img src="../img/touxiang.png" id="touimg">
   <c:forEach items="${user02}" var="user02">
    <span style="position: relative;left: 140px;top: 30px">${user02.uname }，下午好！</span>
        <span style="position: relative;font-size: 17px;top: 75px">欢迎您登录共享农产品服务系统</span>
    <p style="position: relative;top: 100px">ID号：${user02.ID }</p>
    <p style="position: relative;top: 105px">姓名：${user02.uname }</p>
    <p style="position: relative;top: 110px">性别：${user02.usex }</p>
    <p style="position: relative;top: 120px">电话：${user02.utel }</p>
    <p style="position: relative;top: 125px">地址：${user02.uaddress }</p>
    <p style="position: relative;top: 130px">出生年月：${user02.ubirth }</p>
    <p style="position: relative;top: 135px">邮箱：${user02.uemail }</p>
    </c:forEach>
    </div>
</div>
<div id="right2">
    <div class="d1">
        <div class="d2">
        <c:forEach items="${user02}" var="user02">
            <span>姓名：${user02.uname }</span>
            <p>ID号：${user02.ID }</p>
            <p>性别：${user02.usex }</p>
            <p>电话：${user02.utel }</p><br>
           </c:forEach> 
            <form id="right2form" action="${pageContext.request.contextPath}/user/modifyUser.do" method="post">
            地 &nbsp; &nbsp;&nbsp; &nbsp;址：<input type="text" name="uaddress"/><br>
            出生年月：<input type="text" name="ubirth"><br>
            邮&nbsp; &nbsp;&nbsp; &nbsp;箱：<input type="text" name="uemail"/><br>
           <input id="sub" class="button" type="submit" value="提交" />
            </form>
        </div>
    </div>
</div>
<div id="divnong" class="divTab">
    <table id="divTab" border="1" width="600px"  cellpadding="0" cellspacing="0">
        <tr>
            <th colspan="6" rowspan="2">购买时间</th>
        </tr>
        <tr >
            <th colspan="5" rowspan="3" ><img src="" style="width:100px;height:100px"></th>
        </tr>
        <tr>
            <td>商品名</td>
            <td>价格</td>
            <td>重量</td>
            <td>颜色</td>
            <td>状态</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table>
</div>
</body>
</html>