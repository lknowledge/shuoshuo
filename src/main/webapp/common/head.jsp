<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/5/15
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setAttribute("APP_PATH", request.getContextPath()); %>
<html>
<head>
    <title>公共处理部分</title>
</head>
<body>


        <div>
            <div id="nav" class="row">
                <ul>
                    <li><a href="${APP_PATH}/managerPage">首页</a></li>
                    <li><a href="${APP_PATH }/housePage">房屋管理</a></li>
                    <li><a href="${APP_PATH }/holderPage">住户管理</a></li>
                    <li><a href="${APP_PATH }/newsPage">新闻管理</a></li>
                    <li><a href="${APP_PATH }/costPage">缴费管理</a></li>
                    <li><a href="${APP_PATH }/repairPage">报修管理</a></li>
                    <li><a href="${APP_PATH }/employeePage">员工管理</a></li>
                    <li><a href="${APP_PATH }/userPage">员工管理</a></li>
                </ul>
            </div>

            <div class="row" id="chajian">
                <div id="Date"></div>
                欢迎<%=(session.getAttribute("Privilege")=="root" ?"管理员用户":"用户")%>:<%=session.getAttribute("LOGIN_USER")%>
                <div><a href="${APP_PATH}/exit">退出</a></div>
            </div>
        </div>





</body>
        <style>
            body{
                background-image: url("${APP_PATH}/images/23.jpg");
                /*width:1200px;*/
                position:absolute;
                left:43%;
                margin-left:-480px;}

            #nav ul{
                width: 1200px;
                height: 50px;
                float: left;
                border-left-color: #000000;
                /*margin: 30px auto;*/
                padding: 0;
                list-style:none;
                /*border-top: solid 5px #f5e79e;*/
                border-bottom: solid 1px #000000;
                background: #ffffff;
            }

            #nav ul li{
                width: 100px;
                float: left;
                text-align: center;
                font: 16px/2.5"microsoft yahei";
            }

            #nav ul li a{
                text-decoration: none;color(#000000);
            }

            #nav ul li a:hover{
                display: block;
                color: #31b0d5;
                /*background: #31b0d5;*/
            }




            #login form{

                width:400px;
                height:200px;
                position:absolute;
                left:700px;
                top:60px;
                border: #f5e79e;
                border-bottom-color: #b92c28;
                background: url("/images/logo.jpg");
            }

            #chanjian div{

                height:200px;
                position:absolute;
                left:700px;
            }

        </style>



        <script type="text/javascript">
            setInterval(function(){
                var date = new Date();
                var year = date.getFullYear();    //获取当前年份
                var mon = date.getMonth()+1;      //获取当前月份
                var da = date.getDate();          //获取当前日
                var day = date.getDay();          //获取当前星期几
                var h = date.getHours();          //获取小时
                var m = date.getMinutes();        //获取分钟
                var s = date.getSeconds();        //获取秒
                var d = document.getElementById('Date');
                d.innerHTML='当前时间:'+year+'年'+mon+'月'+da+'日'+'星期'+day+' '+h+':'+m+':'+s;
            },1000)
        </script>


</html>
