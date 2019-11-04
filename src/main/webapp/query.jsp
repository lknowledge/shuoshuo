<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/17
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>费用查询</title>


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


    <form action="${APP_PATH}/queryCost">
        <div class="form-group">
           房屋编号:
            <input name="houseId" id="houseId" class="form-control" type="text">
        </div>


        <button type="submit" id="query" class="btn btn-success" >查询</button>
    </form>


</body>

<%--    <script>--%>
<%--        $("#query").click(function () {--%>
<%--            $.ajax({--%>
<%--                url:"${APP_PATH}/queryCost",--%>
<%--                data:$("#houseId").val(),--%>
<%--                success:function (result) {--%>
<%--                       var cost = result.cost;--%>
<%--                        $("#cost_result_costId").text(cost.costId);--%>
<%--                        $("#cost_result_houseId").text(cost.houseId);--%>
<%--                        $("#cost_result_electricity").text(cost.electricity);--%>
<%--                        $("#cost_result_gas").text(cost.gas);--%>
<%--                        $("#cost_result_water").text(cost.water);--%>
<%--                        $("#cost_result_fee").text(cost.fee);--%>
<%--                        $("#cost_result_sum").text(cost.fee+cost.water+cost.gas+cost.electricity);--%>
<%--                }--%>

<%--            });--%>

<%--        })--%>
<%--    </script>--%>

    <style>

        body{
            background-image: url("${APP_PATH}/images/23.jpg");
            width:900px;
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
