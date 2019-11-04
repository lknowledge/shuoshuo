package com.community.service;


import com.community.bean.Department;
import com.community.bean.DepartmentExample;
import com.community.dao.DepartmentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class departmentService {

    @Autowired
    DepartmentMapper departmentMapper;

    /**
     * 检验houseId是否可用
//     */
//    public boolean checkId(Integer id){
//        houseHolderExample example = new houseHolderExample();
//        houseHolderExample.Criteria criteria = example.createCriteria();
//        criteria.andHouseIdEqualTo(id);
//        long count = houseHolderMapper.countByExample(example);
//        return count == 0;
//    }


    //查询所有部门员工的信息
    public List<Department> getAll(){
        return departmentMapper.selectByExample(null);
    }

    //查询部门的下属人员
    public Department getDemps(Integer deptId){
        Department emps = departmentMapper.selectByPrimaryKey(deptId);
        return emps;
    }


    //保存部门员工信息
    public void saveDept(Department department){
        departmentMapper.insertSelective(department);
    }


    //更新员工部门信息
    public void updateDpt(Department department){
        departmentMapper.updateByPrimaryKeySelective(department);
    }

    //删除
    public void deleteDpt(Integer empId){
        departmentMapper.deleteByPrimaryKey(empId);

    }

    /**
     * 批量删除住户信息
     */
    public void deleteBatch(List<Integer> empIds){
        DepartmentExample example = new DepartmentExample();
        DepartmentExample.Criteria criteria = example.createCriteria();
        //从xxx表中删除
        criteria.andEmpIdIn(empIds);
        departmentMapper.deleteByExample(example);
    }
}
