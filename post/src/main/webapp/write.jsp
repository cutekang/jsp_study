<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성하기</title>
</head>
<body>
	<form action="write-ok.post" method="post">
		<div>
			<input type="text" name="postTitle" placeholder="제목을 입력하세요">
		</div>
		<input type="text" name="postContent" placeholder="내용을 입력하세요">
		<button>작성하기</button>
	</form>
</body>
</html>