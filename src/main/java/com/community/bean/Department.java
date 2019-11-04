package com.community.bean;

public class Department {
    private Integer empId;

    private Integer deptId;

    public Integer getEmpId() {
        return empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Department(Integer empId, Integer deptId) {
        this.empId = empId;
        this.deptId = deptId;
    }

    public Department() {
    }

    @Override
    public String toString() {
        return "Department{" +
                "empId=" + empId +
                ", deptId=" + deptId +
                '}';
    }
}