<%@page import="com.app.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	PostVO post = (PostVO)request.getAttribute("product");
%>
<title><%=post.getPostTitle() %></title>
</head>
<body>
	<div>
		<h1><%=post.getPostTitle() %></h1>
	</div>
	<p><%=post.getPostContent() %></p>
	<form action="list.post" method="post">
		<button>게시글 목록으로 돌아가기</button>
	</form>
	<form action="write.post" method="post">
		<button>글 작성하기</button>
	</form>
	<form action="delete.post?id=<%=post.getId() %>" method="post">
		<button>글 삭제하기</button>
	</form>
	<form action="update.post?id=<%=post.getId() %>" method="post">
		<button>글 수정</button>
	</form>
</body>
</html>