<%@page import="java.util.List"%>
<%@page import="com.app.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록 페이지</title>
</head>
<body>
	<table>
		<tr>
			<th>선택</th>
			<th>상품번호</th>
			<th>상품명</th>
			<th>상품가격</th>
			<th>상품재고</th>
		</tr>
	</table>
	
	<form id="orderForm" method="post" action="write-ok.order">
		<table id="order">
			
		</table>
		<button type='button' style="display:none;">주문하기</button>
	</form>
</body>
<script>
	const table = document.querySelector('table')
	const products = ${products}
	console.log(products);
	
	products.forEach(({id, productName, productPrice, productStock}) => {
		table.innerHTML += (
			"<tr>" +
				"<td>" + "<input name='productId' type='radio' value='" + id + "'/>" + "</td>" +
				"<td>" + id + "</td>" +
				"<td>" + productName + "</td>" +
				"<td>" + productPrice + "</td>" +
				"<td>" + productStock + "</td>" +
			"</tr>"
		)
	})
	
	const orderForm = document.querySelector("#orderForm")
	const order = document.querySelector("#order");
	const radios = document.querySelectorAll("table input[type='radio']")
	const productId = document.querySelector("input[name='productId']")
	const button = document.querySelector("button")
	
	radios.forEach((input, i) => {
		input.addEventListener("click", () => {
			order.innerHTML = (
				"<tr>" +
					"<th>상품번호</th>" +
					"<th>상품명</th>" +
					"<th>상품가격</th>" +
					"<th>주문수량</th>" +
				"</tr>" +
				"<tr>" +
					"<input type='hidden' name='productId' value='" + products[i].id + "'>" +
					"<td>" + products[i].id + "</td>" +
					"<td>" + products[i].productName + "</td>" +
					"<td>" + products[i].productPrice + "</td>" +
					"<td>" + "<input type='text' name='productCount' placeholder='주문수량' value='1' required />" + "</td>" +
				"</tr>"
			)
			
			button.style.display = 'block'
		})
	})
	
	NodeList.prototype.filter = Array.prototype.filter;
	
	button.addEventListener("click", (e) => {
		e.preventDefault();
		const inputs = document.querySelectorAll("#order input[name='productCount']")
		console.log(inputs.filter((input) => input.value != 0));
		if(inputs.filter((input) => input.value != 0).length == 0){
			alert("주문수량이 0개입니다.");
			return;
		}
		
		orderForm.submit();
	})
	
</script>
</html>