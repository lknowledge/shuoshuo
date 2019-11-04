package com.community.controller;

import com.community.bean.House;
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
import javax.validation.Valid;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class houseController {

    @Autowired
    com.community.service.houseService houseService;


    /**
     *
     * 模糊查询
     * @param house
     * @return
     */
    @RequestMapping("/LikeHouse")
    @ResponseBody
    public List<House> likeHouse(House house){
        return houseService.getHouses(house);
    }


    /**
     * 检查houseId是否可用
     *
     */
    @ResponseBody
    @RequestMapping("/checkHouseId")
    public Message checkId(@RequestParam("houseId")Integer houseId){
        //先判断用户名是否合法
        System.out.println(houseId);
        //Integer id = Integer.parseInt(Id);
        boolean flag = houseService.checkId(houseId);
        System.out.println(flag);
        if (flag){
            System.out.println("存在");
            return Message.fail();

        }else{
            System.out.println("不存在");
            return Message.success();
        }

    }

    /**
     * 删除数据
     * @param ids
     * @return
     */
    @RequestMapping(value = "/house/{ids}", method = RequestMethod.DELETE)
    @ResponseBody
    public Message deleteHouse(@PathVariable("ids")String ids){
        if (ids.contains("-")){
            List<Integer> del_list = new ArrayList<>();
            String[] str_ids = ids.split("-");
            for(String string : str_ids){
                del_list.add(Integer.parseInt(string));
            }
            houseService.deleteBatch(del_list);
        }
        else {
            Integer id = Integer.parseInt(ids);
            System.out.println(id);
            houseService.deleteHouse(id);
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
     * 更新数据
     * @param house
     * @return
     */
    @RequestMapping(value = "/house/{houseId}", method = RequestMethod.PUT)
    @ResponseBody
    public Message updateHouse(House house, HttpServletRequest request){
//        System.out.println("信息：" + holder);
////        System.out.println("将要显示的员工数据：" + "房屋编号"+ houseHolder.getHouseId() +"姓名："+ houseHolder.getName()
////                +"年龄："+ houseHolder.getAge() +"性别："+ houseHolder.getGender() +"家庭成员："+ houseHolder.getMembers()
////                +"电话："+ houseHolder.getTelephone() +"邮箱："+ houseHolder.getEmail());
        houseService.updateHouse(house);

        return Message.success().add("msg","修改成功");
    }

    /**
     * 查询
     * @param id
     * @return
     */

    @RequestMapping(value = "/house/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Message getHouse(@PathVariable("id")Integer id){
        House house = houseService.getHouse(id);
        return Message.success().add("house", house);
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
    @ResponseBody
    @RequestMapping("/housePage")
    public void toPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/views/list_house.jsp").forward(req, resp);
    }


    /**
     * 保存新信息
     *
     */
    @RequestMapping(value="/house",method=RequestMethod.POST)
    @ResponseBody
    public Message saveHouse(@Valid House house, BindingResult result){

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
            houseService.saveHouse(house);
            return Message.success();
        }


    }



    /**
     *  查询所有信息
     */
    @RequestMapping("/house")
    @ResponseBody
    public Message getHouse(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
                            Model model) {
        // 这不是一个分页查询
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 10);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<House> houses = houseService.getAll();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(houses, 5);
        return Message.success().add("pageInfo", page);

    }

}
