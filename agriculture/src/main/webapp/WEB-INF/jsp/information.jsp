<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>农产品资讯</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/test.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/information.css">
</head>
<body>
<div id="header">
    <div class="container" id="nav">
        <ul class="l" id="nav-item">
            <li><img src="${pageContext.request.contextPath}/img/nonglogo.png" style="position: absolute;left: -170px;top: -5px;max-height: 60px"></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/forindex.do">首页</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/buygoods.do">农产品市场</a></li>
            <li class="catalog"><a href="#">农产品医疗</a></li>
            <li class="catalog"><a href="#">农产品百科</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/purchase.do">购买评估</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/addgoods.do">添加农产品</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/personalCenter.do">个人中心</a></li>
        </ul>
        <span id="li5"><a href="#" id="li5a">用户名：<%String name=(String)session.getAttribute("uname");%>
                                             <%=name %></a></span>
    </div>
</div>
<div id="leftin">
<div class="infor">
 <p id="pfor">经棚镇：产业发展铺就致富之路</p>
    <p id="pfor02">发布时间：2018-01-18 14：14 阅读：(272) <br>经棚镇按照产村融合、产业带动的发展思路，做大主导产业、做强优势产业、培育特色产业，努力实现设施农业园区化、特色种植规模化、… [详细]</p>
    <img src="${pageContext.request.contextPath}/img/nong11.jpg" id="img01">
</div>
    <hr>
    <div class="infor">
        <p id="pfor03">顺平县：小草莓成为脱贫致富大杠杆</p>
        <p id="pfor04">发布时间：2018-01-10 14：18 阅读：(357) <br>近年来，顺平县在扶贫攻坚工作中，根据域内土地资源和适气候资源特点，因村制宜、精准施策，采取“一村一品、一户一策”等办法，着… [详细]</p>
        <img src="${pageContext.request.contextPath}/img/nong12.jpg" id="img02">
    </div>
    <hr>
    <div class="infor">
        <p id="pfor05">扶罗镇东风村：因地制宜发展产业 精准发力扶贫脱贫</p>
        <p id="pfor06">发布时间：2018-01-08 14：29 阅读：(381) <br>扶罗镇东风村作为该县2017年计划脱贫出列村，驻村扶贫工作队和村支两委认真学习贯彻党的十九大精神，紧紧围绕贫困户的实际，选准农… [详细]</p>
        <img src="${pageContext.request.contextPath}/img/nong13.jpg" id="img03">
    </div>
    <hr>
    <div class="infor">
        <p id="pfor07">墨玉县：扶贫模式助力农民走上致富路</p>
        <p id="pfor08">发布时间：2017-12-28 16：09 阅读：(574) <br>自治区科技厅“访惠聚”工作队自驻村以来，为墨玉县萨依巴格乡吐扎克其村、乌尊阿热勒村、库遂村等三个村实施科技精准扶贫专项“多… [详细]</p>
        <img src="${pageContext.request.contextPath}/img/nong14.jpg" id="img04">
    </div>
</div>
<div id="rightin">
<div>
    热门产品
</div>
    <hr style="width: 100px;position: relative;left: -125px">
    <img src="${pageContext.request.contextPath}/img/nong17.jpg" id="img05">
    <img src="${pageContext.request.contextPath}/img/nong16.jpg" id="img06">
</div>

<div id="rightin2">
    <div>
        热门关键词
    </div>
    <hr style="width: 100px;position: relative;left: -125px">
    <p class="p1">土豆批发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;甜瓜批发&nbsp;&nbsp;&nbsp;花生批发</p>
    <p class="p1">京欣西瓜批发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;草莓批发&nbsp;&nbsp;&nbsp;玉米批发</p>
    <p class="p1">土鸡批发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;苗木批发</p>
    <p class="p1">大闸蟹批发&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;芒果批发&nbsp;&nbsp;&nbsp;苹果批发</p>
</div>
</body>
</html>