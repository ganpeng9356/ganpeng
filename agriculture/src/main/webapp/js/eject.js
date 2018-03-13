/**
 * Created by ganpeng on 2017/11/1.
 */
function openNew(){
    //获取页面的高度和宽度
    var sWidth=document.body.scrollWidth;
    var sHeight=document.body.scrollHeight;

    //获取页面的可视区域高度和宽度
    var wHeight=document.documentElement.clientHeight;

    var oMask=document.createElement("div");
    oMask.id="mask";
    oMask.style.height=sHeight+"px";
    oMask.style.width=sWidth+"px";
    document.body.appendChild(oMask);
    var oLogin=document.createElement("div");
    oLogin.id="login";
    oLogin.innerHTML="<div class='loginCon'><div id='close'>点击关闭</div> " +
        "<span id='span2'>用户名：<input type='text' name='uname' id='name'" +
        "value='请输入用户名:' onfocus='disp(this)'  onblur='inname()' class='fram'></span><br><span id='span6'>一键授权，快速登录</span>" +
        "<span id='span3'>密&nbsp;&nbsp;&nbsp;码：<input type='password' onblur='inpwd()' name='upwd' id='pwd' value=''  class='fram'></span><span id='span7'><a href='#'><img src='../img/login2.jpg' width='200px' height='40px'></a></span><br/>" +
        "<span id='span8'><a href='#'><img src='../img/login3.jpg' width='200px' height='40px'></a></span><span id='span4'><input type='submit' value='登录' onclick='login()' class='logins'></span>"
        +"<span id='span5'><input type='button' onclick='regist()' value='立即注册' class='register'></span>" +
        " <span id='span9'><input id='span9_check' type='checkbox' name='isUseCookie' checked='checked'><span id='span10'>十天免登录</span></span></div> ";
    document.body.appendChild(oLogin);

    //获取登陆框的宽和高
    var dHeight=oLogin.offsetHeight;
    var dWidth=oLogin.offsetWidth;
    //设置登陆框的left和top
    oLogin.style.left=sWidth/2-dWidth/2+"px";
    oLogin.style.top=wHeight/2-dHeight/2+"px";
    //点击关闭按钮
    var oClose=document.getElementById("close");

    //点击登陆框以外的区域也可以关闭登陆框
    oClose.onclick=oMask.onclick=function(){
        document.body.removeChild(oLogin);
        document.body.removeChild(oMask);
    };
};

window.onload=function(){
    var oBtn=document.getElementById("btnLogin");
    //点击登录按钮
    oBtn.onclick=function(){
        openNew();
        return false;
    }

    var bg1Node=document.getElementById("bg01");
    var bg2Node=document.getElementById("bg02");
    var bg3Node=document.getElementById("bg03");
    var spNode=document.getElementById("active");
    spNode.style.background="#990000";
    bg1Node.style.display="block";
    bg2Node.style.display="none";
    bg3Node.style.display="none";
    setInterval('carousel()', 3000);
  //  setInterval('alert("欢迎来到CodePlayer");', 1000);
}

//浮动代码

function chang1() {
    var bg1Node=document.getElementById("bg01");
    var bg2Node=document.getElementById("bg02");
    var bg3Node=document.getElementById("bg03");
    var spNode1=document.getElementById("active");
    var spNode2=document.getElementById("active2");
    var spNode3=document.getElementById("active3");
    spNode1.style.background="#990000";
    spNode2.style.background="";
    spNode3.style.background="";
    bg1Node.style.display="block";
    bg2Node.style.display="none";
    bg3Node.style.display="none";
}
function chang2() {
    var bg1Node=document.getElementById("bg01");
    var bg2Node=document.getElementById("bg02");
    var bg3Node=document.getElementById("bg03");
    var spNode1=document.getElementById("active");
    var spNode2=document.getElementById("active2");
    var spNode3=document.getElementById("active3");
    spNode1.style.background="";
    spNode2.style.background="#990000";
    spNode3.style.background="";
    bg1Node.style.display="none";
    bg2Node.style.display="block";
    bg3Node.style.display="none";
}
function chang3() {
    var bg1Node=document.getElementById("bg01");
    var bg2Node=document.getElementById("bg02");
    var bg3Node=document.getElementById("bg03");
    var spNode1=document.getElementById("active");
    var spNode2=document.getElementById("active2");
    var spNode3=document.getElementById("active3");
    spNode1.style.background="";
    spNode2.style.background="";
    spNode3.style.background="#990000";
    bg1Node.style.display="none";
    bg2Node.style.display="none";
    bg3Node.style.display="block";
}
function carousel() {
    i = Math.round(Math.random() * 2 + 1);
    if(i==1){
        chang1();
    }else if(i==2){
        chang2();
    }else if(i==3){
        chang3();
    }
}
function disp(node) {
    // alert(111);
    var test = node.value;
    if (test=='请输入用户名:') {
        node.value = "";
    }
}
function inname(){
	var name=document.getElementById("name").value;
	var uname=document.getElementById("uname");
	uname.value=name;
}
function inpwd(){
	var pwd=document.getElementById("pwd").value;
	var upwd=document.getElementById("upwd");
	upwd.value=pwd;
}
function login(){
	document.myform.submit();
}
function regist(){
	document.myform2.submit();
}