<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/9
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>

<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>

<script type="text/javascript"
        src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
<link
        href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
        rel="stylesheet">
<script
        src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>图片轮换</title>
    <style type="text/css">
        <!--
        #Layer1 {
            position:absolute;
            width:421px;
            height:275px;
            z-index:1;
        }
        #Layer2 {
            position:absolute;
            width:21px;
            height:18px;
            z-index:1;
            left: 154px;
            top: 18px;
            visibility: visible;
        }
        #Layer3 {
            position:absolute;
            width:21px;
            height:18px;
            z-index:2;
            left: 192px;
            top: 18px;
            visibility: visible;
        }
        #Layer4 {
            position:absolute;
            width:21px;
            height:18px;
            z-index:3;
            left: 228px;
            top: 18px;
            visibility: visible;
        }
        #Layer5 {
            position:absolute;
            width:21px;
            height:18px;
            z-index:4;
            left: 268px;
            top: 18px;
            visibility: visible;
        }
        -->
        a{ text-align:center; text-decoration:none; text-align:center}
        #Layer6 {
            position:absolute;
            width:94px;
            height:65px;
            z-index:5;
            left: 121px;
            top: 301px;
        }
        #Layer7 {
            position:absolute;
            width:90px;
            height:63px;
            z-index:6;
            left: 15px;
            top: 301px;
        }
        #Layer8 {
            position:absolute;
            width:94px;
            height:62px;
            z-index:7;
            left: 236px;
            top: 302px;
        }
        #Layer9 {
            position:absolute;
            width:97px;
            height:60px;
            z-index:8;
            left: 339px;
            top: 300px;
        }
        #Layer10 {
            position:absolute;
            width:103px;
            height:33px;
            z-index:9;
            left: 7px;
            top: 195px;
        }
        #Layer11 {
            position:absolute;
            width:450px;
            height:81px;
            z-index:9;
            left: 1px;
            top: 216px;
            background-color: #666666;
            visibility: hidden;
        }
        #div1 {
            height: 600px;
            width: 260px;
            padding: 20px;
            background-repeat: repeat;
            /*filter: progid:DXImageTransform.Microsoft.alphaImageLoader();*/
        }

    </style>
    <script language="JavaScript" type="text/javascript">
        function show(ss){
            switch(ss){
                case 'a':
                    var imagea=document.getElementById("images");
                    imagea.setAttribute("src","images/1.jpg");
                    break;
                case 'b':
                    var imageb=document.getElementById("images");
                    imageb.setAttribute("src","images/2.jpg");
                    break;
                case 'c':
                    var imagec=document.getElementById("images");
                    imagec.setAttribute("src","images/2.jpg");
                    break;
                case 'd':
                    var imaged=document.getElementById("imgages")
                    imaged.setAttribute("src","${APP_PATH}/images/2.jpg");
                    break;
            }
        }
    </script>
</head>

<body>



APP_PAth:${APP_PATH}

<div id="Layer1">
    <img src="images/27.jpg"  id="img">

    <div id="Layer7"><img src="images/2.jpg" width="97" height="64"  id="imga"  onmouseover="show('a')"/></div>
    <div id="Layer6"><img src="images/3.jpg" width="97" height="64"  id="imgb"  onmouseover="show('b')"/></div>
    <div id="Layer8"><img src="images/4.jpg" width="97" height="64"  id="imgc"  onmouseover="show('c')"/></div>
    <div id="Layer9"><img src="images/5.jpg" width="97" height="64"  id="imgd"  onmouseover="show('d')"/></div>
    <div id="Layer2" align="center"><a href="javascript:show('a')">1</a></div>

    <div id="Layer3"  align="center"><a href="javascript:show('b')">2</a></div>
    <div id="Layer4"  align="center"><a href="javascript:show('c')">3</a></div>
    <div id="Layer5"   align="center"><a href="javascript:show('d')">4</a></div>

</div>
</body>
</html>