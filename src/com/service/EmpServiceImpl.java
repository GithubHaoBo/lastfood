package com.service;

import com.bean.Employee;
import com.dao.EmpMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmpServiceImpl implements EmpService {

    @Autowired
    EmpMapper empMapper;

    @Override
    public List getAllBySid(Integer pageIndex, PageModel pageModel, Integer sid) {
        //需要做分页
        PageHelper.startPage(pageIndex, pageModel.getPageSize());//第一个参数是第几页，第二个参数一页多少数据

        List<Employee> list = empMapper.getAllBySid(sid);

        PageInfo<Employee> pageInfo = new PageInfo<>(list);
        long total = pageInfo.getTotal();//数据库的表中的总数量
        int totalpage = pageInfo.getLastPage();//总共的页数

        pageModel.setRecordCount((int) total);//总记录数
        pageModel.setPageIndex(pageIndex);//当前页
        pageModel.setTotalSize(totalpage);//总页数
        return list;
    }

    @Override
    public List<Employee> queryList(String content, Integer sid) {
        content = "%" + content + "%";
        return empMapper.queryList(content, sid);
    }

    @Override
    public void addEmp(Employee employee, Integer sid) {
        empMapper.addEmp(employee, sid);
    }

    @Override
    public Employee getEmpByEid(Integer eid) {
        Employee employee = empMapper.getEmpByEid(eid);
        return employee;
    }

    @Override
    public void updEmpByEid(Employee employee) {
        empMapper.updEmpByEid(employee);
    }

    @Override
    public void delEmpByEid(Integer eid) {
        empMapper.delEmpByEid(eid);
    }
}
