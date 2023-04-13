<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>clientInsert</title>
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

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.3.js"></script>

<script type="text/javascript">
	// 필수입력 제어	
	function essential() {

		if (document.fr.cli_nm.value == "") {
			alert("거래처명을 입력하세요.");
			document.fr.cli_nm.focus();
			return false;
		}

		if (document.fr.cli_num.value == "") {
			alert("사업자번호를 입력하세요.");
			document.fr.cli_num.focus();
			return false;
		}

		if (document.fr.cli_num.value.length != 10) {
			alert("사업자번호 10자리를 입력하세요.");
			document.fr.cli_num.focus();
			return false;
		}

		if (document.fr.cli_boss.value == "") {
			alert("대표자명을 입력하세요.");
			document.fr.cli_boss.focus();
			return false;
		}

		if (document.fr.cli_prod.value == "") {
			alert("종목을 입력하세요.");
			document.fr.cli_prod.focus();
			return false;
		}

		if (document.fr.cli_tel.value == "") {
			alert("대표전화를 입력하세요.");
			document.fr.cli_tel.focus();
			return false;
		}

		if (document.fr.cli_email.value == "") {
			alert("이메일을 입력하세요.");
			document.fr.cli_email.focus();
			return false;
		}

		if (document.fr.cli_emp.value == "") {
			alert("담당자를 입력하세요.");
			document.fr.cli_emp.focus();
			return false;
		}

		if (document.fr.cli_phone.value == "") {
			alert("담당자 전화번호를 입력하세요.");
			document.fr.cli_phone.focus();
			return false;
		}

		if (document.fr.cli_postno.value == "") {
			alert("주소를 입력하세요.");
			document.fr.cli_postno.focus();
			return false;
		}

		if ($('.spanResult').text() !== "사용 가능한 사업자번호입니다.") {
			alert("사업자번호 중복확인을 해주세요.");
			return false;
		}

		alert("추가 완료되었습니다.");

	}

	// 사업자번호 중복확인 
	$(function() {
		$('.dup')
				.click(
						function() {
							var cli_num = $('.cli_num').val();
							$
									.ajax({
										url : "${pageContext.request.contextPath}/client/clientDupCheck",
										type : "post",
										data : {
											"cli_num" : cli_num
										},
										success : function(data) {
											if (data == "success") {
												$('.spanResult').text(
														"사용 가능한 사업자번호입니다.")
														.css("color", "blue");
											} else {
												$('.spanResult').text(
														"이미 등록된 사업자번호입니다.")
														.css("color", "red");
											}
										}
									});
						});
	});
</script>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	// 카카오 주소 API
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('zipcode').value = data.zonecode;
						document.getElementById("addr").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("addr_dtl").focus();
					}
				}).open();
	}
</script>

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
								<h1>기준정보 관리</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">기준정보 관리</a></li>
									<li class="active">거래처</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="content">
			<div class="animated fadeIn">
				<div class="row">
					<div class="col-lg">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">거래처 등록</strong>
							</div>
							<div class="card-body">
								<form
									action="${pageContext.request.contextPath}/client/insertPro"
									method="post" name="fr" onsubmit="return essential()"
									class="form-horizontal">
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">거래처코드</label>
										</div>
										<div class="col-12 col-md-9">
											<p class="form-control-static">자동생성</p>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">거래처명<span
												style="color: red">*</span></label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="cli_nm"
												placeholder="예) 서울원단" class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="select" class=" form-control-label">거래처
												구분<span style="color: red">*</span>
											</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="cli_type" id="select" class="form-control">
												<option value="협력사">협력사</option>
												<option value="고객사">고객사</option>
												<option value="자사">자사</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">사업자번호<span
												style="color: red">*</span></label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" pattern="[0-9]+" name="cli_num"
												placeholder="10자리 숫자. 예) 5528700875"
												class="form-control cli_num" maxlength="10"> 
												<input type="button" class="btn btn-secondary dup" value="중복확인">
												<small class="spanResult"></small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">대표자명<span
												style="color: red">*</span></label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="cli_boss"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="select" class=" form-control-label">업태<span
												style="color: red">*</span></label>
										</div>
										<div class="col-12 col-md-9">
											<select name="cli_business" id="select" class="form-control">
												<option value="제조업">제조업</option>
												<option value="도매 및 소매업">도매 및 소매업</option>
												<option value="기타">기타</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">종목<span
												style="color: red">*</span></label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="cli_prod"
												placeholder="예) 원단" class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">대표전화<span
												style="color: red">*</span></label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="cli_tel"
												pattern="[0-9]+" placeholder="예) 0512368896"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">이메일<span
												style="color: red">*</span></label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="cli_email" name="cli_email"
												placeholder="예) mimitoy@gmail.com" class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">담당자<span
												style="color: red">*</span></label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="cli_emp"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">담당자
												전화번호<span style="color: red">*</span>
											</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="cli_phone"
												pattern="[0-9]+" placeholder="예) 01069873295"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Fax</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="text-input" name="cli_fax"
												pattern="[0-9]+" placeholder="예) 0511254493"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">주소<span
												style="color: red">*</span></label>
										</div>
										<div class="col-12 col-md-9">
											<input type="button" class="btn btn-secondary"
												onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
											<input type="text" id="zipcode" name="cli_postno"
												placeholder="우편번호" class="form-control"> <input
												type="text" id="addr" name="cli_addr" placeholder="주소"
												class="form-control"> <input type="text"
												id="addr_dtl" name="cli_addr2" placeholder="상세주소"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="textarea-input" class=" form-control-label">비고</label>
										</div>
										<div class="col-12 col-md-9">
											<textarea name="cli_note" id="textarea-input" rows="9"
												placeholder="기타 입력 사항" class="form-control"></textarea>
										</div>
									</div>
									<div class="btn-div float-right">
										<input type="submit" class="btn btn-primary" value="추가">
										<input type="button" class="btn btn-secondary" value="취소"
											onclick="location.href='${pageContext.request.contextPath}/client/clientInfo'">
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
