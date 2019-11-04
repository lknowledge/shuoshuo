package com.community.service;

import com.community.bean.Employee;
import com.community.bean.EmployeeExample;
import com.community.dao.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class employeeService {

    @Autowired
    EmployeeMapper employeeMapper;

    /**
     *
     *
     */


    /**
     * 检验houseId是否可用
     */
    public boolean checkId(Integer id){
        EmployeeExample example = new EmployeeExample();
        EmployeeExample.Criteria criteria = example.createCriteria();
        criteria.andEmpIdEqualTo(id);
        long count = employeeMapper.countByExample(example);
        return count == 1;
    }


    //查询所有员工的信息
    public List<Employee> getAll(){
        return employeeMapper.selectByExample(null);
    }

    //查询员工
    public Employee getEmps(Integer empId){
        Employee emps = employeeMapper.selectByPrimaryKey(empId);
        return emps;
    }


    //保存员工信息
    public void saveEmp(Employee employee){
        employeeMapper.insertSelective(employee);
    }


    //更新员工信息
    public void updateEmp(Employee employee){
        employeeMapper.updateByPrimaryKeySelective(employee);
    }

    //删除
    public void deleteEmp(Integer empId){
        employeeMapper.deleteByPrimaryKey(empId);

    }

    /**
     * 批量删除员工信息
     */
    public void deleteBatch(List<Integer> empIds){
        EmployeeExample example = new EmployeeExample();
        EmployeeExample.Criteria criteria = example.createCriteria();
        //从xxx表中删除
        criteria.andEmpIdIn(empIds);
        employeeMapper.deleteByExample(example);
    }
}
