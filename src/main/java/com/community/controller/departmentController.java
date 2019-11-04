package com.community.controller;

import com.community.bean.Department;
import com.community.bean.Message;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class departmentController {


    @Autowired
    com.community.service.departmentService departmentService;


    /**
     * 删除部门数据
     * @param ids
     * @return
     */
    @RequestMapping(value = "/dept/{ids}", method = RequestMethod.DELETE)
    @ResponseBody
    public Message deleteDpet(@PathVariable("ids")String ids){
        if (ids.contains("-")){
            List<Integer> del_list = new ArrayList<>();
            String[] str_ids = ids.split("-");
            for(String string : str_ids){
                del_list.add(Integer.parseInt(string));
            }
            departmentService.deleteBatch(del_list);
        }
        else {
            Integer id = Integer.parseInt(ids);
            departmentService.deleteDpt(id);
        }
        return Message.success();
    }


    /**
     * 直接发送Ajax请求
     * 信息�?houseHolder
     * {houseId=4, name='null', gender='null', age=null, members=null, telephone='null', email='null'}
     *
     * 问题：
     * 请求中有数据
     * 但是Employee对象封装不上
     * update rq_householder where houseId = 3;报错
     *
     * 原因：
     *   Tomcat
     *     1.将请求体中的数据，封装一个map
     *     2.SpringMVC封装POJO对象的时候。
     *                会把POJO中的每个属性值，request.getParamter("email")
     *
     *
     *     ajax返送PUT请求的问题
     *         PUT请求中的数据request.getParamter()那不到
     *         Tomcat服务器对于PUT请求，不会封装其中的请求数据为map
     *               只有POST形式的请求，Tomcat才会封装
     *               org.
     *
     *     配置上HttpPutFormContentFilter
     * 更新员工数据
     * @param department
     * @return
     */
    @RequestMapping(value = "/dept/{dept_id}", method = RequestMethod.PUT)
    @ResponseBody
    public Message updateDept(Department department, HttpServletRequest request){
//        System.out.println("信息：" + holder);
////        System.out.println("将要显示的员工数据：" + "房屋编号"+ houseHolder.getHouseId() +"姓名："+ houseHolder.getName()
////                +"年龄："+ houseHolder.getAge() +"性别："+ houseHolder.getGender() +"家庭成员："+ houseHolder.getMembers()
////                +"电话："+ houseHolder.getTelephone() +"邮箱："+ houseHolder.getEmail());
        departmentService.updateDpt(department);
        System.out.println("请求中的值" + request.getParameter("gender"));
        return Message.success().add("msg","修改成功");
    }

    /**
     * 查询账单显示
     * @param id
     * @return
     */

    @RequestMapping(value = "/dept/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Message getDept(@PathVariable("id")Integer id){
        Department department = departmentService.getDemps(id);
        return Message.success().add("dept", department);
    }


    /**
     * 检查costId是否可用
     *
     */
//    @ResponseBody
//    @RequestMapping("/checkDeptId")
//    public Message checkId(@RequestParam("id")Integer id){
//        //先判断用户名是否合法
//
//        boolean flag = departmentService.c
//        if (flag){
//            return Message.success();
//        }else{
//            return Message.fail();
//        }
//
//    }


    /**
     * 保存新住户信息
     *
     */
    @RequestMapping(value="/dept",method=RequestMethod.POST)
    @ResponseBody
    public Message saveDept(@Valid Department department, BindingResult result){

        if (result.hasErrors()){
            Map<String, Object> map = new HashMap<>();
            List<FieldError> errors = result.getFieldErrors();
            for (FieldError fieldError : errors){
                System.out.println("错误的字段名:" + fieldError.getField());
                System.out.println("错误信息:" + fieldError.getDefaultMessage());
                map.put(fieldError.getField(),fieldError.getDefaultMessage());
            }
            return Message.fail().add("errorsFields", map);
        }else{
            departmentService.saveDept(department);
            return Message.success();
        }


    }



    /**
     *  查询所有的户主信息
     */
    @RequestMapping("/dept")
    @ResponseBody
    public Message getDept(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
                           Model model) {
        // 这不是一个分页查询
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 10);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Department> depts = departmentService.getAll();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(depts, 5);
        return Message.success().add("pageInfo", page);

    }
}
