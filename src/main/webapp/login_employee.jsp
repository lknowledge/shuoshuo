<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/15
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
    response.setHeader("Pragma","No-cache");
    response.setHeader("Cache-Control","no-cache");
    response.setDateHeader("Expires", -1);
%>
<head>


    <title>员工登陆</title>
    <script type="text/javascript"
            src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>




</head>
<body background="images/33.jpg">

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








  <div id="login" class="row">

      <div id="biaoti"><h1>管理系统登录</h1></div>



      <form action="loginEmp" method="post" class="form-horizontal">
          <div class="form-group">
              <label class="col-sm-3 control-label">员工编号:</label>
              <div id="id" class="col-sm-8">
                  <input type="text" name="empId" class="form-control"  placeholder="empId">
              </div>
          </div>
          <div class="form-group">
              <label class="col-sm-3 control-label">密码:</label>
              <div class="col-sm-8">
                  <input type="password" name="password" class="form-control"  placeholder="Password">
              </div>
          </div>
          <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                  <div class="checkbox">
                      <label>
                          <input type="checkbox"> 记住我
                      </label>
                  </div>
              </div>
          </div>
          <div class="form-group">

          </div>


          <button type="submit" id="submit"  class="btn btn-success">登陆</button>


      </form>

  </div>









</body>

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

        #biaoti{
            width:400px;
            height:200px;
            position:absolute;
            left:200px;
            top:60px;
        }



        #login form{

            width:400px;
            height:200px;
            position:absolute;
            left:700px;
            top:60px;
            border: #f5e79e;
            border-bottom-color: #b92c28;
            background-color: #bdfff7;
        }

        #submit{
            width:50px;
            height:35px;
            position:absolute;
            left:30px;
            top:150px;
        }




    </style>
</html>
