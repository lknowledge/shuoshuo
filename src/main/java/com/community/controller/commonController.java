package com.community.controller;

import com.community.bean.Cost;
import com.community.bean.Message;
import com.community.bean.Repairs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class commonController {
    @Autowired
    com.community.service.costService costService;

    @Autowired
    com.community.service.repairsService repairsService;

    @RequestMapping("/managerPage")
    @ResponseBody
    public void toPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/manager.jsp").forward(request, response);
    }

    @RequestMapping("/queryCost")
    @ResponseBody
    public void costPage(Integer houseId, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cost cost = costService.getCostByHouseId(houseId);
        System.out.println(cost);
        request.setAttribute("cost", cost);
        request.getRequestDispatcher("queryCost.jsp").forward(request, response);
    }

    @RequestMapping(value = "/submitRepair",method = RequestMethod.POST)
    @ResponseBody
    public Message submit(Repairs repair){
        Message message = null;
//        System.out.println(repair);
        repairsService.saveRepairs(repair);
        return message.success();
    }

    @RequestMapping("/exit")
    @ResponseBody
    public void exit(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        request.getSession().invalidate();
        request.getRequestDispatcher("/login_employee.jsp").forward(request, response);
    }

}
