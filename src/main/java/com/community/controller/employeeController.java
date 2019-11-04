package com.community.controller;

import com.community.bean.Employee;
import com.community.bean.Message;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class employeeController {

    @Autowired
    com.community.service.employeeService employeeService;


//
//    @RequestMapping(value="/login")
//    public String login(@Param("username") String username,@Param("password") String password,HttpServletRequest request) {
//        User user=userService.checkLogin(username, password);
//        if(user!=null){
//            HttpSession session=request.getSession();
//            session.setAttribute("user",user);
//            return "redirect:/user/home";// 路径 WEB-INF/pages/welcome.jsp
//        }
//        request.setAttribute("error", "用户名或密码错误");
//
//
//        return "error";
//    }

    @ResponseBody
    @RequestMapping("/employeePage")
    public void toPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Message message = new Message();

        if (session.getAttribute("Privilege").equals("root")){
            req.getRequestDispatcher("WEB-INF/views/list_employee.jsp").forward(req, resp);
            message.success();
        }else{
            req.getRequestDispatcher("WEB-INF/views/manager.jsp").forward(req, resp);
            message.fail();
        }
       // return message;
    }



    /**
     * 删除员工数据
     * @param ids
     * @return
     */
    @RequestMapping(value = "/emp/{ids}", method = RequestMethod.DELETE)
    @ResponseBody
    public Message deleteEmp(@PathVariable("ids")String ids){
        if (ids.contains("-")){
            List<Integer> del_list = new ArrayList<>();
            String[] str_ids = ids.split("-");
            for(String string : str_ids){
                del_list.add(Integer.parseInt(string));
            }
            employeeService.deleteBatch(del_list);
        }
        else {
            Integer id = Integer.parseInt(ids);
            employeeService.deleteEmp(id);
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
     * @param employee
     * @return
     */
    @RequestMapping(value = "/emp/{emp_id}", method = RequestMethod.PUT)
    @ResponseBody
    public Message updateEmp(Employee employee, HttpServletRequest request){
//        System.out.println("信息：" + holder);
////        System.out.println("将要显示的员工数据：" + "房屋编号"+ houseHolder.getHouseId() +"姓名："+ houseHolder.getName()
////                +"年龄："+ houseHolder.getAge() +"性别："+ houseHolder.getGender() +"家庭成员："+ houseHolder.getMembers()
////                +"电话："+ houseHolder.getTelephone() +"邮箱："+ houseHolder.getEmail());
        employeeService.updateEmp(employee);
        //System.out.println("请求中的值" + request.getParameter("gender"));
        return Message.success().add("msg","修改成功");
    }

    /**
     * 查询
     * @param id
     * @return
     */

    @RequestMapping(value = "/emp/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Message getEmp(@PathVariable("id")Integer id){
        Employee employee = employeeService.getEmps(id);
        return Message.success().add("emp", employee);
    }



    /**
     * 检查员工id是否可用
     *
     */
    @ResponseBody
    @RequestMapping("/checkEmpId")
    public Message checkId(@RequestParam("id")Integer id){
        //先判断用户名是否合法

        boolean flag1 = employeeService.checkId(id);
        if (flag1){
            return Message.fail();
        }else{
            return Message.success();
        }

    }

    /**
     * 员工登录
     *
     */
    @RequestMapping(value = "/loginEmp", method = RequestMethod.POST)
    @ResponseBody
    public void loginEmp(Employee employee, HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        //首先判断id是否存在
        Message message = new Message();
        HttpSession session = req.getSession();
        System.out.println("登陆请求");

        if (employeeService.checkId(employee.getEmpId())){
            Integer id = employee.getEmpId();
            String password = employeeService.getEmps(id).getPassword();
            session.setAttribute("LOGIN_USER", employeeService.getEmps(id).getUserName());
            session.setAttribute("Privilege", employeeService.getEmps(id).getPrivilege());
            System.out.println(session.getAttribute("LOGIN_USER"));

            if (employee.getPassword().equals(password)){
                System.out.println("正确");
                req.getRequestDispatcher("WEB-INF/views/manager.jsp").forward(req, resp);
                message.setCode(100);
            }else{
                System.out.println("错误");
                message.setCode(-100);
            }
        }
        //return message;
    }



    /**
     * 保存新员工信息
     *
     */
    @RequestMapping(value="/emp",method=RequestMethod.POST)
    @ResponseBody
    public Message saveEmp(@Valid Employee employee, BindingResult result){

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
            employeeService.saveEmp(employee);
            return Message.success();
        }

    }



    /**
     *  查询所有的员工信息
     */
    @RequestMapping("/emp")
    @ResponseBody
    public Message getEmp(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
                          Model model) {
        // 这不是一个分页查询
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 10);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Employee> emps = employeeService.getAll();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(emps, 5);
        return Message.success().add("pageInfo", page);

    }
}
