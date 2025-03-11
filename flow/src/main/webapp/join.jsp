<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<form action="join-ok.member" method="post">
		<div>
			<input name="memberEmail" placeholder="이메일">
		</div>
		<div>
			<input type="password" name="memberPassword" placeholder="비밀번호">
		</div>
		<div>
			<input name="memberName" placeholder="이름">
		</div>
		<button>회원가입</button>
	</form>
</body>
</html>