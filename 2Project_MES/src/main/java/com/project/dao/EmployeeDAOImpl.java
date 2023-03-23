package com.project.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.domain.EmployeeDTO;
import com.project.domain.PageDTO;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.project.mappers.employeeMapper";
	
	@Override
	public EmployeeDTO userCheck(EmployeeDTO employeeDTO) {
		System.out.println("EmployeeDAOImpl userCheck()");
		return sqlSession.selectOne(namespace+".userCheck", employeeDTO);
	}

	@Override
	public List<EmployeeDTO> getEmployeeList(PageDTO pageDTO) {
		System.out.println("EmployeeDAOImpl getEmployeeList()");
		
		pageDTO.setStartRow(pageDTO.getStartRow()-1);
		
		return sqlSession.selectList(namespace+".getEmployeeList", pageDTO);
	}

	@Override
	public int getEmployeeCount() {
		System.out.println("EmployeeDAOImpl getEmployeeCount()");
		
		return sqlSession.selectOne(namespace+".getEmployeeCount");
	}

	@Override
	public void insertEmployee(EmployeeDTO employeeDTO) {
		System.out.println("EmployeeDAOImpl insertEmployee()");
		
		sqlSession.insert(namespace+".insertEmployee", employeeDTO);
	}
	
}