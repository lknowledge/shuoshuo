<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/15
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
    response.setHeader("Pragma","No-cache");
    response.setHeader("Cache-Control","no-cache");
    response.setDateHeader("Expires", -10);
%>
<head>
    <title>Manager</title>
    <script type="text/javascript"
            src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>






    <jsp:include page="/common/head.jsp"></jsp:include>
    <jsp:include page="/common/reload.jsp"></jsp:include>





</head>
<body>
   <h1 id="header">Manager</h1>

     <div class="container">
         <div class="row">
             <div class="col-sm-6 col-md-4">
                 <div class="thumbnail">
                     <img src="images/36.png" alt="...">
                     <div class="caption">
                         <h3>房屋管理</h3>
                         <p><a href="${APP_PATH}/housePage" class="btn btn-primary" role="button">管理</a> </p>
                         <p></p>
                     </div>
                 </div>
             </div>
             <div class="col-sm-6 col-md-4">
                 <div class="thumbnail">
                     <img src="images/36.png" alt="...">
                     <div class="caption">
                         <h3>住户管理</h3>
                         <p><a href="${APP_PATH}/holderPage" class="btn btn-primary" role="button">管理</a> </p>
                     </div>
                 </div>
             </div>
             <div class="col-sm-6 col-md-4">
                 <div class="thumbnail">
                     <img src="images/36.png" alt="...">
                     <div class="caption">
                         <h3>新闻管理</h3>
                         <p><a href="${APP_PATH}/newsPage" class="btn btn-primary" role="button">管理</a> </p>
                     </div>
                 </div>
             </div>
         </div>

         <div class="row">
             <div class="col-sm-6 col-md-4">
                 <div class="thumbnail">
                     <img src="images/36.png" alt="...">
                     <div class="caption">
                         <h3>缴费管理</h3>
                         <p><a href="${APP_PATH}/costPage" class="btn btn-primary" role="button">管理</a> </p>
                     </div>
                 </div>
             </div>
             <div class="col-sm-6 col-md-4">
                 <div class="thumbnail">
                     <img src="images/36.png" alt="...">
                     <div class="caption">
                         <h3>报修管理</h3>
                         <p><a href="${APP_PATH}/repairPage" class="btn btn-primary" role="button">管理</a> </p>
                     </div>
                 </div>
             </div>
             <div class="col-sm-6 col-md-4">
                 <div class="thumbnail">
                     <img src="images/36.png" alt="...">
                     <div class="caption">
                         <h3>员工管理</h3>
                         <p><a href="${APP_PATH}/employeePage" class="btn btn-primary" role="button">管理</a> </p>
                     </div>
                 </div>
             </div>
         </div>

         <div class="row">
             <div class="col-sm-6 col-md-4">
                 <div class="thumbnail">
                     <img src="images/36.png" alt="...">
                     <div class="caption">
                         <h3>住户用户管理</h3>
                         <p><a href="${APP_PATH}/userPage" class="btn btn-primary" role="button">管理</a></p>
                     </div>
                 </div>
             </div>
         </div>


     </div>
</body>



</html>
