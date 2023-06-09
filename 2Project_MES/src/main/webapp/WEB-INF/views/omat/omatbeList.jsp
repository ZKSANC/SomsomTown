<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>omatbeList</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cs-skin-elastic.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/material.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
<script type="text/javascript">

function openPopUp() {
	window.open("${pageContext.request.contextPath}/omat/omatpop", "omatpop", "width=1000, height=800");
}

function openNewWindow(url) {
	  var name = '_blank';
	  var specs = 'menubar=no,status=no,toolbar=no';
	  var newWindow = window.open(url, name, specs);
	  newWindow.focus();
	}

	function getReturnValue(returnValue) {
	  alert(returnValue);
	}

	$('#openNewWindowButton').click(function() {
	  openNewWindow('/popUpUrl');
	});
</script>

<script type="text/javascript">
function prodchk(event) {
	 var chkStyle = /\d/ ; 
	if(document.getElementById( 'prod_cd' ).value== ""){
		alert("품번 입력하세요");
		//부모페이지로 이벤트전파방지
		event.preventDefault();
		}
	
	else if(document.getElementById( 'omat_count' ).value== ""){
		alert("입고수량 입력하세요");
		document.fr.omat_count.focus();
		//부모페이지로 이벤트전파방지
		
		event.preventDefault();
		}
	else{
		if(!chkStyle.test((document.getElementById( 'omat_count' ).value))){
			alert("입고수량에는 숫자만 입력 가능합니다.");
			document.fr.omat_count.focus();
			//부모페이지로 이벤트전파방지
			event.preventDefault();
			}
			
	}
		
}
</script>
</head>

<body>
<c:if test="${empty sessionScope.emp_cd }">
		<c:redirect url="/employee/login"></c:redirect>
	</c:if>
	<!-- Left Panel1 -->
	<jsp:include page="../inc/leftPanel.jsp" />
	<!-- Left Panel1 -->

	<!-- Right Panel -->
	<div id="right-panel" class="right-panel">
		<!-- Header-->
		<jsp:include page="../inc/top.jsp" />
		<!-- Header-->

		<div class="breadcrumbs">
			<div class="breadcrumbs-inner">
				<div class="row m-0">
					<div class="col-sm-4">
						<div class="page-header float-left">
							<div class="page-title"></div>
						<h1>자재 관리</h1>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
						
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">자재 출고</a></li>
<!-- 									<li><a href="#">Table</a></li> -->
<!-- 									<li class="active">Basic table</li> -->
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




		<div class="content">

<div class="anomated fadeIn">
				<div class="row">
					<div class="col-lg">
							<div class="card m-0">
													
					<div class="card-body card-block">
					
							<form action="${pageContext.request.contextPath}/omat/omatsearch" method="get"
							class="form-inline">
							<div class="form-group col-6 mb-1">
							<label class="pr-1 form-control-label">출고번호</label>&nbsp;&nbsp;
							<input type="text" name="search" class="form-control" placeholder="Out-material code">
							</div>
							<div class="form-group col-6 mb-1">
							<label class="pr-1 form-control-label">품번</label>&nbsp;&nbsp;
							<input type="text" name="search2" class="form-control" placeholder="Prouduct code">
							</div>
							<div class="form-group col-6 mb-1">
							<label class="pr-1 form-control-label">출고창고</label>&nbsp;&nbsp;
							<input type="text" name="search3" class="form-control" placeholder="Out-material storage">
							
							</div>
							<div class="col p-0">
							<input type="submit" value="검색"  class="btn btn-primary float-right ml-3">
							</div>
							</form>
							</div>
													
							</div>
						</div>
					</div>
				</div>

			<div class="anomated fadeIn">
				<div class="row">
					<div class="col-lg">
						<div class="card">
							
							<div class="card-body">
								
									<table class="table table-striped">
										<thead class="thead-dark">	
										<tr>
												<th scope="col">#</th>
												<th scope="col">출고번호</th>
												<th scope="col">납기일자</th>
												<th scope="col">품번</th>
												<th scope="col">품명</th>
												<th scope="col">단위</th>
												<th scope="col">출고창고</th>
												<th scope="col">출고수량</th>
												<th scope="col">거래처번호</th>
												<th scope="col">거래처명</th>
												<th scope="col">비고</th>
												<c:if test="${ ! empty sessionScope.emp_cd }">
														<c:if test="${sessionScope.emp_position ne '사원' }">
												<th scope="col">작업</th>
												</c:if>
													</c:if>
											</tr>
										</thead>
										<tbody>
											<c:if test="${ ! empty sessionScope.emp_cd }">
						<c:if test="${sessionScope.emp_position ne '사원' }">
										<form method="post" name="fr" action="${pageContext.request.contextPath}/omat/omatinsertPro" id="insertpro" onsubmit="prodchk(event);">
										<tr class="data-row">
													
													<td><input type="button" value="조회" onclick="openPopUp()" class="btn btn-secondary"></td>
													<td><input type="text" name="omat_cd"
										class="omat_cd" style="width:100px;" placeholder="자동추가" readonly></td>
													<td><input type="text" name="omat_date"
										class="omat_date" style="width:100px;" disabled></td>
													<td><input
										type="text" name="prod_cd" class="prod_cd" id="prod_cd" style="width:90px;" readonly></td>
													<td><input
										type="text" name="prod_nm" class="prod_nm" id="prod_nm" style="width:90px;" disabled></td>
													<td><input
										type="text" name="prod_unit" class="prod_unit" id="prod_unit" style="width:90px;" disabled></td>
													<td><input type="text" name="omat_stg" class="omat_stg" id="omat_stg" style="width:90px;" readonly></td>
													<td><input type="text" name="omat_count" id="omat_count" 
										class="omat_count"style="width:90px;" ></td>
													<td><input
										type="text" name="cli_cd" class="cli_cd" id="cli_cd" style="width:90px;" disabled></td>
													<td><input
										type="text" name="cli_nm" class="cli_nm" id="cli_nm" style="width:90px;" disabled></td>
													<td><input
										type="text" name="omat_note" class="omat_note" ></td>
													<td><div class="btn-div float-right">
									<input type="submit" value="추가"  class="btn btn-secondary"> 
									<input type="button" class="btn btn-secondary" value="취소"
											onclick="location.href='${pageContext.request.contextPath}/omat/omatbeList'">
								</div>
									</td>
														</tr>
														</form>
														</c:if>
													</c:if>
											<c:forEach var="OmatDTO" items="${OmatbeList}">
												<tr>
<!-- 													<th><input type="checkbox" name="checkRow" -->
<%-- 														id="${OmatDTO.omat_num}" value="${OmatDTO.omat_num}" --%>
<!-- 														class="chkbox"></th> -->
													<td>${OmatDTO.omat_num}</td>
													<td>${OmatDTO.omat_cd}</td>
													<td><fmt:formatDate value="${OmatDTO.omat_date}" pattern="yyyy-MM-dd" type="date"/></td>
													<td>${OmatDTO.prod_cd}</td>
													<td>${OmatDTO.prod_nm}</td>
													<td>${OmatDTO.prod_unit}</td>
													<td>${OmatDTO.omat_stg}</td>
													<td>${OmatDTO.omat_count}</td>
													<td>${OmatDTO.cli_cd}</td>
													<td>${OmatDTO.cli_nm}</td>
													<td>${OmatDTO.omat_note}</td>
													
												<c:if test="${ ! empty sessionScope.emp_cd }">
														<c:if test="${sessionScope.emp_position ne '사원' }">
													<td>
														<input type="button" value="수정" class="btn btn-secondary"
														onclick="location.href='${pageContext.request.contextPath}/omat/omatupdate?omat_cd=${OmatDTO.omat_cd}&iomat_count=${OmatDTO.omat_count}'">
														<input type="button" value="삭제" class="btn btn-danger"
														onclick="location.href='${pageContext.request.contextPath}/omat/omatdelete?omat_cd=${OmatDTO.omat_cd}'">

													</td>
													</c:if>
													</c:if>
												</tr>

											</c:forEach>


										</tbody>


									</table>
									<div class="pageNum">
									<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
											<a href="${pageContext.request.contextPath}/omat/omatbeList?pageNum=${pageDTO.startPage - pageDTO.pageBlock}&search=${pageDTO.search}">[이전페이지]</a>
																	
										</c:if>

										<c:forEach var="i" begin="${pageDTO.startPage }"
											end="${pageDTO.endPage }" step="1">
											<a
												href="${pageContext.request.contextPath}/omat/omatbeList?pageNum=${i}&search=${pageDTO.search}&search2=${pageDTO.search2}&search3=${pageDTO.search3}">${i}</a>
										</c:forEach>

										<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
											<a
								href="${pageContext.request.contextPath}/omat/omatbeList?pageNum=${pageDTO.startPage + pageDTO.pageBlock}&search=${pageDTO.search}">>[다음페이지]</a>
										</c:if>
										</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- .content -->
		<div class="clearfix"></div>
		<!-- 푸터 넣는 곳 -->
		<jsp:include page="../inc/footer.jsp" />
		<!-- 푸터 넣는 곳 -->
	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->

	<!-- Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


</body>
</html>
