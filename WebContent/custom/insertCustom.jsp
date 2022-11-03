<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작성</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
.title {
	padding-top: 36px;
	padding-bottom: 20px;
}
</style>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<div class="content container" id="content">
		<h2 class="title">회원가입</h2>
		<form name="frm1" id="frm1" action="<%=request.getContextPath()%>/InsertCustomCtrl" method="post" onsubmit="return joinAlert(this)">
			<table class="table">
				<tbody>
					<tr>
						<th>아이디</th>
						<div class="form-row" >
							<input type="text" name="cusId" id="cusId" class="form-control" required>
							<button type="button" class="in_btn" onclick="idCheck()">중복확인</button>
							<input type="hidden" name="idck" value="no" />
						</div>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="cusPw" id="cusPw" class="form-control" required></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" name="cusPw2" id="cusPw2" class="form-control" required></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="cusName" id="cusName" class="form-control" required></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="tel" name="tel" id="tel" class="form-control" required></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="address" id="address" class="form-control" required></td>
						<td><input type="text" name="address" id="address" class="form-control" required></td>
					</tr>
				</tbody>
			</table>
			<div class="btn-group">
				<input type="submit" class="btn btn-danger" value="가입"> <input type="reset" class="btn btn-danger" value="취소">
			</div>
		</form>
	</div>
	<script>
		function joinAlert(f) {
			if (f.cusPw.value != f.cusPw2.value) {
				alert("비밀번호가 서로 다릅니다.");
				return false;
			}

			if (f.idck.value != "yes") {
				alert("아이디 중복체크 하세요");
				return false;
			}

		}

		function idCheck() {
			var win = window.open("idCheck.jsp", "idCheckWin",
					"width=400, heigh=300");
		}
	</script>
</body>
</html>