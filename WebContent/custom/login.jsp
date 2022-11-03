<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="content container" id="content">
	<h2 class="title">로그인</h2>
	<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/MemberLoginCtrl" method="post">
	<table class="table">
		<tbody>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="cusId" id="cusId" class="form-control" required></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="password" name="cusPw" id="cusPw" class="form-control" required></td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group">
		<input type="submit" class="btn btn-danger" value="로그인">
		<input type="reset" class="btn btn-danger" value="취소">
	</div>
	</form>
</div>
</body>
</html>