<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정하기</title>
</head>
<body>
	<%
		PostVO post = (PostVO)request.getAttribute("product");
	%>
	<form action="update-ok.post" method="post">
		<input type="hidden" name="id" value="<%=post.getId() %>">
		<div>
			<input type="text" name="postTitle" placeholder="제목을 입력하세요" value="<%=post.getPostTitle() %>">
		</div>
		<input type="text" name="postContent" placeholder="내용을 입력하세요" value="<%=post.getPostContent() %>">
		<button>수정 완료</button>
	</form>
</body>
</html>