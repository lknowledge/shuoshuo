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
    <title>房屋信息</title>
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


<body>


<div class="modal fade" id="houseResultModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">
                    </span>
                </button>
                <h4 class="modal-title">房屋信息</h4>
            </div>

            <div class="modal-body">
                <form class="form-group-lg" >
                    <div class="form-group">
                        <label>房屋编号：</label>
                        <span class="form-control-static" id="house_result_houseId">
                        </span>
                    </div>

                    <div class="form-group ">
                        <label>楼栋数：</label>
                        <span class="form-control-static" id="house_result_building">
                        </span>
                    </div>
                    <div class="form-group ">
                        <label >层数：</label>
                        <span type="text"  class="form-control-static"id="house_result_floor" >
                        </span>
                    </div>

                    <div class="form-group ">
                        <label >户号：</label>
                        <span type="text"  class="form-control-static"id="house_result_number" >
                        </span>
                    </div>

                    <div class="form-group">
                        <label>类型:</label>
                        <span type="text" class="form-control-static" id="house_result_type">
                        </span>
                    </div>

                    <div class="form-group">
                        <label >状态：</label>
                        <span type="text" class="form-control-static"id="house_result_statement">
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

<div class="modal fade" id="houseQueryModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">请输入房屋编号:</h4>
            </div>
            <form class="form-group-lg " >
                <div class="form-group">
                    <label class="modal-lg">房屋编号:</label>
                    <input class="form-group-lg input-lg col-lg-6 "id="query_id" type="text">
                    <span class="form-control-static" ></span>
                </div>

            </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="query_do_house_btn">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--//删除弹框--%>
<div class="modal fade" id="houseDeleteModal" tabindex="-1" role="dialog">
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
                <button type="button" class="btn btn-primary" id="delete_do_house_btn">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->




<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--//更新弹框--%>

<div class="modal fade" id="houseUpdateModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">
                    </span>
                </button>
                <h4 class="modal-title">订单</h4>
            </div>
            <!-- 订单修改表单 -->
            <div class="modal-body">
                <form class="form-group-lg" >
                    <div class="form-group">
                        <label>房屋编号：</label>
                        <input class="form-control" name="houseId" id="house_update_houseId"></input>
                    </div>

                    <div class="form-group ">
                        <label>楼栋数：</label>
                        <input class="form-control" name="building" id="house_update_building"></input>
                    </div>
                    <div class="form-group ">
                        <label >层数：</label>
                        <input type="text" name="floor" class="form-control" id="house_update_floor" >
                        <span ></span>
                    </div>
                    <div class="form-group ">
                        <label >户号：</label>
                        <input type="text" name="number" class="form-control" id="house_update_number" >
                        <span ></span>
                    </div>

                    <div class="form-group">
                        <label>类型:</label>
                        <input type="text" name="type" class="form-control" id="house_update_type">
                        <span></span>
                    </div>

                    <div class="form-group">
                        <label >面积：</label>
                        <input type="text" name="area" class="form-control" id="house_update_area">
                        <span></span>
                    </div>

                    <div class="form-group">
                        <label >状态：</label>
                        <select  name="statement" class="form-control" id="house_update_statement">
                            <option value="done">已住</option>
                            <option value="undo">未住</option>
                        </select>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="update_do_house_btn">更新</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--///////////////////////////////////////////////////////////////////////////////--%>
<%--//添加弹框--%>

<div class="modal fade" id="houseAddModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加新订单</h4>
            </div>
            <!-- 添加费用表单 -->
            <div class="modal-body">

                <form>
                    <div class="form-group">
                        <label>房屋编号：</label>
                        <input class="form-control" name="houseId" id="house_save_houseId">

                    </div>

                    <div class="form-group ">
                        <label>楼栋数：</label>
                        <select class="form-control" name="building" id="house_save_building">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                          <option value="6">6</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                        </select>
                    </div>
                    <div class="form-group ">
                        <label >层数：</label>
                        <select type="text" name="floor" class="form-control"id="house_save_floor" >
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </div>

                    <div class="form-group ">
                        <label >户号：</label>
                        <input type="text" name="number" class="form-control"id="house_save_number" >

                    </div>

                    <div class="form-group">
                        <label>类型:</label>
                        <select  name="type" type="text" class="form-control"id="house_save_type">
                            <option value="一室一厅">一室一厅</option>
                            <option value="两室一厅">两室一厅</option>
                            <option value="三室一厅">三室一厅</option>
                        </select>

                    </div>

                    <div class="form-group">
                        <label>面积:</label>
                        <input type="text" name="area" class="form-control" id="house_save_area">
                    </div>

                    <div class="form-group">
                        <label >状态：</label>
                        <select type="text" name="statement" class="form-control" id="house_save_statement">
                            <option value="undo">未住</option>
                            <option value="done">已住</option>
                        </select>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default " data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="save_do_house_btn">保存</button>
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
            <h1>房屋管理</h1>
        </div>
    </div>


    <!-- 按钮 -->
    <div class="row">
        <div class="col-md-10 col-md-offset-9">
            <button class="btn btn-success btn-lg" id="add_house_btn" >
                <span class="glyphicon glyphicon-plus" aria-hidden="true">新增</span></button>
            <button class="btn btn-info btn-lg" id="query_house_btn">
                <span class="glyphicon glyphicon-search" aria-hidden="true" >查询</span></button>
            <button class="btn btn-danger btn-lg" id="delete_house_btn">
                <span class="glyphicon glyphicon-remove" aria-hidden="true" >删除</span></button>
        </div>
    </div>



    <!-- 显示所有信息 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" id="house_table">
                <thead>
                <tr>
                    <th><span></span></th>
                    <th>房屋编号</th>
                    <th>楼栋号</th>
                    <th>层数</th>
                    <th>户号</th>
                    <th>类型</th>
                    <th>面积</th>
                    <th>状态</th>
                    <td>选择</td>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>




                </tbody>


            </table>
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
            url:"${APP_PATH}/house",
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
        $("#cost_table tbody").empty();
        var Hhs = result.extend.pageInfo.list;

        $.each(Hhs, function (index, item) {
            var imageTd = $("<td></td>").append("<span></span>").addClass("center-block glyphicon glyphicon-user");
            var houseIdTd = $("<td></td>").append(item.houseId);
            var buildingTd = $("<td></td>").append(item.building);
            var floorTd = $("<td></td>").append(item.floor);
            var numberTd = $("<td></td>").append(item.number);
            var typeTd = $("<td></td>").append(item.type);
            var areaTd = $("<td></td>").append(item.area);
            var statementTd = $("<td></td>").append(item.statement=='done'?'已住':'未住');

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
                .append(buildingTd)
                .append(floorTd)
                .append(numberTd)
                .append(typeTd)
                .append(areaTd)
                .append(statementTd)
                .append(checkBoxedTD)
                .append(btnTd)
                .appendTo("#house_table tbody");



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
    $("#add_house_btn").click(function () {
        $("#houseAddModal form")[0].reset();
        //
        reset_form("#houseAddModal form");


        $("#houseAddModal").modal({
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
        var intcostId = $("#house_save_houseId").val();
        var costId = /^([1-4][0-9]{4}|50000)$/;
        if (!costId.test(intcostId)){
            //alert("请输入正确的房屋编码");
            // $("#holderInputHouseId")
            show_validate_msg("#cost_save_costId","error","请输入正确的订单编码")
            return false;
        }else{
            show_validate_msg("#cost_save_costId","success","");
        };


        //房屋编号
        var inthouseId = $("#cost_save_houseId").val();
        var houseId = /^([1-4][0-9]{4}|50000)$/;
        if (!houseId.test(inthouseId)) {
            show_validate_msg("#cost_save_houseId","error","请输入正确范围的房屋编号");
            return false;
        }else{
            show_validate_msg("#cost_save_houseId","success","");
        };


        //
        //电费
        var intEle = $("#cost_save_ele").val();
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
        var  intWater = $("#cost_save_water").val();
        var  water = /^(?:[0-9]{1,3}|1000)$/;
        if (!water.test(intWater)){
            show_validate_msg("#cost_save_water","error","请输入合理的费用");
            return false;
        }else{
            show_validate_msg("#cost_save_water","success","")
        };


        //物业费
        var intFee = $("#cost_save_fee").val();
        var fee = /^(?:[0-9]{1,3}|1000)$/;
        if (!fee.test(intFee)){
            show_validate_msg("#cost_save_fee","error","请输入合理的费用");
            return false;
        }else{
            show_validate_msg("#cost_save_fee","success","");
        }

        return true;

    };

    $("#house_save_houseId").change(function () {
        //检查houseId是否可用
        var houseId = this.value;
        $.ajax({
            url:"${APP_PATH}/checkHouseId",
            data:"id="+$(this.value),
            type:"POST",
            success:function (result) {
                if (result.code == 100) {
                    show_validate_msg("#house_save_houseId","success","编号可用");
                    $("#add_house_btn").attr("flag","success");
                }else{
                    show_validate_msg("#house_save_houseId","error","编号已存在");
                    $("#add_house_btn").attr("flag","error");
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



    $("#save_do_house_btn").click(function () {
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
            url:"${APP_PATH}/house",
            type:"POST",
            data:$("#houseAddModal form").serialize(),
            success:function (result) {
                if (result.code == 100){
                    alert("成功");
                    $("#houseAddModal").modal('hide');
                    to_page(pageTotalrecord);
                }else{
                    alert("失败");
                }
            }
        });
    });


    //更新按钮事件
    $(document).on("click", ".edit_btn",function () {

        //将得到的需要修改的员工id，传递到方法中
        getHouse($(this).attr("edit_id"));

        //将员工id给更新按钮
        $("#update_do_house_btn").attr("edit_id", $(this).attr("edit_id"));
        $("#houseUpdateModal").modal({
            backdrop:"static"
        });
    });

    function getHouse(houseId) {
        $.ajax({
            url:"${APP_PATH}/house/"+houseId,
            type:"GET",
            success:function (result) {
                //console.log(result);
                var houseData = result.extend.house;
                $("#house_update_houseId").val(houseData.houseId);
                $("#house_update_building").val(houseData.building);
                $("#house_update_floor").val(houseData.floor);
                $("#house_update_number").val(houseData.number);
                $("#house_update_type").val(houseData.type);
                $("#house_update_area").val(houseData.area);
                $("#house_update_statement").val(houseData.statement);
            }
        });
    }

    $("#update_do_house_btn").click(function (){
        $.ajax({
            url:"${APP_PATH}/house/"+$(this).attr("edit_id"),
            type:"PUT",
            data:$("#houseUpdateModal form").serialize(),
            success:function (result) {
                $("#houseUpdateModal").modal('hide');

                to_page(currentPage);
            }
        });
    });

    //删除事件按钮
    $(document).on("click",".delete_btn",function () {
        //alert("delete");
        $("#delete_do_house_btn").attr("delete_id", $(this).attr("delete_id"));
        $("#houseDeleteModal").modal({
            backdrop:"static"
        });

    });


    $("#delete_do_house_btn").click(function (){
        $.ajax({
            url:"${APP_PATH}/house/"+$(this).attr("delete_id"),
            type:"DELETE",
            success:function (result) {
                //console.log(result);
                $("#houseDeleteModal").modal('hide');
                if(result.code == 100){
                    //alert("删除成功");
                    to_page(currentPage);
                }else{
                    alert("删除失败")
                }
            }
        });

    });


    //查询信息
    $("#query_house_btn").click(function (){
        $("#houseQueryModal").modal({
            backdrop:"static"
        });

    });


    $("#query_do_house_btn").click(function () {
        var id = $("#query_id").val();

      //  build_result(id);



    // });
    //
    // function build_result() {

        $.ajax({
            url:"${APP_PATH}/house/"+id,
            type:"GET",
            success:function (result) {
                var houseData = result.extend.house;

                $("#house_result_houseId").text(houseData.houseId);
                $("#house_result_building").text(houseData.building);
                $("#house_result_floor").text(houseData.floor);
                $("#house_result_number").text(houseData.number);
                $("#house_result_type").text(houseData.type);
                $("#house_result_area").text(houseData.area);
                $("#house_result_statement").text(houseData.statement);
            }
        });

        $("#houseQueryModal").modal('hide');
        $("#houseResultModal").modal({
            backdrop:"static"
        })
    });






















    $("#add_house_btn").click(function (){
        $("#houseAddModal").modal({
            backdrop:"static"
        });

    });

    $("#delete_house_btn").click(function () {
        var query_btn = $("#query_do_house_btn").attr("query_id", $("#houseQueryModal form").serialize());

        $.ajax({
            url:"${APP_PATH}/cost/"+$(this).attr("query_id"),
            type:"GET",
            success:function (result) {
                $("#houseQueryModal").modal('hide')
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
    $("#delete_house_btn").click(function(){
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
