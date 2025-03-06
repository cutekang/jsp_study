<%@page import="java.util.List"%>
<%@page import="com.app.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 페이지</title>
</head>
<body>
	<table>
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
			<th>상품가격</th>
			<th>상품재고</th>
		</tr>
	<%
		List<ProductVO> products = (List<ProductVO>)request.getAttribute("products");
		for(ProductVO product : products){
	%>
		<tr>
			<td><%=product.getId() %></td>
			<td>
				<%=product.getProductName() %>
			</td>
			<td><%=product.getProductPrice() %></td>
			<td><%=product.getProductStock() %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>