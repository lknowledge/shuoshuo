<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/11
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<head>


    <title>住户登陆</title>
    <script type="text/javascript"
            src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>






    

</head>
<body>

<div>
    <div id="nav" class="row">
        <ul>
            <li><a href="home.jsp">首页</a></li>
            <li><a href="list_house.jsp">房屋管理</a></li>
            <li><a href="list_holder.jsp">住户管理</a></li>
            <li><a href="list_news.jsp">新闻管理</a></li>
            <li><a href="list_cost.jsp">缴费管理</a></li>
            <li><a href="list_repair.jsp">报修管理</a></li>
            <li><a href="list_employee.jsp">员工管理</a></li>
        </ul>
    </div>
</div>

<style>
    body{
        /*background-image: url("images/33.jpg");*/
        width:1200px;
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


</style>

<%--<div id="login-form">--%>
<%--<table>--%>
<%--    <tr>shuo</tr>--%>
<%--</table>--%>
<%--</div>--%>


</body>
</html>
