package com.service;

import com.bean.Employee;
import com.util.PageModel;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpService {
    public List getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid);

    public List<Employee> queryList(String content, Integer sid);

    public void addEmp(Employee employee, Integer sid);

    public Employee getEmpByEid(Integer eid);

    public void updEmpByEid(Employee employee);

    public void delEmpByEid(Integer eid);
}
