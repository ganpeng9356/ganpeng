<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>共享农产品</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/test.css">
</head>
<body>
<div id="header">
    <div class="container" id="nav">
        <ul class="l" id="nav-item">
            <li><img src="${pageContext.request.contextPath}/img/nonglogo.png" style="position: absolute;left: -170px;top: -5px;max-height: 60px"></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/buygoods.do">农产品市场</a></li>
            <li class="catalog"><a href="#">农产品医疗</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/infor/mation.do">行业资讯</a></li>
            <li class="catalog"><a href="#">农产品百科</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/purchase.do">购买评估</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/addgoods.do">添加农产品</a></li>
            <li class="catalog"><a href="${pageContext.request.contextPath}/jump/personalCenter.do">个人中心</a></li>
        </ul>
        <div id="login-area">
           <% 
           String uname = (String)session.getAttribute("uname");
             if(uname==null)  {
           %>
            <button id="btnLogin" hidefocus="true" class="login-btn">登录</button>
            <%}else{ %>
            <button hidefocus="true" class="login-btn">欢迎你：<%=uname %></button>
            <%} %>
            <% 
           String uname2 = (String)session.getAttribute("uname");
             if(uname!=null)  {
           %>
            <button hidefocus="true" class="login-btn-2"><a href="${pageContext.request.contextPath}/user/cancellation.do">注销</a></button>
            <%} %>
        </div>
    </div>
    <div id="error">
    <% 
    String msg=(String)request.getAttribute("msg");
    if(msg!=null){
    %>
        登录失败
    <%} %>
    </div>
</div>
<form name="myform" action="${pageContext.request.contextPath}/user/loginUser.do" method="post">
<input type="hidden" name="uname" id="uname">
<input type="hidden" name="upwd" id="upwd">
</form>
<form name="myform2" action="${pageContext.request.contextPath}/jump/register.do" method="post">

</form>
<div id="main">
    <div class="slider-container">
        <div id="slider">
            <ul id="sliderUl">
                <li class="bg01"><img src="${pageContext.request.contextPath}/img/nong01.jpg" id="bg01" class="imgLi" ></li>
                <li class="bg01"><img src="${pageContext.request.contextPath}/img/nong02.jpg" id="bg02" class="imgLi" ></li>
                <li class="bg02"><img src="${pageContext.request.contextPath}/img/nong03.jpg" id="bg03" class="imgLi" ></li>
            </ul>
            <div id="dotBox"><span id="active" class="cur" onmouseover="chang1()"></span>
                <span id="active2" onmouseover="chang2()"></span>
                <span id="active3" onmouseover="chang3()"></span>
            </div>
        </div>
        <div id="discripcontainer">
            <div class="discripbg"></div>
            <div class="discrip">
                <h3>换一种方式</h3>
                <h2>进入农产品的世界</h2>
                <h4>超酷的农产品社区</h4>
                <div class="btnarea"><a id="enterbtn" href="/course/list">进入</a> <a id="learnmore" href="javascript:void(0);">了解更多</a>
                </div>
            </div>
        </div>
    </div>
    <div style="width: 100%;height: 600px;">
        <div id="freshcourse" class="waper">
            <h2><span>每一种农产品都有一种新奇的感觉</span></h2>
            <div class="project">
                <ul id="freshcourseList" class="project__card">
                    <li class="project__image"><a href="#"><img style="width: 360px;height: 200px" alt="猫咪猫咪" title="猫咪猫咪"
                                                                src="${pageContext.request.contextPath}/img/nong04.jpg">
                        <h5 style="font-size: 18px">新鲜蔬菜，露天生长，绿色食品</h5>
                        <div class="tips"><span class="l">优质</span> <span class="r">价格：39元/kg</span></div>
                    </a>
                    </li>
                    <div class="project__detail">
                        <h5 style="font-size: 18px" class="project__title"><a href="#" class="icc">&nbsp;&nbsp;&nbsp;&nbsp;农家自种新鲜莴笋上市，施农家肥，露天生长，自然成熟，纯天然绿色食品</a>
                        </h5><br><br><br>
                        <h4 class="project__category"><a href="#" class="determine">一键购买</a></h4>
                    </div>
                </ul>
            </div>
        </div>

        <div id="freshcourse2" class="waper">
            <div class="project">
                <ul id="freshcourseList2" class="project__card">
                    <li class="project__image"><a href="#"><img style="width: 360px;height: 200px" alt="猫咪猫咪" title="猫咪猫咪"
                                                                src="${pageContext.request.contextPath}/img/nong05.jpg">
                        <h5>农家自产新鲜水果</h5>
                        <div class="tips"><span class="l">优质</span> <span class="r">价格：30元/kg</span></div>
                    </a>
                    </li>
                    <div class="project__detail">
                        <h5 class="project__title"><a href="#" class="icc">&nbsp;&nbsp;&nbsp;&nbsp;水果,正品保障,贴心服务,让您轻松尽享智慧新生活!</a>
                        </h5><br><br><br>
                        <h4 class="project__category"><a href="#" class="determine">一键购买</a></h4>
                    </div>
                </ul>
            </div>
        </div>
        <div id="freshcourse3" class="waper">
            <div class="project">
                <ul id="freshcourseList3" class="project__card">
                    <li class="project__image"><a href="#"><img style="width: 360px;height: 200px" alt="猫咪猫咪" title="猫咪猫咪"
                                                                src="${pageContext.request.contextPath}/img/nong06.jpg">
                        <h5>农家自产精品辣椒</h5>
                        <div class="tips"><span class="l">优质</span> <span class="r">价格：20元/kg</span></div>
                    </a>
                    </li>
                    <div class="project__detail">
                        <h5 class="project__title"><a href="#" class="icc">&nbsp;&nbsp;&nbsp;&nbsp;高辣度陕西线椒 超辣干辣椒 农家自产精品去把辣椒 大量供应批发</a>
                        </h5><br><br><br>
                        <h4 class="project__category"><a href="#" class="determine">一键购买</a></h4>
                    </div>
                </ul>
            </div>
        </div>

        <div id="freshcourse4" class="waper">
            <div class="project">
                <ul id="freshcourseList4" class="project__card">
                    <li class="project__image"><a href="#"><img style="width: 360px;height: 200px" alt="猫咪猫咪" title="猫咪猫咪"
                                                                src="${pageContext.request.contextPath}/img/nong07.jpg">
                        <h5>四川土南瓜</h5>
                        <div class="tips"><span class="l">优质</span> <span class="r">价格：32元/kg</span></div>
                    </a>
                    </li>
                    <div class="project__detail">
                        <h5 class="project__title"><a href="#" class="icc">&nbsp;&nbsp;&nbsp;&nbsp;当季热销四川土南瓜农家自种有机新鲜蔬菜净重5斤产地批发</a>
                        </h5><br><br><br>
                        <h4 class="project__category"><a href="#" class="determine">一键购买</a></h4>
                    </div>
                </ul>
            </div>
        </div>

        <div id="freshcourse5" class="waper">
            <div class="project">
                <ul id="freshcourseList5" class="project__card">
                    <li class="project__image"><a href="#"><img style="width: 360px;height: 200px" alt="猫咪猫咪" title="猫咪猫咪"
                                                                src="${pageContext.request.contextPath}/img/nong08.jpg">
                        <h5>高产圣紫茄子</h5>
                        <div class="tips"><span class="l">优质</span> <span class="r">价格：45元/kg</span></div>
                    </a>
                    </li>
                    <div class="project__detail">
                        <h5 class="project__title"><a href="#" class="icc">&nbsp;&nbsp;&nbsp;&nbsp;寿光批发供应产量高，大面积种植的优质茄子——圣紫茄子</a>
                        </h5><br><br><br>
                        <h4 class="project__category"><a href="#" class="determine">一键购买</a></h4>
                    </div>
                </ul>
            </div>
        </div>

        <div id="freshcourse6" class="waper">
            <div class="project">
                <ul id="freshcourseList6" class="project__card">
                    <li class="project__image"><a href="#"><img style="width: 360px;height: 200px" alt="猫咪猫咪" title="猫咪猫咪"
                                                                src="${pageContext.request.contextPath}/img/nong09.jpg">
                        <h5>三峡特产纯天然绿色马铃薯散装批发</h5>
                        <div class="tips"><span class="l">优质</span> <span class="r">价格：50元/kg</span></div>
                    </a>
                    </li>
                    <div class="project__detail">
                        <h5 class="project__title"><a href="#" class="icc">&nbsp;&nbsp;&nbsp;&nbsp;三峡特产纯天然绿色农产品蔬菜基地直销 新鲜土豆 马铃薯散装批发</a>
                        </h5><br><br><br>
                        <h4 class="project__category"><a href="#" class="determine">一键购买</a></h4>
                    </div>
                </ul>
            </div>
        </div>

    </div>
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
<script rel="stylesheet" type="text/javascript" src="${pageContext.request.contextPath}/js/eject2.js"></script>
</body>
</html>