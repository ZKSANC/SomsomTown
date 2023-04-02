<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cs-skin-elastic.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/order.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<script>
	function searchPop(search) {
	window.open('${pageContext.request.contextPath }/order/searchPop?pop='+search,'searchPop','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no,width=900,height=510,top=90,left=200')
	}
</script>
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
								<h1>출하관리</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">Dashboard</a></li>
									<li><a href="#">Table</a></li>
									<li class="active">Basic table</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 	검색창 -->
		<div class="content">
			<div class="animated fadeIn">
				<div class="row">
					<div class="col-lg">
						<div class="card m-0">
							<div class="card-body card-block">
								<form action="${pageContext.request.contextPath }/ship/shipInfo" method="get" class="form-inline">
									<div class="search-div">
										<span class="search-cl">거래처</span><input type="text" id="cliS_cd" name="cli" readonly><input type="text" id="cliS_nm" readonly><button type="button" class="input-group-addon search-btn" style="cursor: pointer;" onclick="searchPop('cliS')"><i class="ti-search"></i></button>
									</div>
									<div class="search-div">
										<span class="search-cl2">수주일자</span><input type="date" id="ordS_date" name="ord_date"><input type="date" id="ordS_date_end" name="ord_date_end">
									</div>
									<div class="search-div">
										<span class="search-cl2">품목</span><input type="text" id="prodS_cd" name="prod" readonly><input type="text" id="prodS_nm" readonly><button type="button" class="input-group-addon search-btn" style="cursor: pointer;" onclick="searchPop('prodS')"><i class="ti-search"></i></button>
									</div>
									<div class="search-div2">
										<span class="search-cl">납품예정일</span><input type="date" id="ordS_d_date" name="ord_d_date"><input type="date" id="ordS_d_date_end" name="ord_d_date_end">
										<input type="submit" class="btn btn-secondary float-right" style="margin-top: 6px" value="조회">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 	검색창 -->
		
		<!-- .content -->
		<form action="${pageContext.request.contextPath }/ship/shipInfoPro" method="POST">
		<div class="content">
			<div style="width: 100%; height: 50px">
				<button type="reset" class="btn btn-secondary float-right" style="margin: 2px">취소</button>
				<button type="submit" class="btn btn-secondary float-right" style="margin: 2px">저장</button>
			</div>
			<div class="animated fadeIn">
				<div class="row">
					<div class="col-lg">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">출하품목</strong>
							</div>
							<div class="card-body">
								<table class="table table-striped table-bordered">
									<thead class="thead-dark">
										<tr>
											<th scope="col"></th>
											<th scope="col">수주번호</th>
											<th scope="col">수주일자</th>
											<th scope="col">납품예정일</th>
											<th scope="col">품번</th>
											<th scope="col">품명</th>
											<th scope="col">수주량</th>
											<th scope="col">출하예정량</th>
											<th scope="col">과부족</th>
											<th scope="col">재고량</th>
											<th scope="col">출하량</th>
											<th scope="col">출하일자</th>
											<th scope="col">수주업체</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="shipDTO" items="${shipInfo }" varStatus="status">
												<tr>
													<th>${status.count }</th>
													<th scope="row"><input type="hidden" name="ord_cd" value="${shipDTO.ord_cd }">${shipDTO.ord_cd }</th>
													<td><fmt:formatDate pattern="yyyy-MM-dd" value="${shipDTO.ord_date }"/></td>
													<td><fmt:formatDate pattern="yyyy-MM-dd" value="${shipDTO.ord_d_date }"/></td>
													<td>${shipDTO.prod_cd }</td>
													<td>${shipDTO.prod_nm }</td>
													<td>${shipDTO.ord_count }</td>
													<td><input type="hidden" name="ship_ifcount" value="${shipDTO.ord_count }">${shipDTO.ord_count }</td>
<!-- 													ord_count=ship_ifcount -->
													<td></td>
													<td></td>
<%-- 													<td><input type="hidden" name="ship_over" value="${shipDTO.ship_over }">${shipDTO.ship_over }</td> --%>
<%-- 													<td><input type="hidden" name="ship_inven" value="${shipDTO.ship_inven }">${shipDTO.ship_inven }</td> --%>
													<td><input type="text" id="ship_count" name="ship_count"></td>
													<td><input type="date" id="ship_date" name="ship_date"></td>
													<td>${shipDTO.cli_nm }</td>
												</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
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
