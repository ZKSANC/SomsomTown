package com.project.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.project.domain.CodeDTO;
import com.project.domain.EmployeeDTO;
import com.project.domain.OrderDTO;
import com.project.service.CodeService;
import com.project.service.EmployeeService;
import com.project.service.OrderService;
//import com.project.service.LineService;
//import com.project.service.ProductService;
//import com.project.domain.LineDTO;
//import com.project.domain.PageDTO;
//import com.project.domain.ProductDTO;

@RestController
public class AajaxController {

	@Inject
	private OrderService orderService;

	@Inject
	private CodeService codeService;

	@Inject
	private EmployeeService employeeService;

//	@Inject
//	private LineService lineService;
//	@Inject
//	private ProductService prodService;

	@RequestMapping(value = "/code/listjson", method = RequestMethod.GET)
	public ResponseEntity<List<CodeDTO>> listjson(HttpServletRequest request) {

		String code_grp = request.getParameter("code_grp");
		System.out.println("AjaxController:"+code_grp);
		List<CodeDTO> codeList3=codeService.getCodeList3(code_grp);

		//출력 결과 ResponseEntity 저장 => 되돌아감
		ResponseEntity<List<CodeDTO>> entity=
				new ResponseEntity<List<CodeDTO>>(codeList3,HttpStatus.OK);

		return entity;
	}

	@RequestMapping(value = "/employee/emailCk", method = RequestMethod.GET)
	public ResponseEntity<String> idCheck(HttpServletRequest request) {
		String result="";
		String emp_email=request.getParameter("emp_email");
		EmployeeDTO employeeDTO=employeeService.emailCk(emp_email);

		if(employeeDTO!=null) {
			result="emailUp";
		}else {
			result="emailOk";
		}

		ResponseEntity<String> entity=
				new ResponseEntity<String>(result,HttpStatus.OK);
		return entity;
	}

	@RequestMapping(value = "/employee/telCk", method = RequestMethod.GET)
	public ResponseEntity<String> telCk(HttpServletRequest request) {
		String result="";
		String emp_tel=request.getParameter("emp_tel");
		EmployeeDTO employeeDTO=employeeService.telCk(emp_tel);
		if(employeeDTO!=null) {
			result="telUp";
		}else {
			result="telOk";
		}
		ResponseEntity<String> entity=
				new ResponseEntity<String>(result,HttpStatus.OK);
		return entity;
	}

	@RequestMapping(value = "/order/orderInsertD", method = RequestMethod.GET)
	public ResponseEntity<OrderDTO> orderInsertD(HttpServletRequest request) {
		String ord_cd=request.getParameter("ord_cd");
		OrderDTO orderDTO=orderService.getOrderInsert(ord_cd);
		ResponseEntity<OrderDTO> entity=new ResponseEntity<OrderDTO>(orderDTO,HttpStatus.OK);
		
		return entity;
	}

//	@RequestMapping(value = "/ajax/prodModal", method = RequestMethod.POST)
//	public ResponseEntity<List<ProductDTO>> getProdModal(HttpServletRequest request) {
//		System.out.println("AjaxController getProdModal");
//		String searchProdCd=request.getParameter("modalProdCd");
//		String searchProdNm=request.getParameter("modalProdNm");
//		String searchProdMat=request.getParameter("modalProdMat");
//		int pageSize=5;
//
//		String pageNum=request.getParameter("pageNum");
//		if(pageNum==null) {
//			pageNum="1";
//		}
//		int currentPage=Integer.parseInt(pageNum);
//
//		PageDTO pageDTO=new PageDTO();
//		pageDTO.setPageSize(5);
//		pageDTO.setPageNum("1");
//		pageDTO.setCurrentPage(1);
//		pageDTO.setSearch2(searchProdCd);
//		pageDTO.setSearch3(searchProdNm);
//		pageDTO.setSearch4(searchProdMat);
//		// 디비 최근글 5개 가져오기
//		List<ProductDTO> prodList=prodService.getProductList(pageDTO);
//		System.out.println("상품리스트"+prodList.get(0).getProd_cd());
//
//		int count = prodService.getProductCount(pageDTO);
//		int pageBlock=10;
//		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
//		int endPage=startPage+pageBlock-1;
//		int pageCount=count/pageSize+(count%pageSize==0?0:1);
//		if(endPage > pageCount) {
//			endPage = pageCount;
//		}
//		pageDTO.setCount(count);
//		pageDTO.setPageBlock(pageBlock);
//		pageDTO.setStartPage(startPage);
//		pageDTO.setEndPage(endPage);
//		pageDTO.setPageCount(pageCount);
//
//		//출력 결과 ResponseEntity 저장 => 되돌아감
//		ResponseEntity<List<ProductDTO>> prodListE=
//				new ResponseEntity<List<ProductDTO>>(prodList, HttpStatus.OK);
//		System.out.println(prodList.get(0).getProd_cd());
//		return prodListE;
//	}

}




