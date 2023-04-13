<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>clientDetail</title>
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
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/client.css">

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
</head>
<body>
	<div class="content">
		<div class="animated fadeIn">
			<div class="row">
				<div class="col-lg">
					<div class="card">
						<div class="card-header">
							<strong class="card-title">거래처 상세</strong>
						</div>
						<div class="card-body">
							<div class="row form-group">
								<div class="col col-md-3">
									<label class=" form-control-label">거래처코드</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_cd }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">거래처명</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_nm }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="select" class=" form-control-label">거래처 구분
									</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_type }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">사업자번호</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_num }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">대표자명</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_boss }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="select" class=" form-control-label">업태</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_business }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">종목</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_prod }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">대표전화</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_tel }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">이메일</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_email }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">담당자</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_emp }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">담당자
										전화번호 </label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_phone }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">Fax</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_fax }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="text-input" class=" form-control-label">주소</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_postno }</p>
									<p class="form-control-static">${clientDTO.cli_addr }</p>
									<p class="form-control-static">${clientDTO.cli_addr2 }</p>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<label for="textarea-input" class=" form-control-label">비고</label>
								</div>
								<div class="col-12 col-md-9">
									<p class="form-control-static">${clientDTO.cli_note }</p>
								</div>
							</div>
							<c:if test="${ ! empty sessionScope.emp_cd }">
								<c:if test="${sessionScope.emp_position ne '사원' }">
									<div class="btn-div float-right">
										<input type="button" class="btn btn-primary" value="수정"
											onclick="location.href='${pageContext.request.contextPath}/client/update?cli_cd=${clientDTO.cli_cd}'">
										<input type="button" class="btn btn-secondary" value="삭제"
											onclick="if(confirm('거래처를 삭제하시겠습니까?')) {
    location.href='${pageContext.request.contextPath}/client/deleteOne?cli_cd=${clientDTO.cli_cd}';
    window.opener.location.reload();
    window.close();
    alert('삭제 완료되었습니다.');
  }" />
									</div>
								</c:if>
							</c:if>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- .content -->

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
