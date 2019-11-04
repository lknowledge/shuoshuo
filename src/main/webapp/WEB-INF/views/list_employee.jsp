<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/11
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工信息</title>
</head>







<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<head>


    <title>费用信息</title>
    <script type="text/javascript"
            src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <jsp:include page="/common/head.jsp"></jsp:include>



</head>


<body  background="images/27_爱奇艺.jpg">


<div class="modal fade" id="empResultModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">
                    </span>
                </button>
                <h4 class="modal-title">员工信息</h4>
            </div>

            <div class="modal-body">
                <form class="form-group-lg" >
                    <div class="form-group">
                        <label>员工编号：</label>
                        <span class="form-control-static" name="empId" id="emp_result_empId">
                        </span>
                    </div>

                    <div class="form-group ">
                        <label>姓名：</label>
                        <span class="form-control-static" name="name" id="emp_result_name">
                        </span>
                    </div>
                    <div class="form-group ">
                        <label >性别：</label>
                        <select  class="form-control-static" name="gender" id="emp_result_gender" >
                            <option value="m">男</option>
                            <option value="f">女</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>年龄:</label>
                        <span type="text" class="form-control-static" name="age" id="emp_result_age">
                        </span>
                    </div>

                    <div class="form-group">
                        <label >电话：</label>
                        <span type="text" class="form-control-static" name="telephone" id="emp_result_telephone">
                        </span>
                    </div>

                    <div class="form-group">
                        <label >地址：</label>
                        <span  name="address" class="form-control-static" id="emp_result_address">
                        </span>
                    </div>
                    <div class="form-group">
                        <label >邮箱：</label>
                        <span type="email"  name="email" class="form-control-static" id="emp_result_email">
                        </span>
                    </div>

                    <div class="form-group">
                        <label>用户名:</label>
                        <span  class="form-control-static" name="userName" id="emp_result_userName">
                        </span>
                    </div>
                    <div class="form-group">
                        <label>密码：</label>
                        <span  class="form-control-static" name="password" id="emp_result_password">
                        </span>
                    </div>
                    <div class="form-group">
                        <label>权限：</label>
                        <span class="form-control-static" name="privilege" id="emp_result_privilege">
                            <option value="root">R</option>
                            <option value="common">C</option>
                        </span>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--//查询弹框--%>

<div class="modal fade" id="empQueryModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">请输入员工编号:</h4>
            </div>
            <form class="form-group-lg " >
                <div class="form-group">
                    <label class="modal-lg">员工编号:</label>
                    <input class="form-group-lg input-lg col-lg-6 " id="query_id" name="empId" type="text">
                    <span class="form-control-static"  ></span>
                </div>

            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="query_do_emp_btn">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--//删除弹框--%>
<div class="modal fade" id="empDeleteModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">
                    </span>
                </button>
                <h4 class="modal-title">删除警告</h4>
            </div>
            <div>
                <p class="bg-danger text-center">确认要删除吗？</p>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="delete_do_emp_btn">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--//更新弹框--%>

<div class="modal fade" id="empUpdateModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">
                    </span>
                </button>
                <h4 class="modal-title">员工信息更新</h4>
            </div>

            <div class="modal-body">
                <form class="form-group-lg" >
                    <div class="form-group">
                        <label>员工编号：</label>
                        <input class="form-control" name="empId" id="emp_update_empId">
                        <span ></span>
                    </div>

                    <div class="form-group ">
                        <label>姓名：</label>
                        <input class="form-control" name="name" id="emp_update_name">
                        <span ></span>
                    </div>
                    <div class="form-group ">
                        <label >性别：</label>
                        <select type="text"  class="form-control" name="gender" id="emp_update_gender" >
                            <option value="m">男</option>
                            <option value="f">女</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>年龄:</label>
                        <input type="text" class="form-control" name="age" id="emp_update_age">
                        <span></span>
                    </div>

                    <div class="form-group">
                        <label >电话：</label>
                        <input type="text" class="form-control" name="telephone" id="emp_update_telephone">
                        <span></span>
                    </div>

                    <div class="form-group">
                        <label >地址：</label>
                        <input  name="address" class="form-control" id="emp_update_address">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label >邮箱：</label>
                        <input type="email"  name="email" class="form-control" id="emp_update_email">
                        <span></span>
                    </div>

                    <div class="form-group">
                        <label>用户名:</label>
                        <input  class="form-control" name="userName" id="emp_update_userName">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label>密码：</label>
                        <input  class="form-control" name="password" id="emp_update_password">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label>权限：</label>
                        <select class="form-control" name="privilege" id="emp_update_privilege">
                          <option value="root">R</option>
                          <option value="common">C</option>
                        </select>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="update_do_emp_btn">更新</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--//添加弹框--%>

<div class="modal fade" id="empAddModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加新员工</h4>
            </div>

            <div class="modal-body">

                <form>
                    <div class="form-group ">
                        <label>员工编号：</label>
                        <input type="text" name="empId" class="form-control" id="emp_save_empId" >
                        <span></span>
                    </div>
                    <div class="form-group ">
                        <label >姓名：</label>
                        <input type="text" name="name" class="form-control" id="emp_save_name">
                        <span></span>
                    </div>

                    <div class="form-group">
                        <label>性别:</label>
                        <select type="text" name="gender" class="form-control" id="emp_save_gender">
                           <option value="m">男</option>
                           <option value="f">女</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label >年龄：</label>
                        <input type="text" name="age" class="form-control" id="emp_save_age">
                        <span></span>
                    </div>

                    <div class="form-group">
                        <label >电话：</label>
                        <input  name="telephone" class="form-control" id="cost_save_telephone">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label >地址：</label>
                        <input  name="address" class="form-control" id="emp_save_address">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label >邮箱：</label>
                        <input type="email"  name="email" class="form-control" id="emp_save_email">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label >用户名：</label>
                        <input  name="userName" class="form-control" id="emp_save_userName">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label >密码：</label>
                        <input  name="password" class="form-control" id="emp_save_password">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label >权限：</label>
                        <select  name="privilege" class="form-control" id="emp_save_privilege">
                            <option value="root">root</option>
                            <option value="common">common</option>
                        </select>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="save_do_emp_btn">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<%--//////////////////////////////////////////////////////////////////////////////////////--%>
<%--//////////////////////////////////////////////////////////////////////////////////////--%>
<%--//页面主体--%>

<div class="container">

    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>员工管理</h1>
        </div>
    </div>


    <!-- 按钮 -->
    <div class="row">
        <div class="col-md-10 col-md-offset-9">
            <button class="btn btn-success btn-lg" id="add_emp_btn" >
                <span class="glyphicon glyphicon-plus" aria-hidden="true">新增</span></button>
            <button class="btn btn-info btn-lg" id="query_emp_btn">
                <span class="glyphicon glyphicon-search" aria-hidden="true" >查询</span></button>
            <button class="btn btn-danger btn-lg" id="delete_emp_btn">
                <span class="glyphicon glyphicon-remove" aria-hidden="true" >删除</span></button>
        </div>
    </div>



    <!-- 显示所有信息 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" id="emp_table">
                <thead>
                <tr>
                    <th><span></span></th>
                    <th>员工编号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>电话</th>
                    <th>邮箱</th>
                    <th>地址</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>权限</th>
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
    //总的记录数
    var pageTotalrecord,currentPage;
    $(function () {
        //去首页
        to_page(1);
    });


    //页面跳转
    function to_page(pn){
        $.ajax({
            url:"${APP_PATH}/emp",
            data:"pn="+pn,
            type:"GET",
            success:function (result) {
                console.log(result);
                //解析显示住户数据
                //解析分页信息
                build_cost_table(result);

                build_pageInfo(result);

                build_page(result);
            }
        });

    }


    //表单数据添加
    function build_cost_table(result) {
        //每次请求后都清空表格
        $("#emp_table tbody").empty();
        var Hhs = result.extend.pageInfo.list;

        $.each(Hhs, function (index, item) {
            var imageTd = $("<td></td>").append("<span></span>").addClass("center-block glyphicon glyphicon-heart");
            var empIdTd = $("<td></td>").append(item.empId);
            var nameIdTd = $("<td></td>").append(item.name);
            var genderTd = $("<td></td>").append(item.gender=='m'?'男':'女');
            var ageTd = $("<td></td>").append(item.age);
            var telTd = $("<td></td>").append(item.telephone);
            var emailTd = $("<td></td>").append(item.email);
            var addressTd = $("<td></td>").append(item.address);
            var userNameTd = $("<td></td>").append(item.userName);
            var passwordTd = $("<td></td>").append(item.password);
            var privilegeTd = $("<td></td>").append(item.privilege);


            //编辑按钮
            var edBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>")).addClass("glyphicon glyphicon-pencil").append("编辑");
            //为编辑按钮添加一个自定义的属性
            edBtn.attr("edit_id", item.empId);

            //删除按钮
            var deBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>")).addClass("glyphicon glyphicon-trash").append("删除");
            //为删除按钮添加一个自定义的属性
            deBtn.attr("delete_id", item.empId);

            var checkBoxedTD = $("<input type='checkbox' class='check_item text-center'>");

            var btnTd = $("<td ></td>").append(edBtn).append(" ").append(deBtn);
            //append 方法每次执行完都换回以前的方法
            $("<tr></tr>").append(imageTd)
                .append(empIdTd)
                .append(nameIdTd)
                .append(genderTd)
                .append(ageTd)
                .append(telTd)
                .append(emailTd)
                .append(addressTd)
                .append(userNameTd)
                .append(passwordTd)
                .append(privilegeTd)
                .append(checkBoxedTD)
                .append(btnTd)
                .appendTo("#emp_table tbody");



            // alert(item.age);
        });
    }

    // /////////////////////////////////////////////////////////////////////////
    // /////////////////////////////////////////////////////////////////////////
    // 解析分页信息,页面跳转逻辑

    function build_pageInfo(result) {
        $("#page_info_area").empty();
        $("#page_info_area").append("第" + result.extend.pageInfo.pageNum + "页,总"
            + result.extend.pageInfo.pages + "页,总"
            + result.extend.pageInfo.total + "条记录");

        pageTotalrecord = result.extend.pageInfo.total;
        currentPage = result.extend.pageInfo.pageNum;
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


    // /////////////////////////////////////////////////////////////////////////////
    // /////////////////////////////////////////////////////////////////////////////
    // 添加弹框

    //清空表单样式和内容
    function reset_form(ele){
        // $(ele)[0].reset();
        // //清空表单样式
        // $(ele).find("*").removeClass("has-error has-success");
        // $(ele).find().text("");
        $(ele)[0].reset();
        //清空表单样式
        $(ele).find("*").removeClass("has-error has-success");
        $(ele).find("").text("");
    };


    // //点击新增按钮弹出框框
    $("#add_cost_btn").click(function () {
        $("#empAddModal form")[0].reset();
        //
        reset_form("#empAddModal form");


        $("#empAddModal").modal({
            backdrop:"static"
        })
    });






    // ////////////////////////////////////////////////////////////////////////////
    // ////////////////////////////////////////////////////////////////////////////
    //     添加的数据校验



    //弹出的存储框检验
    //校验表单数据
    function validate_add_form(){

        //拿到要校验的数据,使用正则表达式
        //校验订单号
        var intempId = $("#emp_save_empId").val();
        var empId = /^([1-4][0-9]{4}|50000)$/;
        if (!empId.test(intempId)){
            //alert("请输入正确的房屋编码");
            // $("#holderInputHouseId")
            show_validate_msg("#emp_save_costId","error","请输入正确的员工编码10000-50000")
            return false;
        }else{
            show_validate_msg("#emp_save_costId","success","");
        };


        //房屋编号
        var intname = $("#emp_save_name").val();
        var name = /^[\u4E00-\u9FA5A-Za-z]+$/;
        if (!name.test(intname)) {
            show_validate_msg("#emp_save_houseId","error","请输入正确姓名");
            return false;
        }else{
            show_validate_msg("#emp_save_houseId","success","");
        };


        //
        //电费
        var intEle = $("#emp_save_ele").val();
        var ele = /^(?:[0-9]{1,3}|1000)$/;
        if (!ele.test(intEle)){
            show_validate_msg("#cost_save_ele","error","请输入合理的费用");

            return false;
        }else {
            // $("#holderInputAge").parent().addClass("has-success");
            // $("#holderInputAge").next("span").text("");
            show_validate_msg("#cost_save_ele","success","");
        };

        //煤气费
        var intGas = $("#cost_save_gas").val();
        var gas = /^(?:[0-9]{1,3}|1000)$/;
        if (!gas.test(intGas)){
            show_validate_msg("#cost_save_gas","error","请输入合理的费用");
            return false;
        }else{
            show_validate_msg("#cost_save_gas","success","")
        };


        //水费
        var  intWater = $("#emp_save_water").val();
        var  water = /^(?:[0-9]{1,3}|1000)$/;
        if (!water.test(intWater)){
            show_validate_msg("#emp_save_water","error","请输入合理的费用");
            return false;
        }else{
            show_validate_msg("#emp_save_water","success","")
        };


        //物业费
        var intFee = $("#emp_save_fee").val();
        var fee = /^(?:[0-9]{1,3}|1000)$/;
        if (!fee.test(intFee)){
            show_validate_msg("#emp_save_fee","error","请输入合理的费用");
            return false;
        }else{
            show_validate_msg("#emp_save_fee","success","");
        }

        return true;

    };

    $("#emp_save_empId").change(function () {
        //检查houseId是否可用
        var houseId = this.value;
        $.ajax({
            url:"${APP_PATH}/checkEmpId",
            data:"id="+houseId,
            type:"POST",
            success:function (result) {
                if (result.code == 100) {
                    show_validate_msg("#emp_save_empId","success","编号可用");
                    $("#add_cost_btn").attr("flag","success");
                }else{
                    show_validate_msg("#emp_save_empId","error","编号已存在");
                    $("#add_cost_btn").attr("flag","error");
                }
            }
        });
    });



    //信息清除
    function show_validate_msg(ele,status,msg){
        //清除当前元素的校验
        $(ele).parent().removeClass("has-success has-error");
        $(ele).next("span").text("");
        if ("success" == status){
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text(msg);

        } else if("error == status"){
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(msg);
        }
    };



    $("#save_do_emp_btn").click(function () {
        //$("#costAddModal form").empty();
        // if(!validate_add_form()){
        // return false;
        // }
        //
        // //判断ajax的houseId是否可用
        // if($(this).attr("flag")=="error"){
        // return false;
        // }


        $.ajax({
            url:"${APP_PATH}/emp",
            type:"POST",
            data:$("#empAddModal form").serialize(),
            success:function (result) {
                if (result.code == 100){
                    alert("成功");
                    $("#empAddModal").modal('hide');
                    to_page(pageTotalrecord);
                }else{
                    alert("失败");
                }
            }
        });
    });

    <!-- 点击保存住户信息 -->
    <%--$("#save_do_cost_btn").click(function () {--%>
    <%--//发送ajax保存员工信息--%>

    <%--if(!validate_add_form()){--%>
    <%--return false;--%>
    <%--}--%>

    <%--//判断只爱按的ajax的houseId是否可用--%>
    <%--if($(this).attr("flag")=="error"){--%>
    <%--return false;--%>
    <%--}--%>

    <%--//alert($("#holderAddModal form").serialize());--%>
    <%--$.ajax({--%>
    <%--url:"${APP_PATH}/cost",--%>
    <%--type:"POST",--%>
    <%--data:$("#costAddModal form").serialize(),--%>
    <%--success:function (result) {--%>
    <%--//alert(result.message);--%>

    <%--if (result.code == 100) {--%>
    <%--//住户信息保存成功--%>
    <%--//1.关闭模态框--%>
    <%--$("#costAddModal").modal('hide');--%>

    <%--//跳转后一页--%>
    <%--to_page(pageTotalrecord);--%>
    <%--}else{--%>
    <%--console.log(result);--%>

    <%--};--%>

    <%--}--%>
    <%--});--%>
    <%--});--%>

    //更新按钮事件
    $(document).on("click", ".edit_btn",function () {

        //将得到的需要修改的员工id，传递到方法中
        getEmp($(this).attr("edit_id"));

        //将员工id给更新按钮
        $("#update_do_emp_btn").attr("edit_id", $(this).attr("edit_id"));
        $("#empUpdateModal").modal({
            backdrop:"static"
        });
    });

    function getEmp(empId) {
        $.ajax({
            url:"${APP_PATH}/emp/"+empId,
            type:"GET",
            success:function (result) {
                //console.log(result);
                var empData = result.extend.emp;
                $("#emp_update_empId").val(empData.empId);
                $("#emp_update_name").val(empData.name);
                $("#emp_update_gender").val(empData.gender);
                $("#emp_update_age").val(empData.age);
                $("#emp_update_telephone").val(empData.telephone);
                $("#emp_update_email").val(empData.email);
                $("#emp_update_address").val(empData.address);
                $("#emp_update_userName").val(empData.userName);
                $("#emp_update_password").val(empData.password);
                $("#emp_update_privilege").val(empData.privilege);
            }
        });
    }

    $("#update_do_emp_btn").click(function (){
        $.ajax({
            url:"${APP_PATH}/emp/"+$(this).attr("edit_id"),
            type:"PUT",
            data:$("#empUpdateModal form").serialize(),
            success:function (result) {
                $("#empUpdateModal").modal('hide');

                to_page(currentPage);
            }
        });
    });

    //删除事件按钮
    $(document).on("click",".delete_btn",function () {
        //alert("delete");
        $("#delete_do_emp_btn").attr("delete_id", $(this).attr("delete_id"));
        $("#empDeleteModal").modal({
            backdrop:"static"
        });

    });


    $("#delete_do_emp_btn").click(function (){
        $.ajax({
            url:"${APP_PATH}/emp/"+$(this).attr("delete_id"),
            type:"DELETE",
            success:function (result) {
                //console.log(result);
                $("#empDeleteModal").modal('hide');
                if(result.code == 100){
                    //alert("删除成功");
                    to_page(currentPage);
                }else{
                    alert("删除失败")
                }
            }
        });

    });


    //查询用户信息
    $("#query_emp_btn").click(function (){
        $("#empQueryModal").modal({
            backdrop:"static"
        });

    });

    $("#query_do_emp_btn").click(function () {
       // var id = $("#query_do_emp_btn").attr("id",$("#empQueryModal form").serialize());


                $("#empQueryModal").modal('hide');
                build_message();

                $("#empResultModal").modal({
                    backdrop:"static"
                });

    });

    function build_message() {
        $.ajax({
        url:"${APP_PATH}/emp/"+$("#query_id").val(),
        type:"GET",
            success:function (result) {
                var empData = result.extend.emp;
                $("#emp_result_empId").text(empData.empId);
                $("#emp_result_name").text(empData.name);
                $("#emp_result_gender").text(empData.gender == "m"?"男":"女");
                $("#emp_result_age").text(empData.age);
                $("#emp_result_telephone").text(empData.telephone);
                $("#emp_result_email").text(empData.email);
                $("#emp_result_address").text(empData.address);
                $("#emp_result_userName").text(empData.userName);
                $("#emp_result_password").text(empData.password);
                $("#emp_result_privilege").text(empData.privilege);
            }
        });
    };


    //添加
    $("#add_emp_btn").click(function (){
        $("#empAddModal").modal({
            backdrop:"static"
        });

    });

    $("#delete_emp_btn").click(function () {
        var query_btn = $("#query_do_emp_btn").attr("query_id", $("#empQueryModal form").serialize());


        $.ajax({
            url:"${APP_PATH}/emp/"+$(this).attr("query_id"),
            type:"GET",
            success:function (result) {
                $("#empQueryModal").modal('hide')
                //console.log(result);
                if(result.code == 100){
                    //alert("删除成功");
                    to_page(currentPage);
                }else{
                    alert("删除失败")
                }
            }
        });
    });


    $("#check_all").click(function(){
        //$(this).prop("checked");
        $(".check_item").prop("checked", $(this).prop("checked"));
    });

    $(document).on("click", ".check_item", function () {
        var flag = $(".check_item:checked").length == $(".check_item").length;

        $("check_all").prop("checked", flag);

    });


    //点击全部删除，就批量删除
    $("#delete_emp_btn").click(function(){
        //
        var Cids = "";
        var del_idstr = "";
        $.each($(".check_item:checked"),function(){
            //this
            Cids += $(this).parents("tr").find("td:eq(2)").text()+",";
            //组装员工id字符串
            del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
        });
        //去除empNames多余的,
        Cids = Cids.substring(0, Cids.length-1);
        //去除删除的id多余的-
        del_idstr = del_idstr.substring(0, del_idstr.length-1);
        if(confirm("确认删除【"+Cids+"】吗？")){
            //发送ajax请求删除
            $.ajax({
                url:"${APP_PATH}/cost/"+del_idstr,
                type:"DELETE",
                success:function(result){
                    alert(result.msg);
                    //回到当前页面
                    to_page(currentPage);
                }
            });
        }
    });






</script>
</body>


</html>
