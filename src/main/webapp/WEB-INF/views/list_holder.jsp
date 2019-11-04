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

    <jsp:include page="/common/head.jsp"></jsp:include>



</head>


<body background="images/27.jpg">
<!-- 住户信息查询模态框 -->
<div class="modal fade" id="holderQueryModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">请输入住户的房屋编号:</h4>
            </div>
            <form class="form-group-lg " >
                <div class="form-group">
                    <label   class="modal-lg">房屋编号：</label>
                    <input class="form-group-lg input-lg col-lg-6 " id="holderQueryHouseId" type="text">
                    <span class="form-control-static" id="query_holder_houseId"></span>
                </div>

            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="query_holder_btn">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="modal fade" id="holderQueryListModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">住户信息</h4>
            </div>
            <!-- 住户修改表单 -->
            <div class="modal-body">
                <form class="form-group-lg" >
                    <div class="form-group">
                        <label >房屋编号：</label>
                        <span class="form-control-static" id="holderQueryListHouseId"></span>
                    </div>

                    <div class="form-group ">
                        <label>姓名：</label>
                        <span class="form-control-static" id="holderQueryListName"></span>
                    </div>
                    <div class="form-group ">
                        <label >年龄：</label>
                        <span class="form-control-static" id="holderQueryListAge"></span>
                    </div>

                    <div class="form-group">
                        <label>性别：</label>
                        <span class="form-control-static" id="holderQueryListGender"></span>
                    </div>

                    <div class="form-group">
                        <label >家庭成员：</label>
                        <span class="form-control-static" id="holderQueryListMem"></span>
                    </div>

                    <div class="form-group">
                        <label >电话：</label>
                        <span class="form-control-static" id="holderQueryListTel"></span>
                    </div>
                    <div class="form-group">
                        <label>邮箱：</label>
                        <span class="form-control-static" id="holderQueryListEmail"></span>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

















<!-- 住户信息删除模态框 -->
<div class="modal fade" id="holderDeleteModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">删除警告</h4>
            </div>
            <div>
            <p class="bg-danger text-center">确认要删除吗？</p>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="Delete_holder_btn">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!-- 住户信息更新模态框 -->
<div class="modal fade" id="holderUpdateModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">住户信息</h4>
            </div>
            <!-- 住户修改表单 -->
            <div class="modal-body">
                <form class="form-group-lg" >
                    <div class="form-group">
                        <label  for="holderInputHouseId">房屋编号：</label>
                        <span class="form-control-static" id="holderUpdateHouseId-static"></span>
                    </div>

                    <div class="form-group ">
                        <label for="holderInputName">姓名：</label>
                        <input type="text" name="name" class="form-control" id="holderUpdateName" >
                        <span></span>
                    </div>
                    <div class="form-group ">
                        <label >年龄：</label>
                        <input type="text" name="age" class="form-control" id="holderUpdateAge">
                        <span></span>
                    </div>

                    <div class="form-group">
                        <label>性别：</label>
                        <div class="radio">
                            <label>
                                <input type="radio" name="gender" id="holderUpdateGender1" value="m" checked>男
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="gender" id="holderUpdateGender2" value="f">女
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label >家庭成员：</label>
                        <select  name="members" class="form-control" id="holderUpdateMem">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label >电话：</label>
                        <input  name="telephone" class="form-control" id="holderUpdateTel">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label for="holderInputEmail">邮箱：</label>
                        <input type="email" name="email" class="form-control" id="holderUpdateEmail" placeholder="jane.doe@example.com">
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="Update_holder_btn">更新</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

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


                <form class="form-group-lg" >
                    <div class="form-group">
                        <label  for="holderInputHouseId">房屋编号：</label>
                        <input type="text" name="houseId" class="form-control " id="holderInputHouseId" >
                        <span></span>
                    </div>

                    <div class="form-group ">
                        <label for="holderInputName">姓名：</label>
                        <input type="text" name="name" class="form-control" id="holderInputName" >
                        <span></span>
                     </div>
                    <div class="form-group ">
                        <label >年龄：</label>
                        <input type="text" name="age" class="form-control" id="holderInputAge">
                        <span></span>
                    </div>

                    <div class="form-group">
                        <label>性别：</label>
                        <div class="radio">
                            <label>
                                <input type="radio" name="gender" id="holderInputGender1" value="m" checked>男
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="gender" id="holderInputGender2" value="f">女
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label >家庭成员：</label>
                        <select  name="members" class="form-control" id="holderInputMem">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label >电话：</label>
                        <input  name="telephone" class="form-control" id="holderInputTel">
                        <span></span>
                    </div>
                    <div class="form-group">
                        <label for="holderInputEmail">邮箱：</label>
                        <input type="email" name="email" class="form-control" id="holderInputEmail" placeholder="jane.doe@example.com">
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="holder_save_modal_btn">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<div class="container">

  <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>住户管理</h1>
        </div>
    </div>


    <!-- 按钮 -->
    <div class="row">
        <div class="col-md-10 col-md-offset-9">
            <button class="btn btn-success btn-lg" id="holder_add_modal_btn" >
                <span class="glyphicon glyphicon-plus" aria-hidden="true">新增</span></button>
            <button class="btn btn-info btn-lg" id="holder_query_modal_btn">
                <span class="glyphicon glyphicon-search" aria-hidden="true" >查询</span></button>
            <button class="btn btn-danger btn-lg" id="holder_delete_modal_btn">
                <span class="glyphicon glyphicon-remove" aria-hidden="true" >删除</span></button>
        </div>
    </div>



    <!-- 显示 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" id="Hhs_table" border="1" cellspacing="0" bgcolor="#7fff00" >
                <thead>
                <tr>
                    <th><span></span></th>
                    <th>房屋编号</th>
                    <th>户主姓名</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>家庭成员</th>
                    <th>联系电话</th>
                    <th>邮箱</th>
                    <th>
                        <span>选择</span>
                        <input  type="checkbox" id="check_all">
                        <span clas="glyphicon glyphicon-align-left"></span>
                    </th>
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
    //总的记录数
    var pageTotalrecord,currentPage;
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
                console.log(result);
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
            var imageTd = $("<td></td>").append("<span></span>").addClass("center-block glyphicon glyphicon-user");
            var houseIdTd = $("<td></td>").append(item.houseId);
            var nameTd = $("<td></td>").append(item.name);
            var genderTd = $("<td></td>").append(item.gender=='m'?"男":"女");
            var ageTd = $("<td></td>").append(item.age);
            var membersTd = $("<td></td>").append(item.members);
            var telephoneTd = $("<td></td>").append(item.telephone);
            var emailTd = $("<td></td>").append(item.email);

            //编辑按钮
            var edBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                .append($("<span></span>")).addClass("glyphicon glyphicon-pencil").append("编辑");
            //为编辑按钮添加一个自定义的属性
            edBtn.attr("edit_id", item.houseId);

            //删除按钮
            var deBtn = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                .append($("<span></span>")).addClass("glyphicon glyphicon-trash").append("删除");
            //为删除按钮添加一个自定义的属性
            deBtn.attr("delete_id", item.houseId);

            var checkBoxedTD = $("<input type='checkbox' class='check_item text-center'>");

            var btnTd = $("<td ></td>").append(edBtn).append(" ").append(deBtn);
            //append 方法每次执行完都换回以前的方法
            $("<tr></tr>").append(imageTd)
                .append(houseIdTd)
                .append(nameTd)
                .append(genderTd)
                .append(ageTd)
                .append(membersTd)
                .append(telephoneTd)
                .append(emailTd)
                .append(checkBoxedTD)
                .append(btnTd)
                .appendTo("#Hhs_table tbody");

        });
    }

    //解析分页信息
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
    }



    //点击新增按钮弹出框框
    $("#holder_add_modal_btn").click(function () {
        //表单重置
        //$("#holderAddModal form")[0].reset();

        reset_form("#holderAddModal form");
        getBuildings();

       $("#holderAddModal").modal({
           //backdrop:"static"
       });
    });


    function getBuildings() {
        $.ajax({
            url:"${APP_PATH}/house",
            type:"GET",
            success:function (result) {
                //$("#holderAddModal select").append("")
                $.each(result.extend.houses,function () {
                    // var optionEle = $("<option></option>").append(this.building).attr("value", this.building);
                    // optionEle.appendTo("#holderAddModal select");
                })
            }
        });

    }

    //弹出的存储框检验
    //校验表单数据
    function validate_add_form(){
        //拿到要校验的数据,使用正则表达式
        //校验姓名
        var intHouseId = $("#holderInputHouseId").val();
        var houseId = /^([1-4][0-9]{4}|50000)$/;
        if (!houseId.test(intHouseId)){
            //alert("请输入正确的房屋编码");
            // $("#holderInputHouseId")
            show_validate_msg("#holderInputHouseId","error","请输入正确的房屋编码")
            return false;
        }else{
            show_validate_msg("#holderInputHouseId","success","");
        };


        var intName = $("#holderInputName").val();
        var name = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
        if (!name.test(intName)) {
            //alert("请输入正确的姓名格式");
            // $("#holderInputName").parent().addClass("has-error");
            // $("#holderInputName").next("span").text("用户名必须是2-5位的汉字或者是6-16位的英文字母");
            show_validate_msg("#holderInputName","error","请输入正确的姓名格式");
            return false;
        }else{
            // $("#holderInputName").parent().addClass("has-success");
            // $("#holderInputName").next("span").text("");
            show_validate_msg("#holderInputName","success","");
        };


       //
       //校验年龄
        var inAge = $("#holderInputAge").val();
        var age = /^(?:[1-9]?\d|100)$/;
        if (!age.test(inAge)){
            //alert("请输入正确的年龄");
            // $("#holderInputAge").parent().addClass("has-error");
            // $("#holderInputAge").next("span").text("请输入正确的年龄");
            show_validate_msg("#holderInputAge","error","请输入正确的年龄");

            return false;
        }else {
            // $("#holderInputAge").parent().addClass("has-success");
            // $("#holderInputAge").next("span").text("");
            show_validate_msg("#holderInputAge","success","");
        };

        //检验邮箱
        var inTel = $("#holderInputEmail").val();
        var tel = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
        if (!tel.test(inTel)){
            //alert("请输入正确的邮箱地址");
            // $("#holderInputEmail").parent().addClass("has-error");
            // $("#holderInputEmail").next("span").text("请输入正确的年龄");
            show_validate_msg("#holderInputEmail","error","请输入正确的邮箱地址");
            return false;
        }else{
            // $("#holderInputEmail").parent().addClass("has-success");
            // $("#holderInputEmail").next("span").text("");
            show_validate_msg("#holderInputEmail","success","")
        };


        //家庭成员人数
        var  intMem = $("#holderInputMem").val();
        var mem = /^(?:[1-9]?\d|100)$/;
        if (!mem.test(intMem)){
            //alert("请输入正常的家庭成员人数");
            // $("#holderInputMem").parent().addClass("has-error");
            // $("#holderInputMem").next("span").text("请输入正确的年龄");
            show_validate_msg("#holderInputMem","error","请输入合理的家庭人数");
            return false;
        }else{
            // $("#holderInputMem").parent().addClass("has-success");
            // $("#holderInputMem").next("span").text("");
            show_validate_msg("#holderInputMem","success","")
        };


        //电话
        var inTel = $("#holderInputTel").val();
        var tel = /^(17[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        if (!tel.test(inTel)){
            //alert("请输入正确的电话号码");
            show_validate_msg("#holderInputTel","error","请输入正确的电话号码");
            return false;
        }else{
            // $("#holderInputMem").parent().addClass("has-success");
            // $("#holderInputMem").next("span").text("");
            show_validate_msg("#holderInputTel","success","");
        }

        return true;

    };

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
    }

    $("#holderInputHouseId").change(function () {
        //检查houseId是否可用
        var houseId = this.value;


        $.ajax({
            url:"${APP_PATH}/checkHouseId",
            data:"houseId="+houseId,
            type:"POST",
            success:function (result) {
                if (result.code == 100) {
                    show_validate_msg("#holderInputHouseId","error","编号已存在");
                    $("#holder_save_modal_btn").attr("flag","");
                }else{
                    show_validate_msg("#holderInputHouseId","success","编号可用");
                    $("#holder_save_modal_btn").attr("flag","success");
                }
            }
        })
    })


    <!-- 点击保存住户信息 -->
    $("#holder_save_modal_btn").click(function () {
        //发送ajax保存员工信息
        if(!validate_add_form()){
            return false;
        }

        //判断ajax的houseId是否可用
        if($(this).attr("flag")=="error"){
            return false;
        }

        //alert($("#holderAddModal form").serialize());
        $.ajax({
        url:"${APP_PATH}/holder",
        type:"POST",
        data:$("#holderAddModal form").serialize(),
            success:function (result) {
                //alert(result.message);

                if (result.code == 100) {
                    //住户信息保存成功
                    //1.关闭模态框
                    $("#holderAddModal").modal('hide');

                    //跳转后一页
                    to_page(pageTotalrecord);
                }else{
                    console.log(result);
                    alert(result.extend.errorFields.email);
                    alert(result.extend.errorFields.name);
                };

            }
        });
    });

    //查询事件
    $("#holder_query_modal_btn").click(function () {
        $("#holderQueryModal").modal({
            backdrop:"static"
        });
    });

    $("#query_holder_btn").click(function () {
        var houseId = $("#holderQueryHouseId").val();
        $.ajax({
            url:"${APP_PATH}/holder/"+houseId,
            type:"GET",
            success:function (result) {
                var holderData = result.extend.houseHolder;
                $("#holderQueryListHouseId").text(holderData.houseId);
                $("#holderQueryListName").text(holderData.name);
                $("#holderQueryListAge").text(holderData.age);
                $("#holderQueryListGender").text([holderData.gender]='m'?'男':'女');
                $("#holderQueryListMem").text(holderData.members);
                $("#holderQueryListTel").text(holderData.telephone);
                $("#holderQueryListEmail").text(holderData.email);
            }
        });


        $("#holderQueryListModal").modal({
            backdrop:"static"
        });
    });


    //更新按钮事件
    $(document).on("click", ".edit_btn",function () {
        //alert("edit");
        // 显示住户信息

        //将得到的需要修改的员工id，传递到方法中
        getHolder($(this).attr("edit_id"));

        //将员工id给更新按钮
        $("#Update_holder_btn").attr("edit_id", $(this).attr("edit_id"));
        $("#holderUpdateModal").modal({
            backdrop:"static"
        });
    });
    
    function getHolder(houseId) {
        $.ajax({
            url:"${APP_PATH}/holder/"+houseId,
            type:"GET",
            success:function (result) {
                //console.log(result);
                var holderData = result.extend.houseHolder;
                $("#holderUpdateHouseId-static").text(holderData.houseId);
                $("#holderUpdateName").val(holderData.name);
                $("#holderUpdateAge").val(holderData.age);
                $("#holderUpdateModal input[name=gender]").val([holderData.gender]);
                $("#holderUpdateModal select[name=members]").val(holderData.members);
                $("#holderUpdateTel").val(holderData.telephone);
                $("#holderUpdateEmail").val(holderData.email);
            }
        });
    }

    $("#Update_holder_btn").click(function (){
        $.ajax({
            url:"${APP_PATH}/holder/"+$(this).attr("edit_id"),
            type:"PUT",
            data:$("#holderUpdateModal form").serialize(),
            success:function (result) {
                $("#holderUpdateModal").modal('hide');

                to_page(currentPage);
            }
        });
    });

    //删除事件按钮
    $(document).on("click",".delete_btn",function () {
        //alert("delete");
        $("#Delete_holder_btn").attr("delete_id", $(this).attr("delete_id"));
        $("#holderDeleteModal").modal({
            backdrop:"static"
        });

    });


    $("#Delete_holder_btn").click(function (){
        $.ajax({
            url:"${APP_PATH}/holder/"+$(this).attr("delete_id"),
            type:"DELETE",
            success:function (result) {
                //console.log(result);
                $("#holderDeleteModal").modal('hide');
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
    $("#holder_query_modal_btn").click(function (){
       $("#holderQueryModal").modal({
           backdrop:"static"
       });

    });

    $("#query_holder_btn").click(function () {
        var query_btn = $("#query_holder_btn").attr("query_id", $("#holderQueryModal form").serialize());

        $.ajax({
            url:"${APP_PATH}/holder/"+$(this).attr("query_id"),
            type:"GET",
            success:function (result) {
                $("#holderQueryModal").modal('hide')
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

    //点击全部删除
    <%--$("#holder_delete_modal_btn").click(function () {--%>
        <%----%>
        <%--var names = "";--%>
        <%--var del_ids = "";--%>
        <%--$.each($(".check_item:checked"),function () {--%>
            <%--//alert($(this).parent("tr").find("td:eq(2)").text());--%>
            <%--//住户名字串--%>
           <%--names += $(this).parent("tr").find("td:eq(2)").text() + ",";--%>
           <%--//住户房屋编号串--%>
           <%--del_ids += $(this).parent("tr").find("td:eq(1)").text()+"-";--%>
        <%--});--%>

        <%--names = houseId.substring(0, names.length-1);--%>
        <%--del_ids = houseId.substring(0, del_ids.length-1);--%>
        <%--if (confirm("确认删除【" + names + "】吗？" )){--%>
            <%--//发送ajax请求--%>
            <%--$.ajax({--%>
                <%--url:"${APP_PATH}/holder/" + del_ids,--%>
                <%--type:"DELETE",--%>
                <%--success:function (result) {--%>
                    <%--alert(result.message);--%>

                    <%--to_page(currentPage);--%>
                <%--}--%>


            <%--})--%>
        <%--}--%>
        <%----%>
        <%----%>
    <%--});--%>

    //点击全部删除，就批量删除
    $("#holder_delete_modal_btn").click(function(){
        //
        var names = "";
        var del_idstr = "";
        $.each($(".check_item:checked"),function(){
            //this
            names += $(this).parents("tr").find("td:eq(2)").text()+",";
            //组装员工id字符串
            del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
        });
        //去除empNames多余的,
        names = names.substring(0, names.length-1);
        //去除删除的id多余的-
        del_idstr = del_idstr.substring(0, del_idstr.length-1);
        if(confirm("确认删除【"+names+"】吗？")){
            //发送ajax请求删除
            $.ajax({
                url:"${APP_PATH}/holder/"+del_idstr,
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
