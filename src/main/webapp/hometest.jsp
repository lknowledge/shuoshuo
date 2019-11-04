<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/8
  Time: 23:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小区主页</title>

    <script type="text/javascript"
            src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>

<ul class="nav nav-tabs">
    <li role="presentation" class="active"><a href="#">Home</a></li>
    <li role="presentation"><a href="list_holder.jsp">Profile</a></li>
    <li role="presentation"><a href="#">Messages</a></li>
</ul>


<div class="bs-example" data-example-id="simple-jumbotron">
    <div class="jumbotron">
        <h1>Hello, world!</h1>
        <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
    </div>
</div>





<div class="jumbotron modal-lg">
    <div class="container">
        <h1>Hello, world!</h1>
        <p>...</p>
        <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
        ...
    </div>

</div>


<div class="jumbotron" xml:base="images/Sei Shiraishi.jpg">
    <h1>欢迎来到阳光小区!</h1>
    <p class="col-md-6">赶快来了解我们吧！</p>
    <p><a class="btn btn-primary btn-lg" href="images/Sei%20Shiraishi.jpg" role="button">Learn more</a></p>
       <div class="jumbotron">
          <div class="container">
            ...
          </div>
       </div>
     </div>


    <div class="row">
       <div class="col-xs-6 col-md-3">
        <a href="#" class="thumbnail">
            <img src="images/Sei%20Shiraishi.jpg" alt="">

            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="小区风景">
                        <img src="/images/Iori%20Yoshizuki.jpg" alt="">
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>...</p>
                            <p><a  href="#" class="btn btn-primary" role="button">登录</a>
                                <a href="#" class="btn btn-default" role="button">注册</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </a>
       </div>
    ...
    </div>

<div class="row">
    <div class="col-xs-6 col-md-3">
        <a href="#" class="thumbnail">
            <img src="images/Sei%20Shiraishi.jpg" alt="">

            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="小区风景">
                        <img src="/images/Iori%20Yoshizuki.jpg" alt="">
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>...</p>
                            <p><a  href="#" class="btn btn-primary" role="button">登录</a>
                                <a href="#" class="btn btn-default" role="button">注册</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </div>
    ...
</div>




     <div class="col-md-6"></div>




</body>
</html>
