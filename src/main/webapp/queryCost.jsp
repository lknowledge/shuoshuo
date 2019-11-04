<%@ page import="com.community.bean.Cost" %><%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/5/21
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>查询结果</title>

    <%
        request.setAttribute("APP_PATH",request.getContextPath());
    %>

    <script type="text/javascript"
            src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


    <div id="one">
        <div id="nav" class="row">
            <ul>
                <li><a href="home.jsp">首页</a></li>
                <li><a href="query.jsp">查询费用</a></li>
                <li><a href="repair.jsp">故障报修</a></li>
            </ul>
        </div>
    </div>

</head>
<body>
<!-- 搭建显示页面 -->
<div class="container">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>费用信息</h1>
        </div>
    </div>
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" border="1" >
                <tr>
                    <th>房屋编号</th>
                    <th>费用单号</th>
                    <th>电费</th>
                    <th>煤气费</th>
                    <th>水费</th>
                    <th>物业费</th>
                    <th>总费用</th>
                    <th>缴费窗口</th>
                </tr>
                <tr>
                    <th>${cost.houseId}</th>
                    <th>${cost.costId}</th>
                    <th>${cost.electricity}</th>
                    <th>${cost.gas}</th>
                    <th>${cost.water}</th>
                    <th>${cost.fee}</th>
                    <th>${cost.fee+cost.water+cost.electricity+cost.gas}</th>
                    <th><a href="images/收钱码.jpg">缴费</a></th>
                </tr>
            </table>
        </div>
    </div>
</div>

</body>

    <style>

        body{
            background-image: url("${APP_PATH}/images/23.jpg");
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

        .one{
            height: 420px;
            background-image: url("images/9.jpg");
        }

        /*#two,#three,#four{*/
        /*    height: 500px;*/
        /*}*/

    </style>

</html>
