package com.app.dto;

import java.util.Objects;

public class OrderDTO {
	
	private Long id;
	private Long memberId;
	private Long productId;
	private String memberEmail;
	private String memberName;
	private String productName;
	private int productPrice;
	private int productCount;
	private int totalPrice;
	
	public OrderDTO() {;}

	public OrderDTO(Long id, Long memberId, Long productId, String memberEmail, String memberName, String productName,
			int productPrice, int productCount, int totalPrice) {
		this.id = id;
		this.memberId = memberId;
		this.productId = productId;
		this.memberEmail = memberEmail;
		this.memberName = memberName;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productCount = productCount;
		this.totalPrice = totalPrice;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "OrderDTO [id=" + id + ", memberId=" + memberId + ", productId=" + productId + ", memberEmail="
				+ memberEmail + ", memberName=" + memberName + ", productName=" + productName + ", productPrice="
				+ productPrice + ", productCount=" + productCount + ", totalPrice=" + totalPrice + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderDTO other = (OrderDTO) obj;
		return Objects.equals(id, other.id);
	}
	
}
