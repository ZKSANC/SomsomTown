<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>team3</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
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
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>
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
							<div class="page-title">
								<h1>기준정보</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">기준정보</a></li>
									<li class="active">품목정보</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 검색어 -->
		<%
		request.setCharacterEncoding("UTF-8");
		String search = request.getParameter("search");
		%>
		<div class="content">
			<div class="animated fadeIn">
				<div class="row">
					<div class="col-lg">
						<div class="card m-0">
							<div class="card-body card-block">
								<form
									action="${pageContext.request.contextPath}/product/productlist"
									class="form-inline" method="GET">
									<div class="form-group col-6 mb-1">
										<label class="pr-1 form-control-label">품목</label>&nbsp;&nbsp;<input
											type="text" name="search" class="form-control"
											placeholder="Code / Name">
									</div>
									<div class="col p-0">
										<button type="submit" class="btn btn-primary float-right ml-3"
											value="search">검색</button>
										<input type="reset"
											class="btn btn-secondary float-right reset" value="취소">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 검색어 끝 -->


		<div class="content">
			<div style="width: 100%; height: 50px">
				<button type="button" class="btn btn-primary float-right"
					style="margin: 2px"
					onclick="location.href='${pageContext.request.contextPath}/product/productwrite'">추가</button>
			</div>
			<div class="animated fadeIn">
				<div class="row">
					<div class="col-lg">
						<div class="card m-0">
							<%
							if (search == null) {
							%>
							<div class="card-header">
								<strong class="card-title">품목별 현황</strong><br>
							</div>
							<%
							} else {
							%>
							<div class="card-header">
								<strong class="card-title">품목별 검색결과</strong><br>
							</div>
							<%
							}
							%>
							<div class="card-body card-block">
								<table id="bootstrap-data-table"
									class="table table-striped table-bordered">
									<thead class="thead-dark">
										<tr>
											<th scope="col">품목코드</th>
											<th scope="col">거래처코드</th>
											<th scope="col">품명</th>
											<th scope="col">자재유형</th>
											<th scope="col">재고단위</th>
											<th scope="col">재질</th>
											<th scope="col">규격</th>
											<th scope="col">매입단가</th>
											<th scope="col">매출단가</th>
											<th scope="col">현재고</th>
											<th scope="col" style="width: 60px">비고</th>
											<th scope="col" style="width: 150px">버튼</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="productDTO" items="${productList}">
											<tr>
												<td><a href="javascript:void(0);"
													onclick="window.open('${pageContext.request.contextPath}/product/productcontext?prod_number=${productDTO.prod_number}', 'newwindow', 'width=400, height=400');">${productDTO.prod_cd}</a></td>
												<c:choose>
													<c:when test="${productDTO.cli_cd == null}">
														<td>거래처 없음</td>
													</c:when>
													<c:otherwise>
														<td>${productDTO.cli_cd}</td>
													</c:otherwise>
												</c:choose>
												<td>${productDTO.prod_nm}</td>
												<td>${productDTO.prod_mat}</td>
												<td>${productDTO.prod_unit}</td>
												<td>${productDTO.prod_text}</td>
												<td>${productDTO.prod_size}</td>
												<td>${productDTO.prod_inprice}</td>
												<td>${productDTO.prod_outprice}</td>
												<td>${productDTO.prod_count}</td>
												<td>${productDTO.prod_note}</td>
												<td>
													<div style="display: inline-block;">
														<form name="updateModal"
															action="${pageContext.request.contextPath}/product/productupdate"
															method="get" onsubmit="return confirm('수정하시겠습니까?')">
															<input type="hidden" name="prod_number"
																value="${productDTO.prod_number}">
															<button type="submit" class="btn btn-primary"
																data-toggle="modal" data-target="#exampleModal2">수정</button>
														</form>
													</div>
													<div style="display: inline-block;">
														<form name="deleteModal"
															action="${pageContext.request.contextPath}/product/productdeletePro"
															method="get" onsubmit="return confirm('삭제하시겠습니까?')">
															<input type="hidden" name="prod_number"
																value="${productDTO.prod_number}">
															<button type="submit" class="btn btn-secondary"
																data-toggle="modal" data-target="#deleteModal">삭제</button>
														</form>
													</div>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

								<!-- 페이징 처리 -->
								<!-- 								<div class="pageNum"> -->
								<%-- 								<c:if test="${pageDTO.startPage > pageDTO.pageBlock }"> --%>
								<%-- 								<a href="${pageContext.request.contextPath}/product/productlist?pageNum=${pageDTO.startPage - pageDTO.pageBlock}&search=${pageDTO.search}">Prev</a> --%>
								<%-- 								</c:if> --%>

								<%-- 								<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1"> --%>
								<%-- 								<a href="${pageContext.request.contextPath}/product/productlist?pageNum=${i}">${i}</a> --%>
								<%-- 								</c:forEach> --%>

								<%-- 								<c:if test="${pageDTO.endPage < pageDTO.pageCount }"> --%>
								<%-- 								<a href="${pageContext.request.contextPath}/product/productlist?pageNum=${pageDTO.startPage + pageDTO.pageBlock}&search=${pageDTO.search}">Next</a> --%>
								<%-- 								</c:if> --%>
								<!-- 								</div> -->

								<div id="pageNum2" style="text-align: center;">
									<c:if test="${pageDTO.startPage > pageDTO.pageBlock}">
										<a
											href="${pageContext.request.contextPath}/product/productlist?pageNum=${pageDTO.startPage - pageDTO.pageBlock}&search=${pageDTO.search}">Prev</a>
									</c:if>
									<c:forEach var="i" begin="${pageDTO.startPage }"
										end="${pageDTO.endPage }" step="1">
										<c:if test="${i eq pageDTO.currentPage}">
											<strong>${i}</strong>
										</c:if>
										<c:if test="${i ne pageDTO.currentPage}">
											<a
												href="${pageContext.request.contextPath}/product/productlist?pageNum=${i}&search=${pageDTO.search}">${i}</a>
										</c:if>
									</c:forEach>
									<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
										<a
											href="${pageContext.request.contextPath}/product/productlist?pageNum=${pageDTO.startPage + pageDTO.pageBlock}&search=${pageDTO.search}">Next</a>
									</c:if>
								</div>


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