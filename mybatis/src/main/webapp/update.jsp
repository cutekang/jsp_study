<%@page import="java.util.Optional"%>
<%@page import="com.app.dao.ProductDAO"%>
<%@page import="com.app.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정 페이지</title>
</head>
<body>
	<%
		ProductVO productVO = new ProductVO();
		ProductDAO productDAO = new ProductDAO();
		Long id = Long.parseLong(request.getParameter("id"));
		
		Optional<ProductVO> foundProduct = productDAO.select(id);
		
		if(foundProduct.isPresent()){
			ProductVO product = foundProduct.get();
	%>
		<form action="update" method="post">
			<label>
				<input type="hidden" name="id" value="<%=product.getId()%>"/>
			</label>
			<label>
				<input type="text" name="productName" placeholder="상품 명" value="<%=product.getProductName()%>"/>
			</label>
			<label>
				<input type="text" name="productPrice" placeholder="상품 가격" value="<%=product.getProductPrice()%>" />
			</label>
			<label>
				<input type="text" name="productStock" placeholder="상품 재고" value="<%=product.getProductStock()%>" />
			</label>
			<button>수정하기</button>
		</form>
	<%
		}
	%>
</body>
</html>