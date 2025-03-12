<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
</head>
<body>
	<div>
		<c:out value="${sessionScope.memberEmail}" />
		
		<c:if test="${empty sessionScope.memberEmail}">
			<button onclick="location.href='login.member'">로그인</button>
		</c:if>
		
		<c:if test="${not empty sessionScope.memberEmail}">
			<button onclick="location.href='logout-ok.member'">로그아웃</button>
		</c:if>
	</div>
</body>
</html>