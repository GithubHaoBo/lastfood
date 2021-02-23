package com.dao;

import com.bean.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpMapper {

    public List<Employee> getAllBySid(Integer sid);

    public List<Employee> queryList(String content, Integer sid);

    public int addEmp(@Param("emp") Employee employee, Integer sid);

    public Employee getEmpByEid(Integer eid);

    public void updEmpByEid(Employee employee);

    public void delEmpByEid(Integer eid);

}
