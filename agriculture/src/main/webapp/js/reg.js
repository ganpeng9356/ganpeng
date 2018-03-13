/**
 * Created by ganpeng on 2017/11/6.
 */
window.onload=function () {
    var imgNode=document.getElementById("uimg");
    var img2Node=document.getElementById("uimg2");
    var img3Node=document.getElementById("uimg3");
    var img4Node=document.getElementById("uimg4");
    var img5Node=document.getElementById("uimg5");
    imgNode.style.display="none";
    img2Node.style.display="none";
    img3Node.style.display="none";
    img4Node.style.display="none";
    img5Node.style.display="none";
}
function verification() {
    var imgNode=document.getElementById("uimg");
    var errNode=document.getElementById("error");
    var uname=document.getElementById("uname").value;
    var reg=/^[\u4e00-\u9fa5\w]{2,16}$/;
    errNode.innerHTML="";
    imgNode.style.display="none";
    if(reg.test(uname)){
        imgNode.style.display="block";
        return true;
    }else{
        errNode.innerHTML="用户名不满足要求".fontcolor("#990000");
        return false;
    }
}
function ver2() {
    var upwd=document.getElementById("upwd").value;
    var img2Node=document.getElementById("uimg2");
    var errNode2=document.getElementById("error2");
    var reg=/^\w{6,16}$/;
    errNode2.innerHTML="";
    img2Node.style.display="none";
    if(reg.test(upwd)){
        img2Node.style.display="block";
        return true;
    }else{
        errNode2.innerHTML="密码不满足要求".fontcolor("#990000");
        return false;
    }
}
function ver3() {
    var upwd=document.getElementById("upwd").value;
    var pwd=document.getElementById("confirm").value;
    var img3Node=document.getElementById("uimg3");
    var errNode3=document.getElementById("error3");
    errNode3.innerHTML="";
    img3Node.style.display="none";
    if(upwd==pwd){
     img3Node.style.display="block";
        return true;
    }else{
        errNode3.innerHTML="两次密码不一致".fontcolor("#990000");
        return false;
    }
}

function isCorrect() {
    if(verification()&ver2()&ver3()){
        return true;
    }else{
        return false;
    }
}