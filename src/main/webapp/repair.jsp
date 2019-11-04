    <%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/17
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setAttribute("APP_PATH", request.getContextPath()); %>
<html>
<head>
    <title>提交维修单</title>


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

        <form id="information">
            <div class="form-group">
                <label>房屋编号：</label>
                <input type="text" class="form-control" id="houseId" name="houseId">
            </div>

            <div class="form-group">
                <label>房屋地址：</label>
                <input type="text" class="form-control" id="address" name="address">
            </div>

            <div class="form-group">
                <label>联系人：</label>
                <input type="text" class="form-control" id="linkmen" name="linkmen">
            </div>

            <div class="form-group">
                <label>联系电话:</label>
                <input type="text" class="form-control" id="linktelephone" name="linktelephone" >
            </div>

            <div class="form-group">
                <label>故障：</label>
                <textarea id="malfunction" name="malfunction" class="form-control" rows="3"></textarea>
            </div>
        </form>
        <button id="submit" class="btn btn-default">提交</button>
</body>

        <script>

            $("#submit").click(function () {
                $.ajax({
                    url:"${APP_PATH}/submitRepair",
                    data:$("#information").serialize(),
                    type:"POST",
                    success:function (result) {
                        if (result.code == 100){
                            alert("提交成功！")
                        }else {
                            alert("提交失败！")
                        }
                    }
                })
            })

        </script>

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
