<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>약관</title>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<div class="content">
		<section class="page">
			<div class="page_wrap">
				<h2 class="page_title">회원 약관</h2>
				<div class="agree_fr">
					<dd>
						제1조(개인정보의 처리목적)<br> 회사는 다음의 목적을 위해 이용자 개인정보를 처리합니다. <br> 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며,<br> 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 <br> 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.<br>
					</dd>
					1. 회원가입 및 관리 - 이용자 식별, 고객확인, 이용자 정보 관리, 각종 고지사항 전달 - 비대면 본인 인증을 통한 탈퇴 처리, 휴대폰 번호 및 출금계좌 초기화 등<br> 2. 재화 또는 서비스 제공 - 디지털 자산 거래 관계 확인 - 상속 및 양도 - 디지털 자산 거래 관계의 설정·유지·해지 등 서비스 관리 전반에 관한 사항 등<br> 3. 이벤트 정보 안내 - 각종 이벤트 및 광고성 정보 제공 - 신규 서비스 및 맞춤형 서비스 제공 등<br> 4. 고충 처리 - 민원인의 신원 및 민원사항 확인 - 사실조사를 위한 연락∙통지, 처리결과 통보 - 피해구제 및 착오전송 등 ....<br>
				</div>
				<div class="btn_fr">
					<input type="checkbox" id="ck_item1" name="ck_item"> <label for="ck_item1">약관의 동의</label><br> <br>
					<button type="button" id="in_btn1" class="in_btn">다음 단계</button>
				</div>
				<script>
					var in_btn1 = document.getElementById("in_btn1");
					var ck_item1 = document.getElementById("ck_item1");
					in_btn1.addEventListener("click", function() {
						if (ck_item1.checked) {
							location.href = "insertCustom.jsp";
						} else {
							alert("약관에 동의하지 않으셨습니다.");
							return;
						}
					});
				</script>
			</div>
		</section>
	</div>
</body>
</html>