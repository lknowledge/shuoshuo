<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/8
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<html>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<head>


    <title>住户信息</title>
    <script type="text/javascript"
            src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>



</head>


<body>

<!-- 住户信息添加按钮 -->
<div class="modal fade" id="holderAddModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加住户</h4>
            </div>
            <!-- 住户添加表单 -->
            <div class="modal-body">


                <%--<input class="form-control" type="text" placeholder="房屋编号">--%>
                <%--<input class="form-control" type="text" placeholder="姓名">--%>
                <%--<input class="form-control" type="text" placeholder="年龄">--%>
                <%--<select class="form-control input-sm">...</select>--%>
                <%--<input class="form-control" type="text" placeholder="家庭人数">--%>
                <%--<input class="form-control" type="text" placeholder="电话">--%>
                <%--<input class="form-control" type="text" placeholder="邮箱">--%>


                <form class="form-inline">
                    <div class="form-group">
                        <label for="holderInputHouseId">房屋编号：</label>
                        <input type="text" name="houseid" class="form-control" id="holderInputHouseId" placeholder="Jane Doe">
                    </div>

                    <div class="form-group">
                        <label for="holderInputHouseId">楼栋：</label>
                        <select class="form-control" name="building"></select>
                    </div>

                    <div class="form-group">
                        <label for="holderInputName">姓名：</label>
                        <input type="text" name="name" class="form-control" id="holderInputName" placeholder="Jane Doe">
                    </div>
                    <div class="form-group">
                        <label for="holderInputAge">年龄：</label>
                        <input type="text" name="age" class="form-control" id="holderInputAge" placeholder="Jane Doe">
                    </div>

                    <div class="form-group">
                        <label>性别：</label>
                        <div class="radio">
                            <label>
                                <input type="radio" name="gender" id="holderInputGender1" value="男" checked>男
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="gender" id="holderInputGender2" value="女">女
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="holderInputTel">电话：</label>
                        <input type="number" name="telephone" class="form-control" id="holderInputTel" placeholder="Jane Doe">
                    </div>
                    <div class="form-group">
                        <label for="holderInputEmail">邮箱：</label>
                        <input type="email" name="email" class="form-control" id="holderInputEmail" placeholder="jane.doe@example.com">
                    </div>
                    <button type="submit" class="btn btn-default">Send invitation</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="container">

    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>住户信息</h1>
        </div>
    </div>


    <!-- 按钮 -->
    <div class="row">
        <div class="col-md-10 col-md-offset-9">
            <button class="btn btn-primary" id="holder_add_modal_btn">新增</button>
            <button class="btn btn-danger">删除</button>
        </div>
    </div>



    <!-- 显示 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" id="Hhs_table">
                <thead>
                <tr>
                    <th>房屋编号</th>
                    <th>户主姓名</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>家庭成员</th>
                    <th>联系电话</th>
                    <th>邮箱</th>
                    <th>邮箱</th>
                    <th>邮箱</th>
                    <th colspan="2">操作</th>

                </tr>
                </thead>

                <tbody>




                </tbody>


            </table>
        </div>
    </div>


    <!-- 显示分页信息 -->
    <div class="row">
        <div class="col-md-4" id="page_info_area">

        </div>


        <!-- 分页条信息 -->
        <div class="col-md-6" id="page_nav_area">

        </div>


    </div>
</div>



<script type="text/javascript">
    $(function () {
        //去首页
        to_page(1);
    });


    function to_page(pn){
        $.ajax({
            url:"${APP_PATH}/holder",
            data:"pn="+pn,
            type:"GET",
            success:function (result) {
                //console.log(result);
                //解析显示住户数据
                //解析分页信息
                build_housHolder_table(result);

                build_pageInfo(result);

                build_page(result);
            }
        });

    }

    function build_housHolder_table(result) {
        //每次请求后都清空表格
        $("#Hhs_table tbody").empty();
        var Hhs = result.extend.pageInfo.list;

        $.each(Hhs, function (index, item) {
            var houseIdTd = $("<td></td>").append(item.houseId);
            var nameTd = $("<td></td>").append(item.name);
            var genderTd = $("<td></td>").append(item.gender);
            var ageTd = $("<td></td>").append(item.age);
            var membersTd = $("<td></td>").append(item.members);
            var telephoneTd = $("<td></td>").append(item.telephone);
            var emailTd = $("<td></td>").append(item.email);
            var buildingTd = $("<td></td>").append(item.house.building);
            var numberTd = $("<td></td>").append(item.hosue.number);

            //操作按钮
            var edBtn = $("<button></button>").addClass("btn btn-primary btn-sm")
                .append($("<span></span>")).addClass("glyphicon glyphicon-pencil").append("编辑");
            var deBtn = $("<button></button>").addClass("btn btn-danger btn-sm")
                .append($("<span></span>")).addClass("glyphicon glyphicon-trash").append("删除");
            var btnTd = $("<td ></td>").append(edBtn).append(" ").append(deBtn);
            //append 方法每次执行完都换回以前的方法
            $("<tr></tr>").append(houseIdTd)
                .append(nameTd)
                .append(genderTd)
                .append(ageTd)
                .append(membersTd)
                .append(telephoneTd)
                .append(emailTd)
                .append(btnTd)
                .append(buildingTd)
                .append(numberTd)
                .appendTo("#Hhs_table tbody");



            // alert(item.age);
        });
    }

    //解析分页信息
    function build_pageInfo(result) {
        $("#page_info_area").empty();
        $("#page_info_area").append("第" + result.extend.pageInfo.pageNum + "页,总"
            + result.extend.pageInfo.pages + "页,总"
            + result.extend.pageInfo.total + "页");
    }

    function build_page(result) {
        $("#page_nav_area").empty();

        var ul = $("<ul></ul>").addClass("pagination");

        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
        var prePageLi =  $("<li></li>").append($("<a></a>").append("&laquo;"));
        //判断是否能有前页，能否点击
        if (result.extend.pageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }
        //为元素增加点击翻页事件
        firstPageLi.click(function () {
            to_page(1);
        })

        prePageLi.click(function () {
            to_page(result.extend.pageInfo.pageNum-1);
        })


        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("尾页").attr("href", "#"));
        if (result.extend.pageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }

        nextPageLi.click(function () {
            to_page(result.extend.pageInfo.pageNum+1);
        })

        lastPageLi.click(function () {
            to_page(result.extend.pageInfo.pages);
        })


        //构造提示
        ul.append(firstPageLi).append(prePageLi);
        //页码提示
        $.each(result.extend.pageInfo.navigatepageNums, function (index, item) {
            var numLi = $("<li></li>").append($("<a></a>").append(item));

            if (result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }

            numLi.click(function () {
                to_page(item);
            });

            ul.append(numLi);
        });
        //添加下一页和尾页
        ul.append(nextPageLi).append(lastPageLi);

        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");

    }


    $("#holder_add_modal_btn").click(function () {
        $("#holderAddModal").modal({
            backdrop:"static"
        });
    });






</script>








</body>
</html>
