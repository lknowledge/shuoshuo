<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/13
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>小区主页</title>


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
<%--    <jsp:include page="/listNews"></jsp:include>--%>




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

        .one{
            height: 420px;
            background-image: url("images/9.jpg");
        }

        /*#two,#three,#four{*/
        /*    height: 500px;*/
        /*}*/

    </style>



</head>
<body>






<div class="container">

    <div id="one">
        <div id="nav" class="row">
            <ul>
                <li><a href="home.jsp">首页</a></li>
                <li><a href="query.jsp">查询费用</a></li>
                <li><a href="repair.jsp">故障报修</a></li>
            </ul>
        </div>
    </div>


<div class="jumbotron one" >
    <h1>欢迎来到，小区!</h1>
    <p>想要了解我们更多吗？</p>
    <p><a class="btn btn-primary btn-lg" href="www.baidu.com" role="button">那就百度吧</a></p>
</div>

    <div class="row">
        <div class="col-sm-6 col-md-4" id="two">
            <div class="thumbnail">
                <img src="images/8.jpg" alt="...">
                <div class="caption">
                    <h3>费用查询</h3>
                    <p>查询各种费用信息</p>
                    <p><a href="query.jsp" class="btn btn-primary" role="button">查询</a></p>
                </div>
            </div>
        </div>



        <div class="col-sm-6 col-md-4" id="three">
            <div class="thumbnail">
                <img src="images/8.jpg" alt="...">
                <div class="caption">
                    <h3>故障报修</h3>
                    <p>进行房屋故障报修</p>
                    <p><a href="repair.jsp" class="btn btn-primary" role="button">报修</a></p>
                </div>
            </div>
        </div>


        <div class="col-sm-6 col-md-4" id="four">
            <div class="thumbnail">
                <img src="images/8.jpg" alt="...">
                <div class="caption">
                    <h3>更多</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                </div>
            </div>
        </div>
    </div>

    <label>小区新闻</label>
    <div class=" row panel panel-success">
        <div>
            <span id="news1"></span>
            <span id="news2"></span>
            <span id="news3"></span>
            <span id="news4"></span>
        </div>

    </div>



</div>
</body>




</html>

